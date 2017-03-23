


//
//  GaodeMapFactory.m
//  map
//
//  Created by lujh on 2017/3/22.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import "GaodeMapFactory.h"
#import "GaoDeMapview.h"
@implementation GaodeMapFactory

- (id<IMapView>)getMapView:(CGRect)frame {
    
    return [[GaoDeMapview alloc] initWithFrame:frame];
}
@end
