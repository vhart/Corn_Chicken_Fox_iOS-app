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
@property (nonatomic) Printer *printHandler;
-(instancetype)initGame;
-(void)play;
@end
