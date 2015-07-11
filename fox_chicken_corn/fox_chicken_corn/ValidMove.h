//
//  ValidMove.h
//  fox_chicken_corn
//
//  Created by Varindra Hart on 7/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValidMove : NSObject

-(BOOL) isValidArray:(NSMutableArray *)array1 length:(NSUInteger)length1 secondArray:(NSMutableArray *) array2 length: (NSUInteger)length2 index:(int)index;
@end
