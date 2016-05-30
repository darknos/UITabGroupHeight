//
//  UITabBar+Resize.m
//  TiCustomizeTabGroup
//
//  Created by Sergey Nosenko on 5/11/16.
//
//

#import "TiUIListView+Editing.h"

@implementation TiUIListView (Editing)

-(void)setAllowsSelectionDuringEditing_:(id)arg
{
    [[self tableView] setAllowsSelectionDuringEditing:[TiUtils boolValue:arg def:NO]];
}

-(void)setAllowsMultipleSelection_:(id)arg
{
    [[self tableView] setAllowsMultipleSelection:[TiUtils boolValue:arg def:NO]];
}

-(void)setAllowsMultipleSelectionDuringEditing_:(id)arg
{
    [[self tableView] setAllowsMultipleSelectionDuringEditing:[TiUtils boolValue:arg def:NO]];
}



@end
