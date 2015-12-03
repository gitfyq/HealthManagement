//
//  NSObject+DHF.m
//  NR
//
//  Created by 范英强 on 15/9/9.
//  Copyright (c) 2015年 范英强. All rights reserved.
//

#import "NSObject+DHF.h"
#import <objc/runtime.h>
@implementation NSObject (DHF)


-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    //NSLog(@"forUndefinedKey::%@",key);
}
-(id)valueForUndefinedKey:(NSString *)key
{
    //NSLog(@"valueForUndefinedKey::%@",key);
    return nil;
}
//获得当前对象的所有成员变量列表，以字典返回
- (NSDictionary *)toDictionary
{
    NSMutableDictionary *dictionaryFormat = [NSMutableDictionary dictionary];
    //  取得当前类类型
    Class cls = [self class];
    
    //父类
    //cls = class_getSuperclass(cls);
    //    if (cls==[NSObject class]) {
    //        return;
    //    }
    unsigned int ivarsCnt = 0;
    //　获取类成员变量列表，ivarsCnt为类成员数量
    Ivar *ivars = class_copyIvarList(cls, &ivarsCnt);
    //　遍历成员变量列表，其中每个变量都是Ivar类型的结构体
    for (const Ivar *p = ivars; p < ivars + ivarsCnt; ++p)
    {
        Ivar const ivar = *p;
        
        //　获取变量名
        NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar)];
        // 若此变量未在类结构体中声明而只声明为Property，则变量名加前缀 '_'下划线
        // 比如 @property(retain) NSString *abc;则 key == _abc;
        
        //　获取变量值
        id value = [self valueForKey:key];
        
        //　取得变量类型
        // 通过 type[0]可以判断其具体的内置类型
        const char *type = ivar_getTypeEncoding(ivar);
        
        NSLog(@"key type:%@",[NSString stringWithCString:type encoding:NSUTF8StringEncoding]);
        
        if (value)
        {
            [dictionaryFormat setObject:value forKey:key];
        }
    }
    NSLog(@"%@",dictionaryFormat);
    return dictionaryFormat;
}
//获得当前对象的所有属性列表，如果isWrite为YES，返回的字典中同时包含了属性值，否则属性值为空
- (NSDictionary *)propertyList:(BOOL)isWrite
{
    NSMutableDictionary *props = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    //获得某个类的所有属性的拷贝
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    for (i = 0; i<outCount; i++) {
        //获得某一个属性
        objc_property_t property = properties[i];
        
        //获得属性名的字符串
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding] ;
        
        //获得指定的属性的值
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        if (isWrite) {
            if (propertyValue)
            {
                //保存属性名和属值值到字典中
                [props setObject:propertyValue forKey:propertyName];
            }
        }
        else{
            //保存空对象到字典中,为了获得所有属性名的列表
            [props setObject:[NSNull null] forKey:propertyName];
        }
    }
    //释放拷贝的属性列表
    free(properties);
    //返回所需要的当前实例的属性字典（如果对象被赋值了，同时返回对象的值）
    return props;
}
@end
