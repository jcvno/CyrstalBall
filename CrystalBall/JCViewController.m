//
//  JCViewController.m
//  CrystalBall
//
//  Created by Justin Cano on 2/17/14.
//  Copyright (c) 2014 Justin Cano. All rights reserved.
//

#import "JCViewController.h"
#import "JCCrystalBall.h"

@interface JCViewController ()

@end

@implementation JCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.crystalBall = [[JCCrystalBall alloc] init];
    
    UIImage *backgroundImage = [UIImage imageNamed:@"background"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:backgroundImage];
    [self.view insertSubview:imageView atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Prediction

-(void) makePrediction {
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}

#pragma mark - Motion Events

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if( motion == UIEventSubtypeMotionShake ) {
        [self makePrediction];
    }
}

-(void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion cancelled");
}

#pragma mark - Touch Events

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches cancelled");
}


@end
