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
    Printer *printHandler;
        
}

-(instancetype)initGame{
    
    if(self =[self init]){
        moveValidation = [[ValidMove alloc] init];
        stateTracker = [[SnapShot alloc] init];
        printHandler = [[Printer alloc] init];
        
    }
    
    return self;
}


-(void)playWithIndex:(int)index {
    
    
    [stateTracker recordCurrentStateOfArray:self.array1 andArray:self.array2];
        if(index==1){
            for(int i = 0; i <= self.array1.count; i++ ){
                self.container = [NSString stringWithFormat:@""];
                
                if(i==self.array1.count){
                    
                    if( [moveValidation isValidArray:self.array1 length:self.array1.count secondArray:self.array2 length:self.array2.count index:index]){
                        
                        [printHandler printArray:self.array1 andArray:self.array2 andBoat:self.container direction:index];
                        break;
                    }
                }
                
                else{
                    
                    self.container = [NSString stringWithFormat:@"%@",[self.array1 objectAtIndex:i]];
                    
                    [self.array1 removeObjectAtIndex:i];
                    
                    if([moveValidation isValidArray:self.array1 length:self.array1.count secondArray:self.array2 length:self.array2.count index:index]){
                        
                        [self.array2 addObject:[NSString stringWithString:self.container]];
                        [stateTracker recordCurrentStateOfArray:self.array1 andArray:self.array2];
                        [printHandler printArray:self.array1 andArray:self.array2 andBoat:self.container direction:index];
                        break;
                    }
                    else{
                        
                        [stateTracker reloadWorkingStateOfArray:self.array1 andArray:self.array2];
                        continue;
                    }
                    
                    
                }
                
            }
        }
        
        
        if(index==0){
            for(int i =0; i <= self.array2.count ; i++ ){
                self.container = [NSString stringWithFormat:@""];
                
                if(i==0){
                    
                    if( [moveValidation isValidArray:self.array1 length:self.array1.count secondArray:self.array2 length:self.array2.count index:index]){
                        
                        [printHandler printArray:self.array1 andArray:self.array2 andBoat:self.container direction:index];
                        break;
                    }
                }
                
                else{
                    
                    self.container = [NSString stringWithFormat:@"%@",[self.array2 objectAtIndex:i-1]];
                    
                    [self.array2 removeObjectAtIndex:i-1];
                    
                    if([moveValidation isValidArray:self.array1 length:self.array1.count secondArray:self.array2 length:self.array2.count index:index]){
                        [self.array1 addObject:[NSString stringWithString:self.container]];
                        [stateTracker recordCurrentStateOfArray:self.array1 andArray:self.array2];
                        [printHandler printArray:self.array1 andArray:self.array2 andBoat:self.container direction:index];
                        
                        break;
                    }
                    else{
                        [stateTracker reloadWorkingStateOfArray:self.array1 andArray:self.array2];
                        continue;
                    }
                    
                    
                }
                
            }
        }
        
        
        
    }
    






@end
