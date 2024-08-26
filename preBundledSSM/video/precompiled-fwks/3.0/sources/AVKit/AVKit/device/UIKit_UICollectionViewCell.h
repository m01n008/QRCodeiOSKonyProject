#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UICollectionViewCell_symbols(JSContext*);
@protocol UICollectionReusableViewInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSString * reuseIdentifier;
-(void) prepareForReuse;
-(UICollectionViewLayoutAttributes *) preferredLayoutAttributesFittingAttributes: (UICollectionViewLayoutAttributes *) layoutAttributes ;
-(void) applyLayoutAttributes: (UICollectionViewLayoutAttributes *) layoutAttributes ;
-(void) willTransitionFromLayout: (UICollectionViewLayout *) oldLayout toLayout: (UICollectionViewLayout *) newLayout ;
-(void) didTransitionFromLayout: (UICollectionViewLayout *) oldLayout toLayout: (UICollectionViewLayout *) newLayout ;
@end
@protocol UICollectionReusableViewClassExports<JSExport>
@end
@protocol UICollectionViewCellInstanceExports<JSExport>
@property (nonatomic,strong) UIView * backgroundView;
@property (readonly,nonatomic) UIView * contentView;
@property (nonatomic) BOOL automaticallyUpdatesBackgroundConfiguration;
@property (copy,nonatomic) id contentConfiguration;
@property (nonatomic,strong) UIView * selectedBackgroundView;
@property (getter=isSelected,nonatomic) BOOL selected;
@property (nonatomic) BOOL automaticallyUpdatesContentConfiguration;
@property (copy,nonatomic) UIBackgroundConfiguration * backgroundConfiguration;
@property (readonly,nonatomic) UICellConfigurationState * configurationState;
@property (getter=isHighlighted,nonatomic) BOOL highlighted;
-(void) updateConfigurationUsingState: (UICellConfigurationState *) state ;
-(void) setNeedsUpdateConfiguration;
-(void) dragStateDidChange: (UICollectionViewCellDragState) dragState ;
@end
@protocol UICollectionViewCellClassExports<JSExport>
@end
#pragma clang diagnostic pop