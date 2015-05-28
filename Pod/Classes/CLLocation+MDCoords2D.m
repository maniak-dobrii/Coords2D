//
//  CLLocation+MDCoords2D.m
//
//  Created by MANIAK_dobrii on 5/8/13.
//  Copyright (c) 2013 MANIAK_dobrii. All rights reserved.
//

#import "CLLocation+MDCoords2D.h"
#import "MDCoords2D+CoreLocation.h"

@implementation CLLocation (Coords2D)
- (MDCoords2D*) coords2D {
    return [MDCoords2D coords2DWithCLLocation:self];
}
@end
