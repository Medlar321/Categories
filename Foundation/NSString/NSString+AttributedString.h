//
//  NSString+AttributedString.h
//  ymw
//
//  Created by xiang-chen on 15/5/11.
//  Copyright (c) 2015年 yesmywine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(AttributedString)

+(NSMutableAttributedString*)addFisrtString:(NSString*)str1 withColor:(UIColor*)color1 toString:(NSString*)str2 withColor:(UIColor*)color2;

+(NSMutableAttributedString*)addFisrtString:(NSString*)str1 withFont:(UIFont*)font1 toString:(NSString*)str2 withFont:(UIFont*)font2;

@end
