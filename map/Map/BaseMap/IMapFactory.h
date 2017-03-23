
//
//  IMapFactory.h
//  map
//
//  Created by lujh on 2017/3/22.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapView.h"
//工厂协议
@protocol IMapFactory <NSObject>
//流水线（定位，地图，导航等等。。。。）
//生产MapView,不知道是哪一个，但是知道地图的协议标准（IMapview）
- (id<IMapView>)getMapView:(CGRect)frame;

@end
