//
//  PalAttributeHeight.h
//  pal
//
//  Created by feel on 2017/12/2.
//  Copyright © 2017年 aihuoba. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PalAttributeHeight : NSObject

/// 文本的高度
/// @param str 文本值
/// @param sizeWidth 字体的宽度
/// @param fontSize 字体大小
+(CGFloat)text:(NSString *)str size:(CGFloat)sizeWidth fontSize:(CGFloat)fontSize;

+(CGFloat)textHeight:(NSString *)str size:(CGFloat)size fontSize:(CGFloat)fontSize;
@end
