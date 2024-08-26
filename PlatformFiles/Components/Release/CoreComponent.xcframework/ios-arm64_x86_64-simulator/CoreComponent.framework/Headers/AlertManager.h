//
//  AlertManager.h
//  VM
//
//  Created by KH206 on 18/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlertModel.h"

@interface AlertManager : NSObject
{
    NSMutableArray *activeAlerts;
}

- (void) showAlert: (AlertModel*) aAlertModel;
- (void) dismissAllAlerts;
- (void) dismissAlert:(AlertModel *) aAlertModel;

@end
