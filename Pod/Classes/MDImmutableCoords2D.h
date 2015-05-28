//
//  Coords2D.h
//
//  Created by MANIAK_dobrii on 9/22/12.
//  Copyright (c) 2012 MANIAK_dobrii. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 MDCoords2D
 
 Convenience class for storing location as NSObject subclass.
 Could be used with archievers, as far as it supports NSCoding.
 
 Stores only lattitude and longitude.
 
 */

@interface MDCoords2D : NSObject <NSSecureCoding, NSCopying>
{
    double _lat; // lattitude
    double _lon; // longitude
}


@property (nonatomic, assign, readonly) double lat;
@property (nonatomic, assign, readonly) double lon;


+ (instancetype)coords2DWithLat:(double)lat lon:(double)lon;
- (instancetype)initWithLat:(double)lat lon:(double)lon;

@end
