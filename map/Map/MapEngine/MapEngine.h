//
//  MapEngine.h
//  map
//
//  Created by lujh on 2017/3/22.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapFactory.h"
//地图引擎（专门管理工厂（百度工厂，高度工厂））
@interface MapEngine : NSObject

@property(nonatomic,copy)NSArray *mapArray;

+ (MapEngine *)sharedMapEngine;

-(id<IMapFactory>)getFactory;
@end
