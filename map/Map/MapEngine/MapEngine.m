//
//  MapEngine.m
//  map
//
//  Created by lujh on 2017/3/22.
//  Copyright © 2017年 lujh. All rights reserved.
//qq:287929070

#import "MapEngine.h"
#import "BaiduMapFactory.h"
#import "GaodeMapFactory.h"
#import "HYXMLParser.h"
#import "MModel.h"

@implementation MapEngine
//如何实现
//提出解决方案？
//第一个方案：通过宏定义-》枚举
//+(id<IMapFactory>)getFactory {
//
//   return [[BaiduMapFactory alloc] init];
//
//}

- (instancetype)init {
    if (self = [super init]) {
        
        self.mapArray = [NSArray array];
        
        [self load];
    }
    
    return self;
}

+ (MapEngine *)sharedMapEngine
{
    static MapEngine *sharedAccountMapEngineInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedAccountMapEngineInstance = [[self alloc] init];
    });
    return sharedAccountMapEngineInstance;
}

-(void)load {
    
    NSString* dataXmlPath = [[NSBundle mainBundle] pathForResource:@"data.xml" ofType:nil];
    NSData* data = [NSData dataWithContentsOfFile: dataXmlPath];
    HYXMLParser* parser = [[HYXMLParser alloc] initWithModelClassName:@"MModel" withElementName:@"platform"];
    
    self.mapArray = [parser objectFromData:data];

    static int i = 0;
    for (MModel *model in self.mapArray) {
        
        if (i == 0) {
            //百度
            BMKMapManager *mapManager = [[BMKMapManager alloc]init];
            // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
            BOOL ret = [mapManager start:model.appKey  generalDelegate:nil];
            if (!ret) {
                NSLog(@"manager start failed!");
            }

        }
        
        if (i == 1) {
            
            //高德
            [AMapServices sharedServices].apiKey = model.appKey;
            [AMapServices sharedServices].enableHTTPS = YES;
        }
        
        i++;
    }

}

//第二个方案：动态配置（xml，json，plist）
   //第一步：定义配置文件，动态配置平台
   //第二步：解析xml配置文件（pull解析器）
-(id<IMapFactory>)getFactory {
    
    MModel *model1 = self.mapArray[0];
    
    if ([model1.isOpen isEqualToString:@"YES"]) {
        
        Class c = NSClassFromString(model1.factoryName);
        
        return [[c alloc] init];
        
    }else {
        
        MModel *model2 = self.mapArray[1];
        
        Class c = NSClassFromString(model2.factoryName);
        
        return [[c alloc] init];
    }
}

@end
