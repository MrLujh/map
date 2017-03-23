//
//  BaiDuMapview.m
//  map
//
//  Created by lujh on 2017/3/21.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import "BaiDuMapview.h"
@interface BaiDuMapview ()

@property(nonatomic,strong)BMKMapView *mapView;

@end

@implementation BaiDuMapview

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super init]) {
        //初始化百度地图
        _mapView = [[BMKMapView alloc] initWithFrame:frame];
    }
    return self;
}
- (UIView*)getView {
    
    return _mapView;
    
}

@end
