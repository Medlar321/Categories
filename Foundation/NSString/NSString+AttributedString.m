//
//  NSString+AttributedString.m
//  ymw
//
//  Created by xiang-chen on 15/5/11.
//  Copyright (c) 2015年 yesmywine. All rights reserved.
//

#import "NSString+AttributedString.h"

@implementation NSString(AttributedString)


+(NSMutableAttributedString*)addFisrtString:(NSString*)str1 withColor:(UIColor*)color1 toString:(NSString*)str2 withColor:(UIColor*)color2{
    
    NSMutableAttributedString* contentText = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@%@",str1,str2]];
    [contentText addAttribute:NSForegroundColorAttributeName value:color1 range:(NSRange){0,str1.length}];
    [contentText addAttribute:NSForegroundColorAttributeName value:color2 range:(NSRange){str1.length,contentText.length-str1.length}];
    
    return contentText;
}

+(NSMutableAttributedString*)addFisrtString:(NSString*)str1 withFont:(UIFont *)font1 toString:(NSString *)str2 withFont:(UIFont *)font2{
    
    NSMutableAttributedString* contentText = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@%@",str1,str2]];
    [contentText addAttribute:NSFontAttributeName value:font1 range:(NSRange){0,str1.length}];
    [contentText addAttribute:NSFontAttributeName value:font2 range:(NSRange){str1.length,contentText.length-str1.length}];
    
    return contentText;
}

@end
