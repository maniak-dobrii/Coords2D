//
//  Coords2D.m
//
//  Created by MANIAK_dobrii on 9/22/12.
//  Copyright (c) 2012 MANIAK_dobrii. All rights reserved.
//

#import "MDImmutableCoords2D.h"

#define fequal(a,b) (fabs((a) - (b)) < FLT_EPSILON)
#define fequalzero(a) (fabs(a) < FLT_EPSILON)

#define MDUINT_BIT (CHAR_BIT * sizeof(NSUInteger))
#define MDUINTROTATE(val, howmuch) ((((NSUInteger)val) << howmuch) | (((NSUInteger)val) >> (MDUINT_BIT - howmuch)))

@implementation MDCoords2D
@synthesize lat = _lat,
            lon = _lon;


+ (instancetype)coords2DWithLat:(double)lat lon:(double)lon
{
    return [[self alloc] initWithLat:lat lon:lon];
}

- (instancetype)initWithLat:(double)lat lon:(double)lon
{
    self = [super init];

    if(self != nil)
    {
        _lat = lat;
        _lon = lon;
    }

    return self;
}



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - NSCopying
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)copyWithZone:(NSZone *)zone
{
    // it (will) have mutable version
    return [[[self class] alloc] initWithLat:self.lat lon:self.lon];
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - NSSecureCoding
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
+ (BOOL)supportsSecureCoding
{
    return YES;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    double lat = [aDecoder decodeDoubleForKey:@"lat"];
    double lon = [aDecoder decodeDoubleForKey:@"lon"];

    return [self initWithLat:lat lon:lon];
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeDouble:self.lat forKey:@"lat"];
    [aCoder encodeDouble:self.lon forKey:@"lon"];
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Equality
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)isEqual:(id)object
{
    if(self == object)
    {
        return YES;
    }

    if(object == nil)
    {
        return NO;
    }

    if([object isKindOfClass:[MDCoords2D class]] == NO)
    {
        return NO;
    }

    return [self isEqualToMDCoords2D:object];
}

- (NSUInteger)hash
{
    return MDUINTROTATE([@(_lat) hash], MDUINT_BIT / 2) ^ [@(_lon) hash];
}

- (BOOL)isEqualToMDCoords2D:(MDCoords2D *)otherArgument
{
    return fequal(self.lat, otherArgument.lat) && fequal(self.lon, otherArgument.lon);
}


@end
