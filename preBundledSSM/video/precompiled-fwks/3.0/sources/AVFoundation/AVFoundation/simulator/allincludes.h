#import "AudioToolbox_AudioFileStream.h"
#import "Foundation_NSMassFormatter.h"
#import "AVFoundation_AVAssetWriter.h"
#import "AudioToolbox_AudioToolbox.h"
#import "CoreFoundation_CFStream.h"
#import "CoreFoundation_CFTree.h"
#import "Foundation_NSURLConnection.h"
#import "AVFoundation_AVFAudio_AVAudioTime.h"
#import "AVFoundation_AVSampleBufferAudioRenderer.h"
#import "CoreFoundation_CFBag.h"
#import "CoreFoundation_CFError.h"
#import "Foundation_NSSortDescriptor.h"
#import "QuartzCore_CABase.h"
#import "AVFoundation_AVFAudio_AVAudioMixerNode.h"
#import "Foundation_NSHashTable.h"
#import "CoreGraphics_CGAffineTransform.h"
#import "AVFoundation_AVFAudio_AVAudioSessionDeprecated.h"
#import "CoreGraphics_CGDataProvider.h"
#import "Foundation_NSThread.h"
#import "AVFoundation_AVAssetReader.h"
#import "Foundation_NSOperation.h"
#import "CoreGraphics_CGShading.h"
#import "Foundation_NSKeyValueCoding.h"
#import "Foundation_NSRelativeDateTimeFormatter.h"
#import "CoreFoundation_CFStringEncodingExt.h"
#import "AVFoundation_AVCaptureStillImageOutput.h"
#import "AVFoundation_AVMediaFormat.h"
#import "AudioToolbox_AudioSession.h"
#import "AVFoundation_AVSampleBufferDisplayLayer.h"
#import "AVFoundation_AVPlayerLooper.h"
#import "Foundation_NSValueTransformer.h"
#import "CoreGraphics_CGError.h"
#import "CoreGraphics_CGPath.h"
#import "CoreGraphics_CGGradient.h"
#import "Security_SecSharedCredential.h"
#import "Foundation_NSProcessInfo.h"
#import "AVFoundation_AVAssetCache.h"
#import "Foundation_NSMetadata.h"
#import "CoreFoundation_CFRunLoop.h"
#import "CoreFoundation_CFBitVector.h"
#import "Foundation_NSPersonNameComponents.h"
#import "Metal_MTLDrawable.h"
#import "Foundation_NSLock.h"
#import "AVFoundation_AVFAudio_AVAudioFormat.h"
#import "Security_SecTrust.h"
#import "AVFoundation_AVCaptureOutputBase.h"
#import "Foundation_NSPointerFunctions.h"
#import "AVFoundation_AVVideoSettings.h"
#import "CFNetwork_CFHTTPAuthentication.h"
#import "AVFoundation_AVCaptureDevice.h"
#import "CFNetwork_CFHTTPStream.h"
#import "Foundation_NSPointerArray.h"
#import "AVFoundation_AVTimedMetadataGroup.h"
#import "CoreFoundation_CFCalendar.h"
#import "AVFoundation_AVError.h"
#import "AVFoundation_AVTime.h"
#import "Foundation_NSScanner.h"
#import "AVFoundation_AVFAudio_AVAudioMixing.h"
#import "Foundation_NSNumberFormatter.h"
#import "Foundation_NSURLCredential.h"
#import "CoreFoundation_CFBase.h"
#import "QuartzCore_CAEmitterLayer.h"
#import "AudioToolbox_AUGraph.h"
#import "QuartzCore_CATextLayer.h"
#import "AudioToolbox_AudioUnitProperties.h"
#import "AVFoundation_AVFAudio_AVAudioUnitTimeEffect.h"
#import "AVFoundation_AVVideoComposition.h"
#import "Foundation_NSXMLParser.h"
#import "Foundation_NSLocale.h"
#import "CoreGraphics_CGColorConversionInfo.h"
#import "Foundation_NSComparisonPredicate.h"
#import "AudioToolbox_AUAudioUnitImplementation.h"
#import "Foundation_NSProgress.h"
#import "Foundation_NSDecimal.h"
#import "Foundation_NSURL.h"
#import "CoreFoundation_CFString.h"
#import "AVFoundation_AVFAudio_AVAudioBuffer.h"
#import "AudioToolbox_CAShow.h"
#import "AudioToolbox_ExtendedAudioFile.h"
#import "Foundation_NSObjCRuntime.h"
#import "Foundation_NSPropertyList.h"
#import "CoreGraphics_CGPDFPage.h"
#import "AudioToolbox_MusicDevice.h"
#import "AVFoundation_AVFAudio_AVAudioPlayer.h"
#import "Foundation_NSFileHandle.h"
#import "QuartzCore_CAEmitterCell.h"
#import "Foundation_NSUserDefaults.h"
#import "CoreFoundation_CFMachPort.h"
#import "AVFoundation_AVFAudio_AVAudioSinkNode.h"
#import "AVFoundation_AVCaptureVideoDataOutput.h"
#import "Foundation_NSNotificationQueue.h"
#import "QuartzCore_CAMetalLayer.h"
#import "CoreFoundation_CFBundle.h"
#import "AVFoundation_AVSemanticSegmentationMatte.h"
#import "Foundation_NSUnit.h"
#import "AVFoundation_AVFAudio_AVAudioPlayerNode.h"
#import "CoreFoundation_CFPlugIn.h"
#import "CoreVideo_CVBase.h"
#import "Foundation_NSURLProtocol.h"
#import "Foundation_NSZone.h"
#import "AVFoundation_AVAssetDownloadTask.h"
#import "CoreGraphics_CGImage.h"
#import "QuartzCore_CAValueFunction.h"
#import "QuartzCore_CAScrollLayer.h"
#import "CoreFoundation_CFLocale.h"
#import "Security_SecIdentity.h"
#import "AVFoundation_AVFAudio_AVAudioUnit.h"
#import "AVFoundation_AVFAudio_AVMIDIPlayer.h"
#import "Foundation_NSString.h"
#import "AVFoundation_AVFAudio_AVAudioUnitVarispeed.h"
#import "AudioToolbox_AudioFormat.h"
#import "Foundation_NSUUID.h"
#import "CoreVideo_CVPixelBufferIOSurface.h"
#import "Security_SecKey.h"
#import "QuartzCore_CATransform3D.h"
#import "AVFoundation_AVFAudio_AVAudioUnitGenerator.h"
#import "Foundation_NSStream.h"
#import "CoreGraphics_CGPDFScanner.h"
#import "Foundation_NSFilePresenter.h"
#import "Foundation_NSProxy.h"
#import "Security_SecProtocolOptions.h"
#import "CoreFoundation_CFFileDescriptor.h"
#import "AVFoundation_AVFAudio_AVAudioConverter.h"
#import "AVFoundation_AVCaptureDepthDataOutput.h"
#import "CoreGraphics_CGDataConsumer.h"
#import "Foundation_NSKeyedArchiver.h"
#import "AVFoundation_AVAssetTrackGroup.h"
#import "AVFoundation_AVFAudio_AVAudioSettings.h"
#import "Foundation_NSRegularExpression.h"
#import "AudioToolbox_CAFFile.h"
#import "Foundation_NSNotification.h"
#import "AVFoundation_AVMetadataObject.h"
#import "Foundation_NSURLCache.h"
#import "Foundation_NSMethodSignature.h"
#import "Foundation_NSTimeZone.h"
#import "AVFoundation_AVFAudio_AVAudioUnitDistortion.h"
#import "AudioToolbox_AUParameters.h"
#import "Foundation_NSLinguisticTagger.h"
#import "Foundation_NSDateIntervalFormatter.h"
#import "AVFoundation_AVAssetTrackSegment.h"
#import "Security_SecProtocolTypes.h"
#import "AudioToolbox_AUAudioUnit.h"
#import "QuartzCore_CAMediaTimingFunction.h"
#import "CoreVideo_CVPixelBuffer.h"
#import "QuartzCore_CAShapeLayer.h"
#import "Foundation_NSPathUtilities.h"
#import "Metal_MTLPixelFormat.h"
#import "AVFoundation_AVFAudio_AVAudioUnitComponent.h"
#import "Foundation_NSXPCConnection.h"
#import "Foundation_NSFileWrapper.h"
#import "Foundation_NSPort.h"
#import "Foundation_NSTimer.h"
#import "AVFoundation_AVCaptureSession.h"
#import "AVFoundation_AVPortraitEffectsMatte.h"
#import "AVFoundation_AVAsynchronousKeyValueLoading.h"
#import "Foundation_NSPredicate.h"
#import "CFNetwork_CFNetServices.h"
#import "AVFoundation_AVFAudio_AVAudioNode.h"
#import "AVFoundation_AVFAudio_AVAudioSourceNode.h"
#import "AVFoundation_AVMetadataIdentifiers.h"
#import "Foundation_NSFileCoordinator.h"
#import "MediaToolbox_MTAudioProcessingTap.h"
#import "CoreVideo_CVPixelBufferPool.h"
#import "Foundation_NSRange.h"
#import "CoreGraphics_CGPDFString.h"
#import "CoreAudioTypes_CoreAudioBaseTypes.h"
#import "OpenGLES_EAGL.h"
#import "Foundation_NSNull.h"
#import "AVFoundation_AVMetadataFormat.h"
#import "CoreMedia_CMBase.h"
#import "AVFoundation_AVFAudio_AVAudioConnectionPoint.h"
#import "QuartzCore_CAAnimation.h"
#import "AVFoundation_AVPlayerItem.h"
#import "AVFoundation_AVFAudio_AVAudioSessionRoute.h"
#import "CoreVideo_CVOpenGLESTexture.h"
#import "Foundation_NSMeasurementFormatter.h"
#import "CoreFoundation_CFFileSecurity.h"
#import "Foundation_NSLengthFormatter.h"
#import "CoreGraphics_CGLayer.h"
#import "AVFoundation_AVFAudio_AVAudioEnvironmentNode.h"
#import "Security_SecPolicy.h"
#import "Foundation_NSURLProtectionSpace.h"
#import "AVFoundation_AVTextStyleRule.h"
#import "CoreFoundation_CFNumberFormatter.h"
#import "AVFoundation_AVSampleBufferRenderSynchronizer.h"
#import "Foundation_NSCoder.h"
#import "Foundation_NSInvocation.h"
#import "AVFoundation_AVCaptureInput.h"
#import "AVFoundation_AVAssetImageGenerator.h"
#import "QuartzCore_CATransaction.h"
#import "CoreVideo_CVMetalTextureCache.h"
#import "CoreFoundation_CFNotificationCenter.h"
#import "Security_SecItem.h"
#import "Foundation_NSValue.h"
#import "CoreGraphics_CGPDFArray.h"
#import "AudioToolbox_AudioServices.h"
#import "AVFoundation_AVFAudio_AVAudioIONode.h"
#import "Foundation_NSData.h"
#import "Foundation_NSByteCountFormatter.h"
#import "AVFoundation_AVFAudio_AVAudioUnitTimePitch.h"
#import "AVFoundation_AVFAudio_AVAudioChannelLayout.h"
#import "CFNetwork_CFNetDiagnostics.h"
#import "Foundation_NSDateFormatter.h"
#import "AVFoundation_AVOutputSettingsAssistant.h"
#import "Foundation_NSURLCredentialStorage.h"
#import "AVFoundation_AVAudioProcessingSettings.h"
#import "CoreGraphics_CGPDFContext.h"
#import "Foundation_NSOrderedCollectionChange.h"
#import "Foundation_NSEnumerator.h"
#import "CoreGraphics_CGPDFContentStream.h"
#import "AVFoundation_AVAssetReaderOutput.h"
#import "CFNetwork_CFFTPStream.h"
#import "CFNetwork_CFSocketStream.h"
#import "Security_SecProtocolObject.h"
#import "AudioToolbox_MusicPlayer.h"
#import "Security_SecAccessControl.h"
#import "Foundation_NSExtensionContext.h"
#import "CoreVideo_CVBuffer.h"
#import "CoreGraphics_CGBitmapContext.h"
#import "Foundation_NSException.h"
#import "Foundation_NSDecimalNumber.h"
#import "Foundation_NSObject.h"
#import "ImageIO_CGImageProperties.h"
#import "AVFoundation_AVFAudio_AVAudioSessionTypes.h"
#import "Foundation_NSISO8601DateFormatter.h"
#import "CoreVideo_CVMetalTexture.h"
#import "AVFoundation_AVAssetResourceLoader.h"
#import "AVFoundation_AVPlayerItemTrack.h"
#import "UniformTypeIdentifiers_UTTagClass.h"
#import "QuartzCore_CATiledLayer.h"
#import "CoreGraphics_CGColor.h"
#import "AVFoundation_AVFAudio_AVAudioUnitReverb.h"
#import "CoreMIDI_MIDIServices.h"
#import "QuartzCore_CAMediaTiming.h"
#import "CoreFoundation_CFTimeZone.h"
#import "AVFoundation_AVFAudio_AVAudioRecorder.h"
#import "OpenGLES_EAGLDrawable.h"
#import "Foundation_NSIndexSet.h"
#import "AVFoundation_AVFAudio_AVSpeechSynthesis.h"
#import "AVFoundation_AVCompositionTrack.h"
#import "CoreFoundation_CFUserNotification.h"
#import "Foundation_NSURLResponse.h"
#import "CoreGraphics_CGFont.h"
#import "AVFoundation_AVFAudio_AVAudioSession.h"
#import "AVFoundation_AVMovieTrack.h"
#import "AVFoundation_AVAnimation.h"
#import "Foundation_NSTextCheckingResult.h"
#import "Foundation_NSEnergyFormatter.h"
#import "CoreMedia_CMBlockBuffer.h"
#import "Foundation_NSDateComponentsFormatter.h"
#import "Foundation_NSAttributedString.h"
#import "AVFoundation_AVFAudio_AVAudioUnitSampler.h"
#import "CoreFoundation_CFPreferences.h"
#import "Foundation_NSExtensionRequestHandling.h"
#import "Security_SecImportExport.h"
#import "AVFoundation_AVPlayer.h"
#import "CoreGraphics_CGFunction.h"
#import "UniformTypeIdentifiers_UTType.h"
#import "CoreMedia_CMSync.h"
#import "CoreFoundation_CFByteOrder.h"
#import "AVFoundation_AVFAudio_AVAudioSequencer.h"
#import "Foundation_NSNetServices.h"
#import "AVFoundation_AVFAudio_AVAudioUnitMIDIInstrument.h"
#import "Foundation_NSError.h"
#import "CoreGraphics_CGPDFObject.h"
#import "AVFoundation_AVAssetSegmentReport.h"
#import "AVFoundation_AVFAudio_AVAudioTypes.h"
#import "AVFoundation_AVAudioMix.h"
#import "Foundation_NSAutoreleasePool.h"
#import "CoreGraphics_CGContext.h"
#import "Foundation_NSSet.h"
#import "CoreMedia_CMTime.h"
#import "AVFoundation_AVCaptureAudioDataOutput.h"
#import "Foundation_NSExpression.h"
#import "Foundation_NSFormatter.h"
#import "Foundation_NSCalendar.h"
#import "Foundation_NSURLSession.h"
#import "Foundation_NSURLError.h"
#import "CFNetwork_CFHost.h"
#import "Foundation_NSDictionary.h"
#import "AVFoundation_AVPlayerMediaSelectionCriteria.h"
#import "Foundation_NSListFormatter.h"
#import "CoreFoundation_CFDate.h"
#import "CoreFoundation_CFData.h"
#import "AVFoundation_AVQueuedSampleBufferRendering.h"
#import "Foundation_NSOrderedCollectionDifference.h"
#import "CFNetwork_CFNetworkErrors.h"
#import "Foundation_NSUbiquitousKeyValueStore.h"
#import "AVFoundation_AVCaptureFileOutput.h"
#import "QuartzCore_CADisplayLink.h"
#import "Foundation_FoundationErrors.h"
#import "CFNetwork_CFProxySupport.h"
#import "Security_SecProtocolMetadata.h"
#import "Foundation_NSKeyValueObserving.h"
#import "AudioToolbox_AudioOutputUnit.h"
#import "Foundation_NSMeasurement.h"
#import "Foundation_NSFileManager.h"
#import "QuartzCore_CAGradientLayer.h"
#import "Security_SecureTransport.h"
#import "Foundation_NSArray.h"
#import "CoreFoundation_CFURLAccess.h"
#import "AudioToolbox_AudioConverter.h"
#import "AVFoundation_AVDepthData.h"
#import "CoreGraphics_CGColorSpace.h"
#import "Foundation_NSItemProvider.h"
#import "AudioToolbox_AudioUnitParameters.h"
#import "AVFoundation_AVRouteDetector.h"
#import "CoreFoundation_CFMessagePort.h"
#import "AVFoundation_AVMovie.h"
#import "CoreVideo_CVReturn.h"
#import "AVFoundation_AVFAudio_AVAudioUnitDelay.h"
#import "QuartzCore_CALayer.h"
#import "AudioToolbox_AudioCodec.h"
#import "Foundation_NSMetadataAttributes.h"
#import "AVFoundation_AVContentKeySession.h"
#import "CoreFoundation_CFUUID.h"
#import "Foundation_NSExtensionItem.h"
#import "CoreMedia_CMFormatDescription.h"
#import "AVFoundation_AVSynchronizedLayer.h"
#import "Foundation_NSOrthography.h"
#import "Security_SecRandom.h"
#import "CoreGraphics_CGPDFDictionary.h"
#import "Foundation_NSDate.h"
#import "AVFoundation_AVMediaSelection.h"
#import "AVFoundation_AVFAudio_AVAudioFile.h"
#import "AVFoundation_AVFAudio_AVAudioUnitEffect.h"
#import "CoreGraphics_CGPDFStream.h"
#import "Foundation_NSURLRequest.h"
#import "AudioToolbox_AudioFile.h"
#import "Foundation_NSByteOrder.h"
#import "Foundation_NSURLAuthenticationChallenge.h"
#import "CoreFoundation_CFArray.h"
#import "Foundation_NSUserActivity.h"
#import "AVFoundation_AVVideoCompositing.h"
#import "CoreMedia_CMTimeRange.h"
#import "CoreGraphics_CGPattern.h"
#import "Foundation_NSUndoManager.h"
#import "AudioToolbox_AudioWorkInterval.h"
#import "AVFoundation_AVUtilities.h"
#import "CoreFoundation_CFSet.h"
#import "AVFoundation_AVAssetExportSession.h"
#import "CoreVideo_CVImageBuffer.h"
#import "CoreFoundation_CFUtilities.h"
#import "CoreFoundation_CFSocket.h"
#import "CoreFoundation_CFStringTokenizer.h"
#import "AVFoundation_AVComposition.h"
#import "CoreFoundation_CFCharacterSet.h"
#import "QuartzCore_CAReplicatorLayer.h"
#import "AVFoundation_AVPlayerItemMediaDataCollector.h"
#import "CoreFoundation_CFAttributedString.h"
#import "CoreMedia_CMSampleBuffer.h"
#import "Foundation_NSDateInterval.h"
#import "CoreFoundation_CFBinaryHeap.h"
#import "Foundation_NSIndexPath.h"
#import "AVFoundation_AVCaptureMetadataOutput.h"
#import "CoreGraphics_CGPDFDocument.h"
#import "Foundation_NSOrderedSet.h"
#import "AVFoundation_AVAssetTrack.h"
#import "AVFoundation_AVPlayerLayer.h"
#import "CoreFoundation_CFDateFormatter.h"
#import "Foundation_NSFileVersion.h"
#import "CFNetwork_CFHTTPMessage.h"
#import "AudioToolbox_AudioQueue.h"
#import "CoreVideo_CVOpenGLESTextureCache.h"
#import "AVFoundation_AVCaptureDataOutputSynchronizer.h"
#import "CoreFoundation_CFURLEnumerator.h"
#import "AVFoundation_AVAsset.h"
#import "Foundation_NSCharacterSet.h"
#import "AVFoundation_AVCameraCalibrationData.h"
#import "CoreFoundation_CFDictionary.h"
#import "AVFoundation_AVCaptureVideoPreviewLayer.h"
#import "Security_SecBase.h"
#import "Foundation_NSHTTPCookie.h"
#import "Foundation_NSCache.h"
#import "Foundation_NSRunLoop.h"
#import "Foundation_NSJSONSerialization.h"
#import "AudioToolbox_AUComponent.h"
#import "AVFoundation_AVCaptureSystemPressure.h"
#import "AVFoundation_AVFAudio_AVAudioEngine.h"
#import "AVFoundation_AVCaptureSessionPreset.h"
#import "CoreMedia_CMAttachment.h"
#import "Security_CipherSuite.h"
#import "AVFoundation_AVAssetWriterInput.h"
#import "CoreVideo_CVPixelFormatDescription.h"
#import "CoreGraphics_CGPDFOperatorTable.h"
#import "CoreFoundation_CFPropertyList.h"
#import "CoreFoundation_CFNumber.h"
#import "QuartzCore_CATransformLayer.h"
#import "QuartzCore_CAEAGLLayer.h"
#import "Foundation_NSMapTable.h"
#import "Security_SecCertificate.h"
#import "AudioToolbox_AudioComponent.h"
#import "Foundation_NSCompoundPredicate.h"
#import "Foundation_NSBundle.h"
#import "CoreGraphics_CGGeometry.h"
#import "CoreAudioTypes_AudioSessionTypes.h"
#import "CoreFoundation_CFURL.h"
#import "AVFoundation_AVCompositionTrackSegment.h"
#import "AVFoundation_AVMetadataItem.h"
#import "Foundation_NSHTTPCookieStorage.h"
#import "Foundation_NSPersonNameComponentsFormatter.h"
#import "AVFoundation_AVFAudio_AVAudioUnitEQ.h"
#import "AVFoundation_AVMediaSelectionGroup.h"
#import "AVFoundation_AVPlayerItemOutput.h"
#import "AVFoundation_AVCapturePhotoOutput.h"
