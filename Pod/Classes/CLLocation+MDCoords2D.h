//
//  CLLocation+MDCoords2D.h
//
//  Created by MANIAK_dobrii on 5/8/13.
//  Copyright (c) 2013 MANIAK_dobrii. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
@class MDCoords2D;

@interface CLLocation (Coords2D)
/**
 *  Creates and returns Coords2D instance based on lattitude and longitude.
 *
 *  @return Newly created Coords2D instance.
 */
- (MDCoords2D *)coords2D;
@end
