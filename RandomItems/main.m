//
//  main.m
//  RandomItems
//
//  Created by elliott chavis on 10/28/15.
//  Copyright (c) 2015 elliott chavis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        id lastObj = [items lastObject];
        
        // lastObj is an instance of BNRItem and will not understand the count message
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        
        
        // Destroy the mutable array object
        items = nil;


    }
    return 0;
}
