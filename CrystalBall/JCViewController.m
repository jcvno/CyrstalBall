//
//  JCViewController.m
//  CrystalBall
//
//  Created by Justin Cano on 2/17/14.
//  Copyright (c) 2014 Justin Cano. All rights reserved.
//

#import "JCViewController.h"

@interface JCViewController ()

@end

@implementation JCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.predictions = [[NSArray alloc] initWithObjects:@"It is certain",
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    int random = arc4random_uniform(self.predictions.count);
    self.predictionLabel.text = [self.predictions objectAtIndex:random];
}


@end
