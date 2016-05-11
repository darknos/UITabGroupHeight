//
//  UITabBar+Resize.h
//  TiCustomizeTabGroup
//
//  Created by Sergey Nosenko on 5/11/16.
//
//

#import <UIKit/UIKit.h>

extern int GlobalTabHeight;

@interface UITabBar (Resize)
- (CGSize)sizeThatFits:(CGSize)size;
@end