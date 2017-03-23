
//
//  BaiduMapFactory.m
//  map
//
//  Created by lujh on 2017/3/22.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import "BaiduMapFactory.h"
#import "BaiDuMapview.h"
@implementation BaiduMapFactory

- (id<IMapView>)getMapView:(CGRect)frame {

    return [[BaiDuMapview alloc] initWithFrame:frame];
}
@end
