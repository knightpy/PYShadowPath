//计算文本高度
//  PalAttributeHeight.m
//  pal
//
//  Created by feel on 2017/12/2.
//  Copyright © 2017年 aihuoba. All rights reserved.
//

#import "PalAttributeHeight.h"

@implementation PalAttributeHeight
+(CGFloat)text:(NSString *)str size:(CGFloat)sizeWidth fontSize:(CGFloat)fontSize{
    CGSize maxSize = CGSizeMake(sizeWidth, MAXFLOAT);
    CGFloat example = [str boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]} context:nil].size.height ;
    return example ;
}

+ (CGFloat)textHeight:(NSString *)str size:(CGFloat)size fontSize:(CGFloat)fontSize
{
    CGSize maxSize = CGSizeMake(MAXFLOAT, size);
    CGFloat example = [str boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]} context:nil].size.width ;
    return example ;
}

+(CGFloat)content:(NSString *)str withSizesizeWidth:(CGFloat)sizeWidth withFontSize:(CGFloat)fontSize{
    CGSize maxSize = CGSizeMake(sizeWidth, MAXFLOAT);
    // 用于计算文本绘制时占据的矩形块    [str boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]} context:nil]
    CGFloat example = [str boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]} context:nil].size.height ;
    return example ;
}


+(CGRect)lableFrame:(UILabel *)str  withFontSize:(CGFloat)fontSize
{
    
    NSMutableParagraphStyle *paragraphstyle=[[NSMutableParagraphStyle alloc]init];
    paragraphstyle.lineBreakMode=NSLineBreakByCharWrapping;
    
    
    //设置label的字体和段落风格
    
    NSDictionary *dic=@{NSFontAttributeName:str.font,NSParagraphStyleAttributeName:paragraphstyle.copy};
    
    CGRect rect=  [str.text boundingRectWithSize:CGSizeMake(kScreenWidth , 63) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:dic context:nil];
    
    return rect;
}

+(CGFloat)lableFrame:(UILabel *)str  height:(CGFloat)height withFontSize:(CGFloat)fontSize
{
    CGSize maxSize = CGSizeMake(MAXFLOAT, height);
    CGFloat rect=  [str.text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]} context:nil].size.width;
    return rect;
}

+(CGSize)getAttributeFrame:(NSString *)string
{
    NSInteger width = kScreenWidth - 30;
    
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:12]};
    CGSize size = [string boundingRectWithSize:CGSizeMake(width, 10000) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    return size;
}

+ (CGFloat)resultsHeight:(NSString *)str withFont:(CGFloat)font withW:(CGFloat)width withH:(CGFloat)height
{
    CGSize maxSize = CGSizeMake(width,height);
    CGFloat btnPromptH = [str boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:VScaleW(font)]} context:nil].size.height ;
    return btnPromptH;
}
@end
