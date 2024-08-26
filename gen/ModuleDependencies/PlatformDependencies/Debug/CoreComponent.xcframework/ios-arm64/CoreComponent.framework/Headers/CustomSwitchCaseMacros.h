//
//  CustomSwitchCaseMacros.h
//  konylib
//
//  Created by Aravind Macharla on 13/04/18.
//

#ifndef CustomSwitchCaseMacros_h
#define CustomSwitchCaseMacros_h


#endif /* CustomSwitchCaseMacros_h */

#define SWITCH(compareStr)              for (NSString *dummyStr = (compareStr); ; )
#define CASE(str)                       if ([dummyStr isEqualToString:(str)])
#define DEFAULT
