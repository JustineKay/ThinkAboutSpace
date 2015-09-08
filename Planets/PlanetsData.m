//
//  PlanetsData.m
//  Planets
//
//  Created by Justine Gartner on 8/13/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import "PlanetsData.h"
#import "Planets.h"

@implementation PlanetsData

-(void)setUpPlanetData{
    
    self.saturn = [[Planets alloc] init];
    self.saturn.name = @"Saturn";
    self.saturn.orbitalSpeed = @"9.69";
    self.saturn.axisTilt = @"26.73";
    
    
    
    NSLog(@"%@", self.saturn);
    
    
}

@end
