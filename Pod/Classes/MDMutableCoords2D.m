//
//  MDMutableCoords2D.m
//  Pods
//
//  Created by Mikhail Solodovnichenko on 31/05/15.
//
//

#import "MDMutableCoords2D.h"

@implementation MDMutableCoords2D
@dynamic lat, lon;

- (instancetype)init
{
    self = [super init];

    if(self != nil)
    {
        _lat = 0;
        _lon = 0;
    }

    return self;
}

- (void)setLat:(double)lat
{
    _lat = lat;
}

- (void)setLon:(double)lon
{
    _lon = lon;
}
@end
