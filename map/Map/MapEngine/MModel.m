//
//  MModel.m
//  map
//
//  Created by lujh on 2017/3/22.
//  Copyright © 2017年 lujh. All rights reserved.
//

#import "MModel.h"
#import "HYXMLParserProtocol.h"

@interface MModel ()<HYXMLParserProtocol>

@end

@implementation MModel

-(void)hy_setKeyValues:(NSDictionary*)dic{
    [self setValuesForKeysWithDictionary:dic];
}

@end
