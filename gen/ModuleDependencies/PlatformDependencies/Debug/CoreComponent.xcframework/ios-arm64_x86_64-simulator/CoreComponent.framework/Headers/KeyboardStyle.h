//
//  KeyboardStyle.h
//  VM
//
//  Created by Praveen Kanike on 05/06/17.
//
//

#ifndef KeyboardStyle_h
#define KeyboardStyle_h

#import "KonyTextInputTypes.h"

@interface KeyboardStyle:NSObject
+(void)applyKeyboardAppearance:(UIView<UITextInputTraits>*)view withColor:(KonyTextFieldKeyboardAppearance)appearanceColor;
@end

#endif /* KeyboardStyle_h */
