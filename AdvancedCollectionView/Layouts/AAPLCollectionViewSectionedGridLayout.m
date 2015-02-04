//
//  AAPLCollectionViewSectionedGridLayout.m
//  AdvancedCollectionView
//
//  Created by Robert Biehl on 29/01/2015.
//  Copyright (c) 2015 Apple. All rights reserved.
//

#import "AAPLCollectionViewSectionedGridLayout.h"

@interface AAPLCollectionViewSectionedGridLayout()

@property (nonatomic, strong) NSMutableArray* layouts;

@end

@implementation AAPLCollectionViewSectionedGridLayout

- (void) setLayout:(UICollectionViewLayout*) layout forSection:(NSInteger) section{
    [self.layouts insertObject:layout atIndex:section];
}

- (UICollectionViewLayout*) layoutForSection: (NSInteger) section{
    return [self.layouts objectAtIndex:section];
}

@end
