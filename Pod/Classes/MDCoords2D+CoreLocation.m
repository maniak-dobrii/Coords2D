//
//  MDCoords2D+CoreLocation.m
//  Pods
//
//  Created by Mikhail Solodovnichenko on 27/05/15.
//
//

#import "MDCoords2D+CoreLocation.h"

@implementation MDCoords2D (CoreLocation)

/**
 Creates and returns a Coords2D object based on data in given CLLocationCoordinate2D, timestamp is set to 0.

 @param cllocationCoordinate2D coordinate to build Coords2D from

 @returns autoreleased (if ARC disabled) Coords2D instance.
 */
+ (instancetype) coords2DWithCLLocationCoordinate2D: (CLLocationCoordinate2D)cllocationCoordinate2D {
    return [[MDCoords2D alloc] initWithCLLocationCoordinate2D:cllocationCoordinate2D];
}


/**
 Creates and returns a Coords2D object based on data in given CLLocation, timestamp is set to time interval between timestamp
 in CLLocation and the system’s absolute reference date (the first instant of 1 January 2001, GMT).

 @param cllocation location to build Coords2D from

 @returns autoreleased (if ARC disabled) Coords2D instance.
 */
+ (instancetype) coords2DWithCLLocation: (CLLocation*)cllocation {
    return [[MDCoords2D alloc] initWithCLLocation:cllocation];
}


/**
 Initializes and returns a Coords2D object based on data in given CLLocationCoordinate2D, timestamp is set to 0.

 @param cllocationCoordinate2D coordinate to initialize Coords2D with

 @returns Coords2D instance.
 */
- (instancetype) initWithCLLocationCoordinate2D: (CLLocationCoordinate2D)cllocationCoordinate2D {
    return [self initWithLat:cllocationCoordinate2D.latitude lon:cllocationCoordinate2D.longitude];
}


/**
 Initializes and returns a Coords2D object based on data in given CLLocation, timestamp is set to time interval
 between timestamp in CLLocation and the system’s absolute reference date (the first instant of 1 January 2001, GMT).

 @param cllocation location to initialize Coords2D with

 @returns Coords2D instance.
 */
- (instancetype) initWithCLLocation: (CLLocation*)cllocation {
    return [self initWithLat:cllocation.coordinate.latitude
                         lon:cllocation.coordinate.longitude];
}


/**
 CLLocationCoordinate2D representation of stored coordinate.

 @returns CLLocationCoordinate2D made up from lat and lon values
 */
- (CLLocationCoordinate2D) cllocationCoordinate2D {
    return CLLocationCoordinate2DMake(self.lat, self.lon);
}


/**
 CLLocation representation of stored coordinate.

 @returns CLLocation made up from lat, lon and timestamp values. The altitude and horizontalAccuracy properties are set to 0,
 the verticalAccuracy property is set to -1 to indicate that the altitude value is invalid.
 */
- (CLLocation*) cllocation {
    CLLocation* cllocation = [[CLLocation alloc] initWithCoordinate:self.cllocationCoordinate2D
                                                           altitude:0
                                                 horizontalAccuracy:0
                                                   verticalAccuracy:-1
                                                          timestamp:[NSDate date]];
    return cllocation;
}

@end
