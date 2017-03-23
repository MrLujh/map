

//
//  IMapView.h
//  map
//
//  Created by lujh on 2017/3/21.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IMapView <NSObject>
//定义具体的标准
//定义第一个标准：其实我们并不知道具体的地图是哪一个地图
//opp：父类的引用指向之类的实例对象
- (UIView*)getView;
//需要指定地图的大小
- (instancetype)initWithFrame:(CGRect)frame;

@end
