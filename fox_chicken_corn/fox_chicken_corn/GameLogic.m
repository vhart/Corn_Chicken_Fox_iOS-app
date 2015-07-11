//
//  GameLogic.m
//  fox_chicken_corn
//
//  Created by Varindra Hart on 7/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "GameLogic.h"

@implementation GameLogic{
    ValidMove *moveValidation;
    SnapShot *stateTracker;
    NSMutableArray *array1;
    NSMutableArray *array2;
    NSString *container;
    int index;
    
}

-(instancetype)initGame{
    
    if(self =[self init]){
        moveValidation = [[ValidMove alloc] init];
        stateTracker = [[SnapShot alloc] init];
        array1 = [[NSMutableArray alloc] initWithObjects:@"1",@"2", @"3", nil];
        array2 = [[NSMutableArray alloc] init];
        container = @"";
        index =1;
        [self.printHandler printArray:array1 andArray:array2 andBoat:container direction:index];

    }
    
    return self;
}


-(void)play{
    
    
    [stateTracker recordCurrentStateOfArray:array1 length:(int)array1.count andArray:array2 length:(int)array2.count];
    
    while(array2.count!=3){
        if(index==1){
            for(int i = 0; i <= array1.count; i++ ){
                container = [NSString stringWithFormat:@""];
                
                if(i==array1.count){
                    
                    if( [moveValidation isValidArray:array1 length:(int)array1.count secondArray:array2 length:(int)array2.count index:index]){
                        [self.printHandler printArray:array1 andArray:array2 andBoat:container direction:index];
                        break;
                    }
                }
                
                else{
                    
                    container = [NSString stringWithFormat:@"%@",[array1 objectAtIndex:i]];
                    
                    [array1 removeObjectAtIndex:i];
                    
                    if([moveValidation isValidArray:array1 length:(int)array1.count secondArray:array2 length:(int)array2.count index:index]){
                        [array2 addObject:[NSString stringWithString:container]];
                        [stateTracker recordCurrentStateOfArray:array1 length:(int)array1.count andArray:array2 length:(int)array2.count];
                        [self.printHandler printArray:array1 andArray:array2 andBoat:container direction:index];
                        break;
                    }
                    else{
                        [stateTracker reloadWorkingStateOfArray:array1 andArray:array2];
                        continue;
                    }
                    
                    
                }
                
            }
        }
        
        
        if(index==0){
            for(int i =0; i <= array2.count ; i++ ){
                container = [NSString stringWithFormat:@""];
                
                if(i==0){
                    
                    if( [moveValidation isValidArray:array1 length:(int)array1.count secondArray:array2 length:(int)array2.count index:index]){
                        [self.printHandler printArray:array1 andArray:array2 andBoat:container direction:index];
                        break;
                    }
                }
                
                else{
                    
                    container = [NSString stringWithFormat:@"%@",[array2 objectAtIndex:i-1]];
                    
                    [array2 removeObjectAtIndex:i-1];
                    
                    if([moveValidation isValidArray:array1 length:(int)array1.count secondArray:array2 length:(int)array2.count index:index]){
                        [array1 addObject:[NSString stringWithString:container]];
                        [stateTracker recordCurrentStateOfArray:array1 length:(int)array1.count andArray:array2 length:(int)array2.count];
                        [self.printHandler printArray:array1 andArray:array2 andBoat:container direction:index];
                        
                        break;
                    }
                    else{
                        [stateTracker reloadWorkingStateOfArray:array1 andArray:array2];
                        continue;
                    }
                    
                    
                }
                
            }
        }
        
        index = (index+1)%2;
        usleep(3e5);
        
    }
    
}





@end
