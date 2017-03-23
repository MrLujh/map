//
//  GaoDeMapview.m
//  map
//
//  Created by lujh on 2017/3/21.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import "GaoDeMapview.h"
@interface GaoDeMapview ()

@property(nonatomic,strong)MAMapView *mapView;

@end
@implementation GaoDeMapview

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super init]) {
        //初始化高德地图
        _mapView = [[MAMapView alloc] initWithFrame:frame];
    }
    return self;
}
- (UIView*)getView {
    
    return _mapView;
    
}

@end
