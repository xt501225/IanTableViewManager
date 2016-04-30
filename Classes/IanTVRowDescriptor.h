//
//  IanTVRowDescriptor.h
//  IanTableViewManager
//
//  Created by Ian Weng on 28/04/16.
//  Copyright © 2016 Ian Weng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IanTVCellProtocal.h"

@interface IanTVRowDescriptor : NSObject

@property(nonatomic) Class cellClass;
@property(nonatomic) id cellValue;
@property(nonatomic) UITableViewCellStyle cellStyle;
@property(nonatomic, getter=isCellReusable) BOOL cellReusability;
@property(nonatomic, copy) NSString *cellIdentifier;

+ (instancetype)descriptorWithCellClass:(Class)cellClass
                              cellValue:(id)cellValue;

- (__kindof UITableViewCell<IanTVCellProtocal> *)cellForTableView:
    (UITableView *)tableView;

@end
