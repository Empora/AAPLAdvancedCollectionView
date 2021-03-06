[![Build Status](https://travis-ci.org/Empora/AAPLAdvancedCollectionView.svg?branch=feature%2FFFX-1210-sticky-footer)](https://travis-ci.org/Empora/AAPLAdvancedCollectionView)
 
# Advanced User Interfaces Using Collection View

This example demonstrates code factoring approaches to UICollectionViewDataSource that allow developers to compose complex and rich data models. In addition, the sample implements swipe to edit, batch editing including drag reordering, and a sophisticated custom UICollectionViewLayout that features pinning headers, global headers, and loading placeholders.

# Changelog

## 1.1.30
Fixed issue where whenLoaded would be called too early after resetContent

## 1.1.28
Fixed Issues where pinnableY prevented headers from leaving the screen completely 

## 1.1.27
Fixed logic in buildlayout that caused wrong layouting  

## 1.1.26
Segmented DataSource shows placeholder view on initial load

## 1.1.25
Fixed issue where AAPLSegmentedDataSource would not forward loading state from sub-datasources

## 1.1.24
 Fixed issue where AAPLSegmentedDataSource would not forward AAPLDataSource's - ````(void)whenLoaded:(dispatch_block_t)block````

## 1.1.23
 Added invalidateLayoutMetrics method to AAPLCollectionViewGridLayout. Use invalidateLayoutMetrics instead of invalidateLayout to ensure a correct re-layouting behaviour.

## 1.1.22
 Bugfixes

## 1.1.17
 Fixed issue where pinnable header's pinned state was animated right after prepareForReuse, leading to visual glitches.

## 1.1.16
 Fixed issue with AAPLSwipeToEditStateMachine still receiving gesture messages after being deallocated.

## 1.1.13
AAPLCollectionViewController registers reusable views as soon as the datasource changed.

## 1.1.12
Headers and footers can be optionally layouted along the cells within a section, adhering to interItemSpacing and section insets. Before headers and footers always were layouted outside of the section.

## 1.1.11
Support for pinned footers. As opposed topinned headers, pinned footers stick to the bottom of the screen if they would otherwise be hidden below the viewport.
 
## 1.1.10
Better support for empty/error views with button actions.

## Requirements

### Build

iOS 8 SDK

### Runtime

iOS 8

Copyright (C) 2014 Apple Inc. All rights reserved.

