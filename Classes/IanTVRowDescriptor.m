//
//  IanTVRowDescriptor.m
//  IanTableViewManager
//
//  Created by Ian Weng on 28/04/16.
//  Copyright © 2016 Ian Weng. All rights reserved.
//

#import "IanTVRowDescriptor.h"

@implementation IanTVRowDescriptor

+ (instancetype)descriptorWithCellClass:(Class)cellClass
                              cellValue:(id)cellValue {
  IanTVRowDescriptor *descriptor = [IanTVRowDescriptor new];
  descriptor.cellClass = cellClass;
  descriptor.cellValue = cellValue;
  return descriptor;
}

- (instancetype)init {
  self = [super init];
  if (self) {
    self.cellReusability = YES;
  }
  return self;
}

- (__kindof UITableViewCell<IanTVCellProtocal> *)cellForTableView:
    (UITableView *)tableView {
  UITableViewCell<IanTVCellProtocal> *cell =
      [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
  if (!cell) {
    cell = [[self.cellClass alloc] initWithStyle:self.cellStyle reuseIdentifier:self.cellIdentifier];
  }
  [cell prepareForDisplayWithValue:self.cellValue];
  [cell setNeedsUpdateConstraints];
  [cell updateConstraintsIfNeeded];
  return cell;
}
#pragma mark Getter
- (NSString *)cellIdentifier {
  if ([self isCellReusable])
    return nil;
  if (_cellIdentifier)
    return _cellIdentifier;
  return NSStringFromClass(self.cellClass);
}

@end
