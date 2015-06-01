//
//  MDCoords2D+CoreLocation.m
//  Pods
//
//  Created by Mikhail Solodovnichenko on 27/05/15.
//
//

#import "MDCoords2D+CoreLocation.h"

@implementation MDCoords2D (CoreLocation)

+ (instancetype)coords2DWithCLLocationCoordinate2D:(CLLocationCoordinate2D)cllocationCoordinate2D
{
    return [[self alloc] initWithCLLocationCoordinate2D:cllocationCoordinate2D];
}

+ (instancetype)coords2DWithCLLocation:(CLLocation *)cllocation
{
    return [[self alloc] initWithCLLocation:cllocation];
}

- (instancetype)initWithCLLocationCoordinate2D:(CLLocationCoordinate2D)cllocationCoordinate2D
{
    return [self initWithLat:cllocationCoordinate2D.latitude lon:cllocationCoordinate2D.longitude];
}

- (instancetype)initWithCLLocation:(CLLocation *)cllocation
{
    if(cllocation == nil) return nil;
    return [self initWithLat:cllocation.coordinate.latitude lon:cllocation.coordinate.longitude];
}

- (CLLocationCoordinate2D)cllocationCoordinate2D
{
    return CLLocationCoordinate2DMake(self.lat, self.lon);
}

- (CLLocation *)cllocation
{
    CLLocation *cllocation = [[CLLocation alloc] initWithCoordinate:self.cllocationCoordinate2D
                                                           altitude:0
                                                 horizontalAccuracy:0
                                                   verticalAccuracy:-1
                                                          timestamp:[NSDate date]];
    return cllocation;
}

@end
