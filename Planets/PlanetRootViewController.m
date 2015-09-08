//
//  PlanetRootViewController.m
//  Planets
//
//  Created by Justine Gartner on 8/13/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import "PlanetRootViewController.h"
#import "PlanetDetailViewController.h"
#import "PlanetsData.h"
#import "Planets.h"


@interface PlanetRootViewController ()

@property (nonatomic) NSMutableArray *planets;
@property (nonatomic) PlanetsData *model;

@end

@implementation PlanetRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[PlanetsData alloc] init];
    [self.model setUpPlanetData];
    
    
}


- (IBAction)saturnButtonTapped:(UIButton *)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    //self.storyboard is the shorthand for the above that can be used in the line below in replace of the "storyboard" pointer to the above
    
    PlanetDetailViewController *detailVC = [storyboard instantiateViewControllerWithIdentifier:@"planetDetailViewController"];
    
    detailVC.planet = self.model.saturn;
    
    [self.navigationController pushViewController:detailVC animated:YES];
    
    
}


@end
