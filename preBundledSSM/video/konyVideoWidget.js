(function() {

    if(kony.ui.Video)
		return;

    var util = {
        accessorDescriptor: function accessorDescriptor(field, fun) {
            var desc = {
                enumerable: true,
                configurable: true
            };
            desc[field] = fun;
            return desc;
        },
        defineGetter: function defineGetter(obj, prop, get) {
            if (Object.defineProperty) return Object.defineProperty(obj, prop, util.accessorDescriptor("get", get));
            throw new Error("browser does not support getters");
        },
        defineSetter: function defineSetter(obj, prop, set) {
            if (Object.defineProperty) return Object.defineProperty(obj, prop, util.accessorDescriptor("set", set));
            throw new Error("browser does not support setters");
        },
    }

    NSBundle = objc.import("NSBundle");
    NSURL = objc.import("NSURL");
    AVPlayer = objc.import("AVPlayer");
    AVPlayerItem = objc.import("AVPlayerItem");
    NSNotificationCenter = objc.import('NSNotificationCenter');
    AVPlayerViewController = objc.import('AVPlayerViewController');
    AVAsset = objc.import('AVAsset');
    AVURLAsset = objc.import('AVURLAsset');
    AVMutableComposition = objc.import('AVMutableComposition');
    AVMutableCompositionTrack = objc.import('AVMutableCompositionTrack');
    AVAssetTrack = objc.import('AVAssetTrack');
    UIViewController = objc.import('UIViewController');
    UIColor = objc.import("UIColor");
    UIApplication = objc.import('UIApplication');
    UITableView = objc.import('UITableView');
    UITableViewCell = objc.import('UITableViewCell');
 
    UIImage = objc.import('UIImage');
    UIImageView = objc.import('UIImageView');
    NSData = objc.import('NSData');    
    
    kony.ui.Video = function(bconfig) {
        this.name = "kony.ui.Video";
        this.controls = typeof bconfig.controls == "undefined" ? true : bconfig.controls;
        this.id = bconfig.id;

        var defineGetter = util.defineGetter;
        var defineSetter = util.defineSetter;

        var source = bconfig.source; 
        this.sourceURI = this.__getSourceURI(source); 

        defineGetter(this, "source", function() {
            return source;
        });
        defineSetter(this, "source", function(val) {
            source = val; 
            this.sourceURI = this.__getSourceURI(source); 
        });
        
        var enableCaptions = bconfig.enableCaptions;
        defineGetter(this, "enableCaptions", function() {
            return enableCaptions;
        });
        defineSetter(this, "enableCaptions", function(val) {
            enableCaptions = val;
            this.setEnableCaptions(val);
        });
 
        this.subTitleTracks = bconfig.tracks;
        
        defineGetter(this, "tracks", function() {
            return this.subTitleTracks;
        });
        defineSetter(this, "tracks", function(val) {
            subTitleTracks = val;
            this.setTracks(val);
        });


        var controls = typeof bconfig.controls == "undefined" ? true : bconfig.controls;
        defineGetter(this, "controls", function() {
            return controls;
        });
        defineSetter(this, "controls", function(val) {
            controls = typeof val == "undefined" ? true : val;

        });
        var poster = bconfig.poster;
        this.__setImageSource(poster);
        defineGetter(this, "poster", function() {
            return poster;
        });
        defineSetter(this, "poster", function(val) {
            this.__setImageSource(val);
            poster = val;
        });

        var volume = typeof bconfig.volume == "undefined" ? 1.0 : bconfig.volume;
        defineGetter(this, "volume", function() {
            return volume;
        });
        defineSetter(this, "volume", function(val) {
            volume = typeof val == "undefined" ? 1.0 : val;
            if(this.playerViewController){
                this.playerViewController.player.volume = volume;
            }
        });

        var videoGravity = typeof bconfig.videoGravity == "undefined" ? AVLayerVideoGravityResizeAspect : bconfig.videoGravity;
        defineGetter(this, "videoGravity", function() {
            return videoGravity;
        });
        defineSetter(this, "videoGravity", function(val) {
            videoGravity = typeof val == "undefined" ? AVLayerVideoGravityResizeAspect : val;
            if(this.playerViewController){
                switch(videoGravity){
                    case constants.VIDEO_GRAVITY_RESIZE:
                        this.playerViewController.videoGravity = AVLayerVideoGravityResize;
                        break;
                    case constants.VIDEO_GRAVITY_RESIZE_ASPECT:
                        this.playerViewController.videoGravity = AVLayerVideoGravityResizeAspect;
                        break;
                    case constants.VIDEO_GRAVITY_RESIZE_ASPECT_FILL:
                        this.playerViewController.videoGravity = AVLayerVideoGravityResizeAspectFill;
                        break;
                }
            }
        });
        
        //THis is closure variable for nativecontainer.
        var video = this; 
        
        //kony.print(video.id+" <- Video ID "+bconfig.onCompletion + "<- bconfig.onCompletion -- bconfig.onPrepared ->"+ bconfig.onPrepared+" -  bconfig.onError ->"+bconfig.onError);
        video.onPrepared = bconfig.onPrepared;
        video.onError = bconfig.onError;
        video.onCompletion = bconfig.onCompletion;
        
        video.isStarted = false;
        video.mixComposition = undefined;

        // A class for subTitleView and overriding the touchesEndded event since adding gestureHandler is returning as undefined.
        var subTitleControl = objc.newClass('SubTitleView','UIImageView',[],{
            touchesEndedWithEvent:function(touches,event){
                video.__showSubtitleController();
            }

        });
        video.subTitleControl = subTitleControl;

        // ViewController which consists tableView to show the list of subtitle tracks
        var subTitleViewController = objc.newClass('SubTitleViewController','UIViewController',['UITableViewDelegate', 'UITableViewDataSource'],{
            viewDidLoad: function() {
                this.view.backgroundColor = UIColor.alloc().initWithRedGreenBlueAlpha(255, 255, 255, 1);
                var tableView = UITableView.alloc().jsinit();
                tableView.registerClassForCellReuseIdentifier(UITableViewCell,"cell")

                tableView.delegate = this;
                tableView.dataSource = this;
                tableView.frame = {
                    "x": 0.0,
                    "y": 0.0,
                    "width":  kony.os.deviceInfo().deviceWidth,
                    "height": video.subTitleTracks.length ? (video.subTitleTracks.length * 50) : 0
                };
                this.view.addSubview(tableView);
            },
             numberOfSectionsInTableView : function(tableView) {
                return 1;
             },
             
             tableViewNumberOfRowsInSection : function(tableView,section) {
                return video.subTitleTracks.length ? video.subTitleTracks.length : 0;
             },
             
             tableViewCellForRowAtIndexPath : function(tableView,indexPath){
                var cell = tableView.dequeueReusableCellWithIdentifier("cell");
                if (!cell) {
                    cell = UITableViewCell.alloc().initWithStyleReuseIdentifier(UITableViewCellStyleDefault,"cell");
                }
                cell.textLabel.text = video.subTitleTracks[indexPath.row].displayName;
                return cell;
             },
             tableViewDidSelectRowAtIndexPath : function(tableView,indexPath){
                video.setSubtitlesTrack(video.subTitleTracks[indexPath.row]);
                UIApplication.sharedApplication().keyWindow.rootViewController.dismissViewControllerAnimatedCompletion(true, function() {
                    kony.print("View Controller Dismissed")
                });
             },
             tableViewHeightForRowAtIndexPath : function(tableView,indexPath){
                 return 50;
             }             
        });
        video.subTitleViewController = subTitleViewController;

        var keyValueObserver = objc.newClass('keyValueObserver'+video.id, 'NSObject', [], {
            observeValueForKeyPathOfObjectChangeContext: function(keyPath,ofObject,change,context1) {
                if(!video){
                      return;
                 }
                //kony.print(" Key observer for VIDEO :  " +  video.id );
                //kony.print("Observer called.. "+keyPath+" "+ofObject+" "+change+" "+context1);
                //kony.print(keyPath);
             /*   for (key in change) {
                    //kony.print(key + ' : ' + change[key]);
                } */
                
                if(keyPath == "status" && change["new"] == 2){
                    //kony.print("invoke onERROR ");
                    if(video.onError){
                        video.onError.call(video,video);
                        //kony.print("Invoking video onError method" );
                    } 
                } 
                if(keyPath == "status" && change["new"] == 1){
                    if(video.onPrepared){
                        video.onPrepared.call(video,video);
                        //kony.print("Invoking video onprepared method" );
                    }   
					if(video.uiImageView){
						video.uiImageView.removeFromSuperview(); 
					}
                } 
            }
        }); 

        var videoEndNotification = objc.newClass('videoEndNotification'+video.id, 'NSObject', [], {
             onPlayerItemDidReachEnd: function() { 
                 if(!video){
                      return;
                 }
                 //kony.print(" Video onCompletion end :  " +  video.id );
                 var playerViewController = video.playerViewController;
                 if (playerViewController.player) {
                     playerViewController.player.seekToTime(kCMTimeZero);
                     //kony.print("On reaching end called...+ RESETTING TO ZERO");
                 } 
                 if(video.onCompletion){
                    video.onCompletion.call(video,video);
                      //kony.print("CALLED  video.onCompletion... ON VIDEO"+video.id);
                 }
                 //kony.print("On reaching end called..."); 
            }
         });
        bconfig["onLayoutSubviews"] = function(uiviewobj) { 
            //kony.print("onLayoutSubviews callback..."+JSON.stringify(uiviewobj.bounds));   
			var width  = uiviewobj.bounds.width ;
			var height = uiviewobj.bounds.height;
			if(width > 0 && height > 0){
				var frameVal = {"x":0,"y":0,"width":width,"height":height};
                var subtitleView = video.subTitleView;
                if(subtitleView){
                /**
                 * 20 - width & height of the subtitle
                 * 30 - height of the native control(AVTransportControlView where controls like player progress, pause,play and forward buttons present)
                 * 10 - right/bottom margin for subTitleIcon
                 */
                    subtitleView.frame = {
                        "x": width - 20 - 10,
                        "y": height - 30 - 20 - 10,
                        "width": 20,
                        "height": 20
                    };
                }
                if(video.playerViewController){
					video.playerViewController.view.frame = frameVal;
				}
				if(video.uiImageView){
					video.uiImageView.frame = frameVal;
				}
				
			}
        }
        
        
         bconfig["onCreated"] = function(uiviewobj) {

//             kony.print(" Video onCreated for :  " +  uiviewobj);
            /* Using MutableComposition for supporting subtitles. Inorder to achieve this, adding videoTrack, audioTrack & subTitleTrack(if any) to composition and
            creating player from this MutableComposition.
            */
            var playerItem;
            if(video.sourceURI){
                var videoAsset = AVURLAsset.assetWithURL(video.sourceURI);
                if(videoAsset){
                    var mixComposition = AVMutableComposition.alloc().jsinit();
                   
                    var videoTrack = mixComposition.addMutableTrackWithMediaTypePreferredTrackID(AVMediaTypeVideo,kCMPersistentTrackID_Invalid);
                    var tracksWithVideoType = videoAsset.tracksWithMediaType(AVMediaTypeVideo);
                    var error = {}; // a place holder object for storing the error info.
                    var duration = {
                        "start" : kCMTimeZero,
                        "duration" : videoAsset.duration
                    };
                    if(videoTrack && tracksWithVideoType.length)
                        videoTrack.insertTimeRangeOfTrackAtTimeError(duration,tracksWithVideoType[0],kCMTimeZero,error);
                    
                    var audioTrack = mixComposition.addMutableTrackWithMediaTypePreferredTrackID(AVMediaTypeAudio,kCMPersistentTrackID_Invalid);
                    var tracksWithAudioType = videoAsset.tracksWithMediaType(AVMediaTypeAudio);
                    var error_audio = {};
                    if(audioTrack && tracksWithAudioType.length)
                        audioTrack.insertTimeRangeOfTrackAtTimeError(duration,tracksWithAudioType[0],kCMTimeZero,error_audio);
         
                    if(video.subTitleTracks){
                        var defaultTrack = video.__getDefaultTrack(video.subTitleTracks);
                         if(defaultTrack && defaultTrack.src){
                            var trackName = defaultTrack.src
                            var directoryPath = kony.io.FileSystem.getRawDirectoryPath();
                            var vttPath = kony.io.FileSystem.getRawDirectoryPath()+"/"+trackName;
                            var vttURLPath = NSURL.fileURLWithPath(vttPath);
                            var subtitleAsset = AVURLAsset.assetWithURL(vttURLPath);
                            
                            var subTitleTrack = mixComposition.addMutableTrackWithMediaTypePreferredTrackID(AVMediaTypeText,kCMPersistentTrackID_Invalid)
                            subTitleTrack.enabled = video.enableCaptions;
                            var tracksWithSubTitle = subtitleAsset.tracksWithMediaType(AVMediaTypeText);
         
                            var error_subTitle = {};
                            if(subTitleTrack && tracksWithSubTitle.length)
                                subTitleTrack.insertTimeRangeOfTrackAtTimeError(duration,tracksWithSubTitle[0],kCMTimeZero,error_subTitle);
                         }
                    }
                    playerItem = AVPlayerItem.playerItemWithAsset(mixComposition);
                    video.mixComposition = mixComposition;
                    video.videoAsset =  videoAsset;
                }
            }
            var player;
            var playerViewController = AVPlayerViewController.alloc().jsinit();
            if(playerItem){
                player = AVPlayer.playerWithPlayerItem(playerItem);
                video.playerItem = playerItem;
                if(player){
		          video.player = player; 
                  playerViewController.player = player;
                }
            }
            video.playerViewController = playerViewController;
            video._updateControls();   
             
            var videoEndNotificationObj = videoEndNotification.alloc().jsinit(); 
            var observerObj = keyValueObserver.jsnew(); 
         	video.videoEndNotificationObj = videoEndNotificationObj; 
            video.observerObj = observerObj;          
            video._addListeners();  
             
            
            
            uiviewobj.addSubview(playerViewController.view);
            

            var subTitleIcon = kony.io.FileSystem.getRawDirectoryPath()+"/caption_subtitles.png";
            var subTitleIconImage = UIImage.imageWithContentsOfFile(subTitleIcon);                 
            var subTitleView;
            if(subTitleIconImage){
                subTitleView = subTitleControl.alloc().initWithImage(subTitleIconImage); 
                if(subTitleView){
                    subTitleView.userInteractionEnabled = true;
                    uiviewobj.addSubview(subTitleView);
                    video.subTitleView = subTitleView;
                }
            }

            if(!(video.subTitleTracks && video.subTitleTracks.length)){
                video.__hideSubTitleView(true);
            }
            else{
                video.__hideSubTitleView(false);
            }
            

            //kony.print("Using AVPLayerViewController...  Player Created" );
            if(video.poster && video.posterId){
                var posterId = video.posterId;
                var uiImage = "";
                if (posterId.indexOf("http") === 0) {   
                    var nsUrl = NSURL.URLWithString(posterId);
                    var nsimgdata = NSData.alloc().initWithContentsOfURL(nsUrl);
                    uiImage = UIImage.imageWithData(nsimgdata);
			     } else
                    uiImage = UIImage.imageWithContentsOfFile(posterId);                 
                
                var uiImageView = UIImageView.alloc().initWithImage(uiImage); 
                video.uiImageView = uiImageView;  
                uiviewobj.addSubview(uiImageView);
                //kony.print("video.poster :- " + video.poster + "   :- " +  posterId);
            } 
         }

        bconfig["onCleanup"] = function(uiviewobj) {
            //kony.print('Container view cleaned for : ' + video.id);
            kony.runOnMainThread(runCleanUp,[]);
             function runCleanUp(){
                 video._removeListeners();
                 video.stop();
                 if(video.playerViewController){
                     var playerView = video.playerViewController;
                     playerView.view.removeFromSuperview();
                     video.playerViewController = undefined;
                     video.player = undefined;
                     video.playerItem = undefined;
                     video.imageView = undefined;
                     //kony.print('removed Player from view');
                 }
             }
        };
 
        
        var nativeContainer = new kony.ui.NativeContainer(bconfig);
        this.nativeContainer = nativeContainer;
        this.nativeContainer.type = "kony.ui.Video";
        this.prepareNCProperties(nativeContainer);
    }
    
    /*
        Video Types:
                1 -- URL
                2 -- Local Resource.
                3 -- Bytes.
    */
    kony.ui.Video.prototype.__getSourceURI = function(source){
		if(!source) return;// Return if source is not defined
		var videoFileURL, extension;  
		try{ 
			if (source.mp4) {
				source = source.mp4;
                if(source.indexOf(".") != -1 && source.length)
                    extension = source.slice(source.indexOf(".")+1,source.length);
                else
                    extension = "mp4";
			}else if(source.mov){
				source = source.mov;
                if(source.indexOf(".") != -1 && source.length)
                    extension = source.slice(source.indexOf(".")+1,source.length);
                else
                    extension = "mov";
			}else if(source.rawBytes){
				source = source.rawBytes; 
				extension = "rawBytes";
			}else{
				return videoFileURL;
			}
			if (extension != "rawBytes" && source.indexOf("http") === 0) { 
				videoFileURL = NSURL.URLWithString(source); 
				//kony.print("getSourceURL if"+JSON.stringify(videoFileURL));
			}else{
				if(extension === "rawBytes"){
					source = source.getResourcePath();
				}else{
					var index = source.indexOf('.'); //index == -1 if the char is not found
					if(index > 1) 
						source = source.substring(0, index);//To remove .(dot) and extenstion when specified in source e.g. movie.mp4 -> movie 
                        //source = NSBundle.mainBundle().pathForResourceOfType("/"+source, extension);
                        rawpath = kony.io.FileSystem.getRawDirectoryPath();
                        source = rawpath+"/"+source+"."+extension;
				}
				//kony.print("Given Video path: " + source); 
				videoFileURL = NSURL.fileURLWithPath(source); 
				//kony.print("getSourceURL else"+JSON.stringify(videoFileURL));
			}         	 
			//kony.print("Video Path is :  " + videoFileURL);
		}catch(e){
			kony.print(" Error while preparing URI :  " + source + " : " + e.message);
		}
		return videoFileURL;
    }

    kony.ui.Video.prototype.__setImageSource = function(source){
        if(source){
            if (source.indexOf("http") === 0) {  
                this.posterId = source; 
			} else {
                var index = source.indexOf('.'); //index == -1 if the char is not found
                if(index < 1)
                    this.posterSrc = source; 
                else
                    this.posterSrc = source.substring(0, index);
                var applicationDirectoryPath = kony.io.FileSystem.getApplicationDirectoryPath();
                var resourceBundle = NSBundle.bundleWithPath(applicationDirectoryPath);                 
                this.posterId = resourceBundle.pathForResourceOfType("/"+this.posterSrc, "png");
            }
			//kony.print("Poster image location"+this.posterId);
        }
    }
    /* 
        __hideSubTitleView method used for hiding subTitleIcon on PlayerViewController.
    */
    kony.ui.Video.prototype.__hideSubTitleView = function(isHidden){
        if(this.subTitleView)
            this.subTitleView.hidden = isHidden;
    }
    /* 
        __showSubtitleController method shows the SubTitleViewController when clicked on subTitleIcon.
    */
    kony.ui.Video.prototype.__showSubtitleController = function(){
        var subTitleController = this.subTitleViewController.jsnew();
        UIApplication.sharedApplication().keyWindow.rootViewController.presentViewControllerAnimatedCompletion(subTitleController, true, function() {
            kony.print("View Controller Shown")
        });
    }
    
    /* 
        __getDefaultTrack method returns the track which has a default key with value as true.
        e.g
        [
            {"src": "sintel-en.vtt","displayName": "English","srclang": "en", "default": true,},
            {"src": "sintel-de.vtt","displayName": "Dutch","srclang": "de"},
            {"src": "sintel-es.vtt","displayName": "Spanish", "srclang": "es"}
        ];
    */
    kony.ui.Video.prototype.__getDefaultTrack = function(tracks){
        if(tracks){
            for (var i = 0; i < tracks.length; ++i) {
                var track = tracks[i];
                if(track["default"]){
                       return track;
                }
            }
        }
       return null;
    }
    /* 
        setSubtitlesTrack method sets the subTitletrack to the player.
    */
    kony.ui.Video.prototype.setSubtitlesTrack = function(track){
        if(track && track.src){
            var subTitleTrack = track.src;
            var vttPath = kony.io.FileSystem.getRawDirectoryPath()+"/"+subTitleTrack;
            var vttURLPath = NSURL.fileURLWithPath(vttPath);
            var subTitleAsset = AVURLAsset.assetWithURL(vttURLPath);
            
            if(!(subTitleAsset && this.mixComposition))
                return;

            if(this.mixComposition.tracks.length > 2){
                var track = this.mixComposition.tracks[2];
                if(track)
                    this.mixComposition.removeTrack(track)
            }


            var subTitleTrack = this.mixComposition.addMutableTrackWithMediaTypePreferredTrackID(AVMediaTypeText,kCMPersistentTrackID_Invalid)
            subTitleTrack.enabled = this.enableCaptions;
            var tracksWithSubTitle = subTitleAsset.tracksWithMediaType(AVMediaTypeText);
            var error_subTitle = {};

            var duration = {
                "start" : kCMTimeZero,
                "duration" : this.videoAsset.duration
            };
            
            if(subTitleTrack && tracksWithSubTitle.length)
                subTitleTrack.insertTimeRangeOfTrackAtTimeError(duration,tracksWithSubTitle[0],kCMTimeZero,error_subTitle);

            var currentPosition = this.playerViewController.player.currentTime();
         
            var playerItem = AVPlayerItem.playerItemWithAsset(this.mixComposition);
            

            this.playerViewController.player.replaceCurrentItemWithPlayerItem(playerItem)
            this.playerViewController.player.seekToTime(currentPosition);
        }
    }

    kony.ui.Video.prototype.setTracks = function(tracks){
        if(tracks){
            this.subTitleTracks = tracks;
            this.__hideSubTitleView(false);
            var defaultTrack = this.__getDefaultTrack(tracks);
            if(defaultTrack)
                this.setSubtitlesTrack(defaultTrack);
        }
    }

    /* 
        setEnableCaptions used for enabling/disabling the subtitles on the video player.
    */
    kony.ui.Video.prototype.setEnableCaptions = function(enabled){
        var mixComposition = this.mixComposition;
        
        var track;
        if(mixComposition && mixComposition.tracks.length > 2){
            track = mixComposition.tracks[2];            
            track.enabled = enabled;
        }
        else{
            return;
        }
        
        
        var playerViewController = this.playerViewController;

        if(playerViewController && playerViewController.player){
            var currentPosition = playerViewController.player.currentTime();
            var newPlayerItem = AVPlayerItem.playerItemWithAsset(mixComposition);

            playerViewController.player.replaceCurrentItemWithPlayerItem(newPlayerItem)
            playerViewController.player.seekToTime(currentPosition);
            this.player = playerViewController.player;
            this.playerViewController = playerViewController;
            this.playerItem = newPlayerItem;
            this.mixComposition = mixComposition;

        }         
    }

    
    kony.ui.Video.prototype._addListeners = function(){ 
        if(!this.playerItem){
            //kony.print("PlayerItem not defined to add listeners ");
            return;
        }
        if( this.observerObj){
            this.playerItem.konyAddObserverForKeyPathOptions(this.observerObj, 'status', NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld);
            //kony.print("Added status keyValueObserver");
        } 
        if(this.videoEndNotificationObj) { 
            NSNotificationCenter.defaultCenter().addObserverSelectorNameObject(this.videoEndNotificationObj, "onPlayerItemDidReachEnd", AVPlayerItemDidPlayToEndTimeNotification, this.playerItem);
            //kony.print("PlayerItem Completion listener added" );  
        } 
    }
    
    kony.ui.Video.prototype._removeListeners = function(){ 
        if(!this.playerItem){ 
            //kony.print("PlayerItem not defined to remove listeners ");
            return;
        }
        if(this.observerObj){
            this.playerItem.konyRemoveObserverForKeyPath(this.observerObj , 'status');
            //kony.print('removed status keyValueObserver');
        }  
        if(this.videoEndNotificationObj) {
            NSNotificationCenter.defaultCenter().removeObserver(this.videoEndNotificationObj, AVPlayerItemDidPlayToEndTimeNotification, this.playerItem);
            //kony.print('removed Completion Listener');
        }  
    }
    
    kony.ui.Video.prototype._updateDataSource = function (){
        var playerViewController = this.playerViewController; 
        if(playerViewController){
            try{  
                // kony.print("Video Source URI:  " + this.sourceURI);
                //playerViewController.player.pause();
                this.stop();
                this._removeListeners();
                this.playerItem = undefined;
                this.player = undefined;
                this.mixComposition = undefined;
                if(this.sourceURI){
                    var videoAsset = AVURLAsset.assetWithURL(this.sourceURI);
                    if(videoAsset){
                        var mixComposition = AVMutableComposition.alloc().jsinit();
                       
                        var videoTrack = mixComposition.addMutableTrackWithMediaTypePreferredTrackID(AVMediaTypeVideo,kCMPersistentTrackID_Invalid)
                        var tracksWithVideoType = videoAsset.tracksWithMediaType(AVMediaTypeVideo)
                        var error = {}; // a place holder object for storing the error info.
                        var duration = {
                            "start" : kCMTimeZero,
                            "duration" : videoAsset.duration
                        };
                        if(videoTrack && tracksWithVideoType.length)
                            videoTrack.insertTimeRangeOfTrackAtTimeError(duration,tracksWithVideoType[0],kCMTimeZero,error);
                        
                        var audioTrack = mixComposition.addMutableTrackWithMediaTypePreferredTrackID(AVMediaTypeAudio,kCMPersistentTrackID_Invalid)
                        var track_audio = videoAsset.tracksWithMediaType(AVMediaTypeAudio)
                        var error_audio = {};
                        if(audioTrack && track_audio.length)
                            audioTrack.insertTimeRangeOfTrackAtTimeError(duration,track_audio[0],kCMTimeZero,error_audio);
             

                        var playerItem = AVPlayerItem.playerItemWithAsset(mixComposition);
                        this.videoAsset =  videoAsset;

                        var newPlayerItem = AVPlayerItem.playerItemWithAsset(mixComposition);
                        var newPlayer = AVPlayer.playerWithPlayerItem(newPlayerItem);
                        playerViewController.player = newPlayer;
                        this.player = newPlayer;
                        this.playerViewController = playerViewController;
                        this.playerItem = newPlayerItem;
                        this.mixComposition = mixComposition;
                        this._addListeners();
                    }
                }
                //kony.print("Replaced with new Source along with playerItem");
                //playerViewController.player.replaceCurrentItemWithPlayerItem(playerItem);
                //this.playerViewController.setVideoURI(this.sourceURI);
            }
            catch(e){
                kony.print(" Error while loading update data Source:  " + this.sourceURI  + " : " + e.message);
            }
        }
    }
    kony.ui.Video.prototype._updateControls = function (){
        var playerViewController = this.playerViewController; 
        if (playerViewController) {
            if(this.controls){
                //kony.print(" Video with controls.  " +  this.id ); 
                playerViewController.showsPlaybackControls = true;
            }else{
                playerViewController.showsPlaybackControls = false;
            }
        }
    }
    kony.ui.Video.prototype.allowPip = function(isPip) {
    	 var playerViewController = this.playerViewController; 
        if (playerViewController) {
        	playerViewController.allowsPictureInPicturePlayback = isPip;
        }
	};
    kony.ui.Video.prototype.setVisibility = function(visible) {
        alert(" Video with setVisibility.  " +  visible);
        this.nativeContainer.setVisibility(visible);
    };

    kony.ui.Video.prototype.setSource = function(source) {
        this.source = source;
        var currentInstance = this;
        this.subTitleTracks = [];


        //kony.print("New given Video Source is:  " + JSON.stringify(source));
       // this.prepared = false;
        //this.mediaPlayer = undefined;
        kony.runOnMainThread(updateSource,[]);
         function updateSource(){
            currentInstance.__hideSubTitleView(true);
            currentInstance._updateDataSource();
         }
    };
 
    kony.ui.Video.prototype.play = function() {
        //kony.print('PLAY METHOD - Video Start ' );
        var playerItem = this.playerItem;
        var playerViewController = this.playerViewController;
        //kony.print("  status :: PLAY method - "+playerItem.status );
        ////kony.print("  readyForDisplay :: PLAY method - "+(playerViewController && playerViewController.readyForDisplay));
        if (playerItem && playerItem.status == 1) {
            if(this.isPlaying()){
                //kony.print("Video already playing");
            }else{
                if(playerViewController.player){
                    playerViewController.player.play();
                    this.isStarted = true;
                }
            } 
        }else{
            //kony.print("Video is not yet prepared.");
        }
    };

    kony.ui.Video.prototype.pause = function() {
        //kony.print('Video pause '); 
        var playerViewController = this.playerViewController; 
        if (playerViewController && playerViewController.player && this.isPlaying()) {
       		 playerViewController.player.pause(); 
        }else{
            //kony.print("Video cannot be paused");
        }
       
    };
    kony.ui.Video.prototype.resume = function() {
        //kony.print('Video resume ');
        var playerViewController = this.playerViewController;
        if(playerViewController && playerViewController.player && !this.isPlaying() && this.isStarted) {
            playerViewController.player.play();
        }else{
            //kony.print("Video cannot resume");
        }
    };
    
    kony.ui.Video.prototype.stop = function() { 
        //kony.print('Video stop invoked');  
        var playerViewController = this.playerViewController;
        if (playerViewController && playerViewController.player) {
            playerViewController.player.pause();
            ////kony.print("playerViewController.kCMTimeZero   :: --"+kCMTimeZero);
            playerViewController.player.seekToTime(kCMTimeZero);
            this.isStarted = false;
        } 
        //kony.print('Video stop end');
    };
    
    kony.ui.Video.prototype.seekTo = function(seekTime) {
        //kony.print('Video seekTo ');
        var playerViewController = this.playerViewController;
        if (playerViewController && playerViewController.player && seekTime >= 0) {   
        	var seekTimeObj = {
        		"value":seekTime, "timescale":1000, "flags":1, "epoch":0
        	}
            playerViewController.player.seekToTime(seekTimeObj);
           /* if(this.isPlaying()){
                playerViewController.player.pause();
                playerViewController.player.seekToTime(seekTimeObj);
                this.play();
            }else{
                playerViewController.player.seekToTime(seekTimeObj);
            }*/
        }
    };
    kony.ui.Video.prototype.isPlaying = function() {
        var playerViewController = this.playerViewController
        if (playerViewController && playerViewController.player) {
        	var rate = playerViewController.player.rate;
        	//kony.print("Rate of playing "+rate);
        	if(rate > 0)
        		return true;
            	//return playerViewController.isPlaying();
        }
        return false;
    };
    kony.ui.Video.prototype.getCurrentPosition = function() {
     
        var playerViewController = this.playerViewController
        if (playerViewController && playerViewController.player) {
         	var time = playerViewController.player.currentTime();
	        if (time) {
	        	////kony.print("currentPosition USING AVplayer.....currentTime "+JSON.stringify(time)); 
                ////kony.print("currentTime Value~~~~ "+ time.value+"currentTime timescale~~~~ "+ time.timescale); 
                var secondsVal = time.value/time.timescale;
			    return parseInt(secondsVal*1000,10); 
	        }
        }
        return 0;
    };
    kony.ui.Video.prototype.getDuration = function() {
        var duration = this.getDurationObj();
        if (duration) {  
        	//kony.print("DURATION Value~~~~ "+ duration.value+"DURATION timescale~~~~ "+ duration.timescale); 
            var secondsVal = duration.value/duration.timescale;
			return parseInt(secondsVal*1000,10); 
        }
        return 0;
    };
    kony.ui.Video.prototype.getDurationObj = function() {
    	var playerViewController = this.playerViewController
        if (playerViewController && playerViewController.player) {
            var playerItem = playerViewController.player.currentItem;
	        if (playerItem && playerItem.duration) {
	        	////kony.print("getDurationObj USING AVplayer CurrentItem .duration "+JSON.stringify(playerItem.duration));
	            return playerItem.duration;
	        }
        }
       /* var playerItem = this.playerItem;
        if (playerItem) { 
        	////kony.print("returning duration Object ~~~~ "+JSON.stringify(this.playerItem.duration)); 
			return playerItem.duration; 
        }*/
        return null;
    };
    kony.ui.Video.prototype.getBufferPercentage = function() {
      //  var playerViewController = this.playerViewController
        /*if (playerViewController) {
            return playerViewController.getBufferPercentage();
        }*/
      /*  var playerViewController = this.playerViewController
        if (playerViewController) {
            var playerItem = playerViewController.player.currentItem;
	        if (playerItem && playerItem.loadedTimeRanges) {
	        	////kony.print("getBufferPercentage USING AVplayer CurrentItem:: "+JSON.stringify(playerItem.loadedTimeRanges));
	            //return (playerItem.loadedTimeRanges.start + playerItem.loadedTimeRanges.duration;
                ////kony.print("getBufferPercentage USING AVplayer CurrentItem::  1"+playerItem.loadedTimeRanges.count);  
	        }
        }*/
        return 100;
    };
    kony.ui.Video.prototype.getNativeContainer = function() {
        return this.nativeContainer;
    };

    kony.ui.Video.prototype.prepareNCProperties = function(nativeContainer){
        var defineGetter = util.defineGetter;
        var defineSetter = util.defineSetter;

        defineGetter(this, "skin", function() {
            return nativeContainer.skin;
        });
        defineSetter(this, "skin", function(val) {
            nativeContainer.skin = val;
        });

        defineGetter(this, "isVisible", function() {
            return nativeContainer.isVisible;
        });
        defineSetter(this, "isVisible", function(val) {
            nativeContainer.isVisible = val;
        });

        defineGetter(this, "padding", function() {
            return nativeContainer.padding;
        });
        defineSetter(this, "padding", function(val) {
            nativeContainer.padding = val;
        });

        defineGetter(this, "left", function() {
            return nativeContainer.left;
        });
        defineSetter(this, "left", function(val) {
            nativeContainer.left = val;
        });

        defineGetter(this, "right", function() {
            return nativeContainer.right;
        });
        defineSetter(this, "right", function(val) {
            nativeContainer.right = val;
        });

        defineGetter(this, "top", function() {
            return nativeContainer.top;
        });
        defineSetter(this, "top", function(val) {
            nativeContainer.top = val;
        });

        defineGetter(this, "bottom", function() {
            return nativeContainer.bottom;
        });
        defineSetter(this, "bottom", function(val) {
            nativeContainer.bottom = val;
        });

        defineGetter(this, "width", function() {
            return nativeContainer.width;
        });
        defineSetter(this, "width", function(val) {
            nativeContainer.width = val;
        });

        defineGetter(this, "height", function() {
            return nativeContainer.height;
        });
        defineSetter(this, "height", function(val) {
            nativeContainer.height = val;
        });

        defineGetter(this, "minWidth", function() {
            return nativeContainer.minWidth;
        });
        defineSetter(this, "minWidth", function(val) {
            nativeContainer.minWidth = val;
        });

        defineGetter(this, "maxWidth", function() {
            return nativeContainer.maxWidth;
        });
        defineSetter(this, "maxWidth", function(val) {
            nativeContainer.maxWidth = val;
        });

        defineGetter(this, "minHeight", function() {
            return nativeContainer.minHeight;
        });
        defineSetter(this, "minHeight", function(val) {
            nativeContainer.minHeight = val;
        });

        defineGetter(this, "maxHeight", function() {
            return nativeContainer.maxHeight;
        });
        defineSetter(this, "maxHeight", function(val) {
            nativeContainer.maxHeight = val;
        });

        defineGetter(this, "centerX", function() {
            return nativeContainer.centerX;
        });
        defineSetter(this, "centerX", function(val) {
            nativeContainer.centerX = val;
        });

        defineGetter(this, "centerY", function() {
            return nativeContainer.centerY;
        });
        defineSetter(this, "centerY", function(val) {
            nativeContainer.centerY = val;
        });

        defineGetter(this, "zIndex", function() {
            return nativeContainer.zIndex;
        });
        defineSetter(this, "zIndex", function(val) {
            nativeContainer.zIndex = val;
        }); 
		
		defineGetter(this, "opacity", function() {
            return nativeContainer.opacity;
        });
        defineSetter(this, "opacity", function(val) {
            nativeContainer.opacity = val;
        });

        defineGetter(this, "parent", function() {
            return nativeContainer.parent;
        }); 
    } 
})();
