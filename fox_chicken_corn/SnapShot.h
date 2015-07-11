//
//  SnapShot.h
//  fox_chicken_corn
//
//  Created by Varindra Hart on 7/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SnapShot : NSObject{
    NSMutableArray * recordArray1;
    NSMutableArray * recordArray2;
}

@property (nonatomic) int recordCurrentIndex;

-(void) recordCurrentStateOfArray:(NSMutableArray *)array1 andArray:(NSMutableArray *)array2;
-(void) reloadWorkingStateOfArray:(NSMutableArray *)array1 andArray:(NSMutableArray *)array2;
-(void) wipe;

@end
