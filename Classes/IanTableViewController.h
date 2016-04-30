//
//  IanTableViewController.h
//  IanTableViewManager
//
//  Created by Ian Weng on 28/04/16.
//  Copyright © 2016 Ian Weng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IanTVSectionDescriptor.h"

@interface IanTableViewController : UIViewController {
@protected
  UITableView *_tableView;
  NSMutableArray<IanTVSectionDescriptor *> *_sectionDescriptors;
}

- (NSUInteger)numberOfSestions;
- (void)addSectionDescriptor:(IanTVSectionDescriptor *)sectionDescriptor;
- (void)addSectionDescriptors:
    (NSArray<IanTVSectionDescriptor *> *)sectionDescriptors;

@end
