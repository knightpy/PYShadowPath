//
//  UIView+LXShadowPath.h
//  PYBtnLayout
//
//  Created by QJ on 2020/3/31.
//  Copyright © 2020 QJ. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum :NSInteger{
    
    PYShadowPathLeft,
    
    PYShadowPathRight,
    
    PYShadowPathTop,

    PYShadowPathBottom,

    PYShadowPathNoTop,
    
    PYShadowPathAllSide

} PYShadowPathSide;


@interface UIView (PYShadowPath)

/*
 * shadowColor 阴影颜色
 *
 * shadowOpacity 阴影透明度，默认0
 *
 * shadowRadius  阴影半径，默认3
 *
 * shadowPathSide 设置哪一侧的阴影，
 
 * shadowPathWidth 阴影的宽度，

 */

- (void)PY_SetShadowPathWith:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowSide:(PYShadowPathSide)shadowPathSide shadowPathWidth:(CGFloat)shadowPathWidth;
@end
