//
//  KSTaskError.h
//  TaskFrameworkLibrary
//
//  Created by Sunil Phani Manne on 08/09/16.
//  Copyright © 2016 MADP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSTaskError : NSError

@property (nonatomic, readonly) NSString *taskID;
@property (nonatomic, readonly) NSString *taskName;
@property (nonatomic, readonly) NSError *cause;

- (instancetype)initWithTaskID:(NSString *)taskID
                        domain:(NSString *)domain
                          code:(NSInteger)code
                      userInfo:(NSDictionary *)userInfo;

- (instancetype)initWithTaskID:(NSString *)taskID
                          name:(NSString *)taskName
                        domain:(NSString *)domain
                          code:(NSInteger)code
                      userInfo:(NSDictionary *)userInfo;

- (instancetype)initWithCause:(NSError *)cause
                       domain:(NSString *)domain
                         code:(NSInteger)code
                     userInfo:(NSDictionary *)userInfo;

- (instancetype)initWithCause:(NSError *)cause
                         name:(NSString *)taskName
                       domain:(NSString *)domain
                         code:(NSInteger)code
                     userInfo:(NSDictionary *)userInfo;

- (instancetype)initWithTaskID:(NSString *)taskID
                         cause:(NSError *)cause
                        domain:(NSString *)domain
                          code:(NSInteger)code
                      userInfo:(NSDictionary *)userInfo;

- (instancetype)initWithTaskID:(NSString *)taskID
                          name:(NSString *)taskName
                         cause:(NSError *)cause
                        domain:(NSString *)domain
                          code:(NSInteger)code
                      userInfo:(NSDictionary *)userInfo;

+ (instancetype)errorWithTaskID:(NSString *)taskID
                         domain:(NSString *)domain
                           code:(NSInteger)code
                       userInfo:(NSDictionary *)userInfo;

+ (instancetype)errorWithTaskID:(NSString *)taskID
                           name:(NSString *)taskName
                         domain:(NSString *)domain
                           code:(NSInteger)code
                       userInfo:(NSDictionary *)userInfo;

+ (instancetype)errorWithCause:(NSError *)cause
                        domain:(NSString *)domain
                          code:(NSInteger)code
                      userInfo:(NSDictionary *)userInfo;

+ (instancetype)errorWithCause:(NSError *)cause
                          name:(NSString *)taskName
                        domain:(NSString *)domain
                          code:(NSInteger)code
                      userInfo:(NSDictionary *)userInfo;

+ (instancetype)errorWithTaskID:(NSString *)taskID
                          cause:(NSError *)cause
                         domain:(NSString *)domain
                           code:(NSInteger)code
                       userInfo:(NSDictionary *)userInfo;

+ (instancetype)errorWithTaskID:(NSString *)taskID
                           name:(NSString *)taskName
                          cause:(NSError *)cause
                         domain:(NSString *)domain
                           code:(NSInteger)code
                       userInfo:(NSDictionary *)userInfo;

- (NSString *)recursiveDescription;

@end
