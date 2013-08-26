//
//  MBXViewController.m
//  Clear Map
//
//  Created by Justin R. Miller on 8/26/13.
//  Copyright (c) 2013 MapBox. All rights reserved.
//

#import "MBXViewController.h"

#import <BlocksKit/BlocksKit.h>
#import <MapBox/MapBox.h>

@implementation MBXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithWhite:0 alpha:0.25];

    self.view.opaque = NO;
    RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:[[RMMapBoxSource alloc] initWithMapID:@"justin.clear_map"]];
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    mapView.showLogoBug = NO;
    mapView.hideAttribution = YES;
    [self.view addSubview:mapView];

    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(self.view.bounds.size.width - 200, 50, 150, 50)];
    slider.minimumValue = 0;
    slider.maximumValue = 1;
    slider.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleBottomMargin;
    [slider addEventHandler:^(id sender)
    {
        self.view.backgroundColor = [UIColor colorWithWhite:0 alpha:((UISlider *)sender).value];
    } forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
}

@end
