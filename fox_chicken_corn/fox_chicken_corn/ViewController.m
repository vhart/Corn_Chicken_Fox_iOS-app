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
@property (nonatomic) NSTimer *timer;
@property (nonatomic, strong) IBOutletCollection(UILabel) NSArray *labelsForArray1;
@property (nonatomic, strong) IBOutletCollection(UILabel) NSArray *labelsForArray2;
@property (nonatomic, strong) IBOutlet UILabel *directionLabel;
@property (nonatomic, strong) IBOutlet UILabel *boatLabel;
- (void) wipe;
- (void) loadLabels;
- (NSString *) convertToStringDisplay:(NSString *)string;
@end

@implementation ViewController{
    GameLogic * game;
    Printer *printHandler;
    NSMutableArray *array1;
    NSMutableArray *array2;
    NSString *container;
    int index;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    game = [[GameLogic alloc] initGame];
    
    array1 = [[NSMutableArray alloc] initWithObjects:@"1",@"2", @"3", nil];
    array2 = [[NSMutableArray alloc] init];
    game.array1 =  array1;
    game.array2 =  array2;
    container = @"";
    index =1;
    [printHandler printArray:array1 andArray:array2 andBoat:container direction:index];
    [self wipe];
    [self loadLabels];
    
    printHandler._aViewController = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)play:(UIButton *)sender {
    self.timer = [NSTimer timerWithTimeInterval:2.5 target:self selector:@selector(updateLabels) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode: NSDefaultRunLoopMode];
    
}

-(void) updateLabels{
    if(array2.count!=3){
        [game playWithIndex:index];
        
        [self wipe];
        container = [NSString stringWithFormat:@"%@",game.container];
        
        [self loadLabels];
        
        

        index = (index+1)%2;
        usleep(3e5);
    }
    else{
        if(array2.count==3){
            self.boatLabel.text = [NSString stringWithFormat:@""];
        }
        [self.timer invalidate];
    }
    
}
- (void)wipe{
    
    for (UILabel *c in self.labelsForArray1){
        c.text = [NSString stringWithFormat:@""];
    }
    for (UILabel *c in self.labelsForArray2){
        c.text = [NSString stringWithFormat:@""];
    }
    
    self.boatLabel.text = [NSString stringWithFormat:@""];
    
    
}

- (void)loadLabels{
    int i = 0;
    NSLog(@"ARRAY1: %lu",array1.count);
    
    for(NSString *c in array1){
        NSString *display = [self convertToStringDisplay:c];
        UILabel * l =[self.labelsForArray1 objectAtIndex:i];
        NSLog(@"%@",l.text);
        l.text = [NSString stringWithFormat:@"%@",display];
        i++;
        
    }
    
    self.boatLabel.text = [self convertToStringDisplay:container];
    NSLog(@"%@",container);
    NSLog(@"ARRAY2: %lu",array2.count);
    int j=0;
    for(NSString *c in array2){
        NSString *display = [self convertToStringDisplay:c];
        UILabel*l = [self.labelsForArray2 objectAtIndex:j];
        l.text = [NSString stringWithFormat:@"%@",display];
        j++;
        
    }
    
    if(index == 1){
        self.directionLabel.text = [NSString stringWithFormat:@"--->"];
    }
    else{
        self.directionLabel.text = [NSString stringWithFormat:@"<---"];
    }
}



- (NSString *)convertToStringDisplay:(NSString *)string{
    NSString *display;
    if([string isEqualToString:@"1"]){
        display = [NSString stringWithFormat:@"Corn"];
    }
    if([string isEqualToString:@"2"]){
        display = [NSString stringWithFormat:@"Chicken"];
    }
    if([string isEqualToString:@"3"]){
        display = [NSString stringWithFormat:@"Fox"];
    }
    
    return display;
    
}

@end
