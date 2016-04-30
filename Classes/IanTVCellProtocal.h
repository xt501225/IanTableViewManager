//
//  IanTVCellProtocal.h
//  IanTableViewManager
//
//  Created by Ian Weng on 29/04/16.
//  Copyright © 2016 Ian Weng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IanTVCellProtocal <NSObject>

@required
- (void)prepareForDisplayWithValue:(id)value;

@optional
- (void)tappedInTableView:(UITableView *)tableView
           viewController:(UIViewController *)viewController;

@end
