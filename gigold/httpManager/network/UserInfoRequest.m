//
//  UserInfoRequest.m
//  gigold
//
//  Created by wsc on 15/10/15.
//  Copyright © 2015年 wsc. All rights reserved.
//

#import "UserInfoRequest.h"

@implementation UserInfoRequest

static UserInfoRequest *userInfoRequest = nil;

+ (instancetype)sharedUserInfoRequest
{
    if (userInfoRequest == nil){
        userInfoRequest = [[UserInfoRequest alloc] init];
    }
    return userInfoRequest;
}


//用户基本信息查询
//"sign":"签名算法:将参数按ASII码排序，然后加上密钥串进行MD5加密，例如：sign=MD5(mobileNum=13576543876+MWD76D29KKAS8912SK)" /*签名*/

- (AFHTTPRequestOperation *)queryinfoMoblieNum:(NSString*)mobileNum
                                     success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                                     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error, id responseObject))failure{
    
    return [[FMNetWorkManager sharedInstance] requestURL:QUERY_INFO_URL httpMethod:@"POST" parameters:nil success:^(AFHTTPRequestOperation * operation, id responseObject) {
        success(operation, responseObject);
        
    }failure:^(AFHTTPRequestOperation *operation, NSError *error, id responseObject) {
        failure(operation, error ,responseObject);
    }];
}


//用户余额信息查询
//"sign":"签名算法:将参数按ASII码排序，然后加上密钥串进行MD5加密，例如：sign=MD5(mobileNum=13576543876+MWD76D29KKAS8912SK)" /*签名*/

- (AFHTTPRequestOperation *)balinfoMoblieNum:(NSString*)mobileNum
                                   success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                                   failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error, id responseObject))failure{
    
    return [[FMNetWorkManager sharedInstance] requestURL:BAL_INFO_URL httpMethod:@"POST" parameters:nil success:^(AFHTTPRequestOperation * operation, id responseObject) {
        success(operation, responseObject);
        
    }failure:^(AFHTTPRequestOperation *operation, NSError *error, id responseObject) {
        failure(operation, error ,responseObject);
    }];
}

//用户收支明细查询
//"sign":"签名算法:将参数按ASII码排序，然后加上密钥串进行MD5加密，例如：sign=MD5(mobileNum=13576543876+MWD76D29KKAS8912SK)" /*签名*/

- (AFHTTPRequestOperation *)amtdetailqueryMoblieNum:(NSString*)mobileNum acNo:(NSString*)acNo beginDate:(NSDate*)beginDate endDate:(NSDate*)endDate
                                   success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                                   failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error, id responseObject))failure{
    
    return [[FMNetWorkManager sharedInstance] requestURL:AMTDETAIL_QUERY_URL httpMethod:@"POST" parameters:nil success:^(AFHTTPRequestOperation * operation, id responseObject) {
        success(operation, responseObject);
        
    }failure:^(AFHTTPRequestOperation *operation, NSError *error, id responseObject) {
        failure(operation, error ,responseObject);
    }];
}



@end
