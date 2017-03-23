//
//  AppDelegate.h
//  map
//
//  Created by lujh on 2017/3/21.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
    BMKMapManager* _mapManager;
}


@property (strong, nonatomic) UIWindow *window;


@end

