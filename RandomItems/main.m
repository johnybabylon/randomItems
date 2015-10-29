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
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        [items insertObject:@"four" atIndex:4];

        
        
        // For every item in the items array ...
        for (NSString *item in items) {
            // Log the description of the item
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                           valueInDollars:100
                                             serialNumber:@"A1B2C"];
        
        
        // The %@ token is replaced with the result of sending
        // the description message to the corresponding argument
        NSLog(@"%@", item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoName);
        

        
        
        
        // Destroy the mutable array object
        items = nil;


    }
    return 0;
}
