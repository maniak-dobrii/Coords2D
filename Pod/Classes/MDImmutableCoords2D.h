//
//  Coords2D.h
//
//  Created by MANIAK_dobrii on 9/22/12.
//  Copyright (c) 2012 MANIAK_dobrii. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *   MDCoords2D is a convenience class for storing geographical location as NSObject subclass.
 *   Could be used with archievers, as it supports NSSecureCoding.
 *
 *   MDCoords2D is immutable and could be used as a key in hash tables.
 *   There's also mutable MDMutableCoords2D counterpart.
 *
 *   Stores only lattitude and longitude as a double (so that NSCoding implementation is simple and effective).
 */


@interface MDCoords2D : NSObject <NSSecureCoding, NSCopying, NSMutableCopying>
{
@protected
    double _lat; // lattitude
    double _lon; // longitude
}

/**
 *  Lattitude coordinate component in degrees.
 */
@property (nonatomic, assign, readonly) double lat;
/**
 *  Longitude coordinate component in degrees.
 */
@property (nonatomic, assign, readonly) double lon;

- (instancetype)init __unavailable;

/**
 *  Creates and returns 2D coords instance with specified lattitude and longitude.
 *
 *  @param lattitude Lattitude coordinate component.
 *  @param longitude Longitude coordinate component.
 *
 *  @return Newly created coords2D instance.
 */
+ (instancetype)coords2DWithLat:(double)lattitude lon:(double)longitude;

/**
 *  Initializes 2D coords instance with specified lattitude and longitude.
 *
 *  @param lattitude Lattitude coordinate component.
 *  @param longitude Longitude coordinate component.
 *
 *  @return Initialized coords2D instnce.
 */
- (instancetype)initWithLat:(double)lattitude lon:(double)longitude;

/**
 *  Initializes 2D coords instance based on (same lat/lon) other 2D coords instance.
 *
 *  @param coords2D Instance to be used to set lattitude and longitude.
 *
 *  @return Initialized coords2D instance.
 */
- (instancetype)initWithCoords2D:(MDCoords2D *)coords2D;

@end
