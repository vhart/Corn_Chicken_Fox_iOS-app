//
//  Printer.h
//  fox_chicken_corn
//
//  Created by Varindra Hart on 7/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface Printer : NSObject
-(void) printArray:(NSMutableArray *)array1  andArray:(NSMutableArray *)array2 andBoat:(NSString *)container direction:(int)direction;
@property (nonatomic, assign) ViewController *_aViewController;

//+ (void)updatedisplay:(NSMutableArray *)array1  andArray:(NSMutableArray *)array2 andBoat:(NSString *)container direction:(int)direction;



//-(void)
@end
