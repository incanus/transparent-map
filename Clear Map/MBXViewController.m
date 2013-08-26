//
//  MBXViewController.m
//  Clear Map
//
//  Created by Justin R. Miller on 8/26/13.
//  Copyright (c) 2013 MapBox. All rights reserved.
//

#import "MBXViewController.h"

#import <MapBox/MapBox.h>

@implementation MBXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    RMMapView *mapView = [[RMMapView alloc] initWithFrame:CGRectMake(100, 100, self.view.bounds.size.width - 200, self.view.bounds.size.height - 200)];
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:mapView];
}

@end
