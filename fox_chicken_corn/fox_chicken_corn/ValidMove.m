//
//  ValidMove.m
//  fox_chicken_corn
//
//  Created by Varindra Hart on 7/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import "ValidMove.h"
#import "SnapShot.h"


@implementation ValidMove
-(BOOL) isValidArray:(NSMutableArray *)array1 length:(NSUInteger)length1 secondArray:(NSMutableArray *)array2 length:(NSUInteger)length2 index:(int)index{
    
    if(((length1 == 0 || length1==1)&& index==1) || ((length2==0 || length2==1) && index==0)){
        return YES;
    }
    
    if(length1 == 3 && index==1){
        return NO;
    }
    
    switch (index) {
        case 1:{
            
            for (int i =0; i < length1-1 ; i++){
                for (int j = i+1; j < length1; j++){
                    if (abs([[array1 objectAtIndex:i] intValue] - [[array1 objectAtIndex:j] intValue]) == 1){
                        return NO;
                    }
                }
            }
            
            break;
            
        }
            
        case 0:{
            for (int i =0; i < length2-1 ; i++){
                for (int j = i+1; j < length2; j++){
                    if (abs([[array2 objectAtIndex:i] intValue] - [[array2 objectAtIndex:j] intValue]) == 1){
                        return NO;
                    }
                }
            }
            break;
            
        }
            
            
            
        default:
            return YES;
            
    }
    
    return YES;
}

@end
