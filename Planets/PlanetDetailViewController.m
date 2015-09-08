//
//  PlanetDetailViewController.m
//  Planets
//
//  Created by Justine Gartner on 8/13/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import "PlanetDetailViewController.h"


@interface PlanetDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *planetNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *orbitalSpeedLabel;
@property (weak, nonatomic) IBOutlet UILabel *axisTiltLabel;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@end

@implementation PlanetDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *selectedPlanetName = self.planet.name;
    self.planetNameLabel.text = selectedPlanetName;
    
    NSString *lowercaseImageName = [selectedPlanetName lowercaseString];
    self.backgroundImageView.image = [UIImage imageNamed:lowercaseImageName];
    
    NSString *orbitalSpeed = @"Orbital Speed: ";
    NSString *orbitalSpeedLabel = self.planet.orbitalSpeed;
    
    self.orbitalSpeedLabel.text =  [orbitalSpeed stringByAppendingString:orbitalSpeedLabel];
    
    NSString *axisTilt = @"Axis Tilt: ";
    NSString *axisTiltLabel = self.planet.axisTilt;
    
    self.axisTiltLabel.text = [axisTilt stringByAppendingString:axisTiltLabel];

}


@end
