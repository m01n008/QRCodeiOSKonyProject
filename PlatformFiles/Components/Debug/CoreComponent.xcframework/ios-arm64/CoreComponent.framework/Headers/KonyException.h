//
//  KonyException.h
//  VM
//
//  Created by Sathya Vennapusala on 26/02/09.
//  Copyright 2009 KonyLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

//user can continue further
@interface KonyException : NSException 
{

}

@end

// system exception is one, user cannot continue further.
@interface KonyCriticalException : NSException 
{
	
}

@end
