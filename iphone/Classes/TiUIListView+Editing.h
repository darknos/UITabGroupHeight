//
//  UITabBar+Resize.h
//  TiCustomizeTabGroup
//
//  Created by Sergey Nosenko on 5/11/16.
//
//
#define USE_TI_UILISTVIEW

#import <UIKit/UIKit.h>
#import "TiUIListView.h"


@interface TiUIListView (Editing)
-(void)setAllowsMultipleSelection_:(id)arg;
-(void)setAllowsSelectionDuringEditing_:(id)arg;
-(void)setAllowsMultipleSelectionDuringEditing_:(id)arg;
@end