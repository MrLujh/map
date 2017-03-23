//
//  BaiDuMapview.h
//  map
//
//  Created by lujh on 2017/3/21.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import <Foundation/Foundation.h>
//百度地图：遵循地图的标准
@interface BaiDuMapview : NSObject<IMapView>
- (UIView*)getView;
@end
