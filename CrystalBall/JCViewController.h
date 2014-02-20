//
//  JCViewController.h
//  CrystalBall
//
//  Created by Justin Cano on 2/17/14.
//  Copyright (c) 2014 Justin Cano. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JCCrystalBall;

@interface JCViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong,nonatomic) JCCrystalBall *crystalBall;

-(void) makePrediction;

@end
