//
//  JCCrystalBall.m
//  CrystalBall
//
//  Created by Justin Cano on 2/17/14.
//  Copyright (c) 2014 Justin Cano. All rights reserved.
//

#import "JCCrystalBall.h"

@implementation JCCrystalBall

-(NSArray*) predictions {
    if( _predictions == nil ) {
        _predictions = [[NSArray alloc] initWithObjects:@"It is certain",
                     @"It is decidedly so",
                     @"All signs say YES",
                     @"The stars are not aligned",
                     @"My reply is no",
                     @"It is doubtful",
                     @"Better not tell you now",
                     @"Concentrate and ask again",
                     @"Unable to answer now",
                     @"Maybe, yes", nil];

    }
    
    return _predictions;
}

-(NSString*) randomPrediction {
    int random = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:random];
}


@end
