//
//  ViewController.m
//  AuthorizeRequestLibDemo
//
//  Created by Mars on 2020/9/17.
//  Copyright © 2020 Mars. All rights reserved.
//

#import "ViewController.h"
#import "AuthorizationManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //判断 App是否开启定位权限
    [[AuthorizationManager defaultManager] requestAuthorizationWithAuthorizationType:AuthorizationTypeMapWhenInUseOrMapAlways authorizedHandler:^{
        
        
    } unAuthorizedHandler:^{
        //  NSLog(@"Not granted:%@", _authDataArray[indexPath.row]);
            if (@available(iOS 10.0, *)) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
#pragma clang diagnostic pop
            } else {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString] options:@{} completionHandler:^(BOOL success) {
                    
                }];
            }
        
    }];
}


@end
