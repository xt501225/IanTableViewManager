//
//  IanTVSectionDescriptor.h
//  IanTableViewManager
//
//  Created by Ian Weng on 28/04/16.
//  Copyright © 2016 Ian Weng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IanTVRowDescriptor.h"

@interface IanTVSectionDescriptor : NSObject

@property(nonatomic, strong)
    NSMutableArray<IanTVRowDescriptor *> *rowDescriptors;
@property(nonatomic) CGFloat headerHeight;

- (NSUInteger)numberOfRows;
- (void)addRowDescriptor:(IanTVRowDescriptor *)rowDescriptor;
- (void)addRowDescriptors:(NSArray<IanTVRowDescriptor *> *)rowDescriptors;

@end
