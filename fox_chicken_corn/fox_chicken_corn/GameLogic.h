//
//  GameLogic.h
//  fox_chicken_corn
//
//  Created by Varindra Hart on 7/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printer.h"
#import "SnapShot.h"
#import "ValidMove.h"
#import "ViewController.h"

@interface GameLogic : NSObject

@property (nonatomic) NSString *container;
@property (nonatomic) NSMutableArray *array1;
@property (nonatomic) NSMutableArray *array2;
-(instancetype)initGame;
-(void)playWithIndex:(int)index;
@end
