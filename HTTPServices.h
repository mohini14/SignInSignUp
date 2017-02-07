//
//  HTTPServices.h
//  SignInSignUp
//
//  Created by Mohini on 07/02/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPServices : NSObject

+(void) POSTWithUrl :(NSString *) urlString withData :(NSData *) data withCompletionHandler :(void(^)(NSData * data ,NSURLResponse * response ,NSError * error)) completionHandlerBlock;


@end
