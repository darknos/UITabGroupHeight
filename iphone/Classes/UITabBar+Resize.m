//
//  UITabBar+Resize.m
//  TiCustomizeTabGroup
//
//  Created by Sergey Nosenko on 5/11/16.
//
//

#import "UITabBar+Resize.h"

int GlobalTabHeight = -1;

@implementation UITabBar (Resize)
- (CGSize)sizeThatFits:(CGSize)size {
    CGSize sizeThatFits = [super sizeThatFits:size];
    if (GlobalTabHeight != -1) {
        sizeThatFits.height = GlobalTabHeight;
        
    }
    return sizeThatFits;
}
@end
