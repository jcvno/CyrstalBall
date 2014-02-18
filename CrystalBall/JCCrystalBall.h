//
//  JCCrystalBall.h
//  CrystalBall
//
//  Created by Justin Cano on 2/17/14.
//  Copyright (c) 2014 Justin Cano. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JCCrystalBall : NSObject {
    NSArray *_predictions;
}

@property (nonatomic,strong, readonly) NSArray *predictions;

-(NSString*) randomPrediction;

@end
