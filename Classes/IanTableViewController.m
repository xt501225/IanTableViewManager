//
//  IanTableViewController.m
//  IanTableViewManager
//
//  Created by Ian Weng on 28/04/16.
//  Copyright © 2016 Ian Weng. All rights reserved.
//

#import "IanTableViewController.h"

@interface IanTableViewController () <UITableViewDelegate,
                                       UITableViewDataSource>
@end
@implementation IanTableViewController

- (void)loadView {
  UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [view setBackgroundColor:[UIColor whiteColor]];
  self.view = view;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  _tableView = [[UITableView alloc] initWithFrame:[self.view bounds]
                                            style:UITableViewStyleGrouped];
  _tableView.delegate = self;
  _tableView.dataSource = self;
  _tableView.rowHeight = UITableViewAutomaticDimension;
  _tableView.estimatedRowHeight = 44.0;
  [self.view addSubview:_tableView];

  _sectionDescriptors = [NSMutableArray<IanTVSectionDescriptor *> new];
}

- (NSUInteger)numberOfSestions {
  return [_sectionDescriptors count];
}

- (void)addSectionDescriptor:(IanTVSectionDescriptor *)sectionDescriptor {
  [_sectionDescriptors addObject:sectionDescriptor];
}

- (void)addSectionDescriptors:
    (NSArray<IanTVSectionDescriptor *> *)sectionDescriptors {
  [_sectionDescriptors addObjectsFromArray:sectionDescriptors];
}

#pragma mark UITableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return [[_sectionDescriptors objectAtIndex:section] headerHeight];
}
- (void)tableView:(UITableView *)tableView
    didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  __kindof UITableViewCell<IanTVCellProtocal> *cell =
      [tableView cellForRowAtIndexPath:indexPath];
  if ([cell
          respondsToSelector:@selector(tappedInTableView:viewController:)])
    [cell tappedInTableView:tableView viewController:self];
}

#pragma makr UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return [self numberOfSestions];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
  IanTVSectionDescriptor *sectionDescriptor =
      [_sectionDescriptors objectAtIndex:section];
  return [sectionDescriptor numberOfRows];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  IanTVSectionDescriptor *sectionDescriptor =
      [_sectionDescriptors objectAtIndex:indexPath.section];
  IanTVRowDescriptor *rowDescriptor =
      [sectionDescriptor.rowDescriptors objectAtIndex:indexPath.row];
  return [rowDescriptor cellForTableView:tableView];
}

@end
