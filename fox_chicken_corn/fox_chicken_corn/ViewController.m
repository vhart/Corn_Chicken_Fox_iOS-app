//
//  ViewController.m
//  fox_chicken_corn
//
//  Created by Varindra Hart on 7/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import "ViewController.h"
#import "SnapShot.h"
#import "ValidMove.h"
#import "GameLogic.h"
#import "Printer.h"



@interface ViewController ()
@property (nonatomic, strong) IBOutletCollection(UILabel) NSArray *labelsForArray1;
@property (nonatomic, strong) IBOutletCollection(UILabel) NSArray *labelsForArray2;
@property (nonatomic, strong) IBOutlet UILabel *directionLabel;
@property (nonatomic, strong) IBOutlet UILabel *boatLabel;

@end

@implementation ViewController{
    GameLogic * game;
    Printer *printHandler;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    game = [[GameLogic alloc] initGame];
    printHandler = [[Printer alloc] init];
    printHandler._aViewController = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)play:(UIButton *)sender {
    [game play];
    }









@end
