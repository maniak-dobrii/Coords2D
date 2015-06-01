//
//  Coords2D.m
//
//  Created by MANIAK_dobrii on 9/22/12.
//  Copyright (c) 2012 MANIAK_dobrii. All rights reserved.
//

#import "MDImmutableCoords2D.h"
#import "MDMutableCoords2D.h"

#define fequal(a,b) (fabs((a) - (b)) < FLT_EPSILON)
#define fequalzero(a) (fabs(a) < FLT_EPSILON)

// https://www.mikeash.com/pyblog/friday-qa-2010-06-18-implementing-equality-and-hashing.html
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

- (instancetype)initWithCoords2D:(MDCoords2D *)coords2D
{
    self = [super init];

    if(self != nil)
    {
        _lat = coords2D.lat;
        _lon = coords2D.lon;
    }

    return self;
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - NSCopying & NSMutableCopying
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)copyWithZone:(NSZone *)zone
{
    return [[MDCoords2D alloc] initWithLat:self.lat lon:self.lon];
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    return [[MDMutableCoords2D alloc] initWithLat:self.lat lon:self.lon];
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
    double lat = [aDecoder decodeDoubleForKey:@"t"];
    double lon = [aDecoder decodeDoubleForKey:@"n"];

    return [self initWithLat:lat lon:lon];
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeDouble:self.lat forKey:@"t"];
    [aCoder encodeDouble:self.lon forKey:@"n"];
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
