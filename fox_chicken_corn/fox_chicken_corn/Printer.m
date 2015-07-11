//
//  Printer.m
//  fox_chicken_corn
//
//  Created by Varindra Hart on 7/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Printer.h"

@implementation Printer
-(void) printArray:(NSMutableArray *)array1  andArray:(NSMutableArray *)array2 andBoat:(NSString *)container direction:(int)direction{
    
    if(direction==0){
        printf("<<<<<<<<<<<<<<<<<");
    }
    else{
        printf(">>>>>>>>>>>>>>>>>");
    }
    
    if (direction==1){
    printf("\n\nIsland1:\n");
    for(NSString *c in array1){
        if([c isEqualToString:@"1"]){
            printf("Corn  ");
        }
        if([c isEqualToString:@"2"]){
            printf("Chicken  ");
        }
        if([c isEqualToString:@"3"]){
            printf("Fox  ");
        }
    }
    }
    else{
        printf("\n\nIsland2:\n");
        for(NSString *c in array2){
            if([c isEqualToString:@"1"]){
                printf("Corn  ");
            }
            if([c isEqualToString:@"2"]){
                printf("Chicken  ");
            }
            if([c isEqualToString:@"3"]){
                printf("Fox  ");
            }
        }

    }
    printf("\n\n");
    printf("Boat: ");
    if([container isEqualToString:@"1"]){
        printf("Corn  ");
    }
    if([container isEqualToString:@"2"]){
        printf("Chicken  ");
    }
    if([container isEqualToString:@"3"]){
        printf("Fox  ");
    }
    
    if(direction==1){
    printf("\n\nIsland2:\n");
    for(NSString *c in array2){
        if([c isEqualToString:@"1"]){
            printf("Corn  ");
        }
        if([c isEqualToString:@"2"]){
            printf("Chicken  ");
        }
        if([c isEqualToString:@"3"]){
            printf("Fox  ");
        }
    }
    }
    else{
        printf("\n\nIsland1:\n");
        for(NSString *c in array1){
            if([c isEqualToString:@"1"]){
                printf("Corn  ");
            }
            if([c isEqualToString:@"2"]){
                printf("Chicken  ");
            }
            if([c isEqualToString:@"3"]){
                printf("Fox  ");
            }
        }

    }
    printf("\n-------------------------------\n\n");
}


+(void)updatedisplay:(NSMutableArray *)array1 andArray:(NSMutableArray *)array2 andBoat:(NSString *)container direction:(int)direction{
//    for (UILabel *c in _aViewController.labelsForArray1 ){
//        c.text = @"";
//    }
//    for (UILabel *c in _aViewController.labelsForArray2 ){
//        c.text = @"";
//    }

    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        
        //Do any updates to your label here
        boatLabel.text = @"";
        
    }];
}
    

@end
