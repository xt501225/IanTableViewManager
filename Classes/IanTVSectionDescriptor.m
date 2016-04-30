//
//  IanTVSectionDescriptor.m
//  IanTableViewManager
//
//  Created by Ian Weng on 28/04/16.
//  Copyright © 2016 Ian Weng. All rights reserved.
//

#import "IanTVSectionDescriptor.h"

@implementation IanTVSectionDescriptor

- (instancetype)init{
    self = [super init];
    if(self){
        _headerHeight = 20;
        _rowDescriptors = [NSMutableArray<IanTVRowDescriptor *> new];
    }
    return self;
}

- (NSUInteger)numberOfRows{
    return [_rowDescriptors count];
}

- (void)addRowDescriptor:(IanTVRowDescriptor *)rowDescriptor{
    [_rowDescriptors addObject:rowDescriptor];
}

- (void)addRowDescriptors:(NSArray<IanTVRowDescriptor *> *)rowDescriptors{
    [_rowDescriptors addObjectsFromArray:rowDescriptors];
}

@end
