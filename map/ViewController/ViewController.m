//
//  ViewController.m
//  map
//
//  Created by lujh on 2017/3/21.
//  Copyright © 2017年 lujh. All rights reserved.
//qq:287929070

#import "ViewController.h"
#import "BaiduMapFactory.h"
#import "GaodeMapFactory.h"
#import "MapEngine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    id<IMapView> mapView = [[BaiDuMapview alloc] initWithFrame:self.view.bounds];
//    
//    [self.view addSubview:[mapView getView]];
    
//    id<IMapView> mapView = [[GaoDeMapview alloc] initWithFrame:self.view.bounds];
//    
//    [self.view addSubview:[mapView getView]];
//第一步：分析地图原始代码问题
//客户端不需要知道具体的实现，只需要调用即可（一个view）
//隐藏细节，将创建的过程隐藏了，这个隐藏通过我们的工厂实现，客户端只需要知道这个地图遵循地图协议（标准）
//解决方案：工厂模式
//第二步：工厂分为很多种（百度，高德，goole，搜狗）
    //例如：百度工厂（地图，定位，导航，POI检索等等）
    //解决方案：工厂方法模式解决
//第三步：定义工厂标准
//第四步：指定百度工厂
//第五步：测试
//    id<IMapFactory> factory = [[BaiduMapFactory alloc] init];
//    id<IMapView> mapView = [factory getMapView:self.view.bounds];
//    [self.view addSubview:[mapView getView]];
//
//实现一键切换
//分析问题：写死在客户端
//解决方案：简单工厂实现（一键切换）
//当我们的版本迭代，功能升级，不需要修改客户端代码，尽量少修改客户端代码
    //第一个方案：通过宏定义-》枚举
//    id<IMapFactory> factory = [MapEngine getFactory];
//    id<IMapView> mapView = [factory getMapView:self.view.bounds];
//    [self.view addSubview:[mapView getView]];
    
    
    //第二个方案：动态配置（xml，json，plist）
    id<IMapFactory> factory = [[[MapEngine alloc] init] getFactory];
    id<IMapView> mapView = [factory getMapView:self.view.bounds];
    [self.view addSubview:[mapView getView]];
    
}

@end
