//
//  UserServices.h
//  SignInSignUp
//
//  Created by Mohini on 07/02/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserServices : NSObject

-(void) login:(NSString *) email andPassword:(NSString *)password  andCallBackMethod:(void (^) (BOOL success, NSDictionary *data))callBackFromVC;


@end
