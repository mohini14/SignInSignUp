//
//  HTTPServices.m
//  SignInSignUp
//
//  Created by Mohini on 07/02/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import "HTTPServices.h"

@implementation HTTPServices

+(void)POSTWithUrl:(NSString *)urlString withData:(NSData *)data withCompletionHandler:(void (^)(NSData *, NSURLResponse *, NSError *))completionHandlerBlock{
    NSURL *url =[NSURL URLWithString:urlString];
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url];
    NSURLSessionConfiguration *defaultSessionConfiguration =[NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession=[NSURLSession sessionWithConfiguration:defaultSessionConfiguration];
    NSData *nsPostData =[NSJSONSerialization dataWithJSONObject:data options:0 error:nil];
    
    
    [request setHTTPMethod :@"POST"];
    [request setHTTPBody :nsPostData];
    [request setValue:@"apllication/json;charset=UTF-8" forHTTPHeaderField:@"content-type"];
    NSURLSessionDataTask *dataTask =[defaultSession dataTaskWithRequest:request completionHandler:^(NSData *  data, NSURLResponse *  response, NSError *  error) {
        
        completionHandlerBlock(data,response,error);
    }];
    
    [dataTask resume];
}

@end
