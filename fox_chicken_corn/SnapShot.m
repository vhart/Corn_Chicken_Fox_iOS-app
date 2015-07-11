//
//  SnapShot.m
//  fox_chicken_corn
//
//  Created by Varindra Hart on 7/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import "SnapShot.h"

@implementation SnapShot

-(void)recordCurrentStateOfArray:(NSMutableArray *)array1 andArray:(NSMutableArray *)array2{
    
    if(recordArray1 == nil && recordArray2 == nil){
        recordArray1 = [[NSMutableArray alloc] init];
        recordArray2 = [[NSMutableArray alloc] init];
    }
    
    
    [self wipe];
    
    
    [recordArray1 addObjectsFromArray:array1];
    
    
    
    [recordArray2 addObjectsFromArray:array2];
    
    
    
}

-(void) reloadWorkingStateOfArray:(NSMutableArray *)array1 andArray:(NSMutableArray *)array2 {
    
    [array1 removeAllObjects];
    [array2 removeAllObjects];
    
    [array1 addObjectsFromArray:recordArray1];
    [array2 addObjectsFromArray:recordArray2];
    
}

-(void) wipe{
  
    [recordArray1 removeAllObjects];
    [recordArray2 removeAllObjects];
    
}



@end
