//
//  MDCoords2D+CoreLocation.h
//  Pods
//
//  Created by Mikhail Solodovnichenko on 27/05/15.
//
//

#import "MDImmutableCoords2D.h"
#import <CoreLocation/CoreLocation.h>
#import "CLLocation+MDCoords2D.h"


@interface MDCoords2D (CoreLocation)
/**
 *  Creates and returns CLLocationCoordinate2D based on lattitude and longitude.
 */
@property (nonatomic, readonly) CLLocationCoordinate2D cllocationCoordinate2D;

/**
 *  Creates and returns CLLocation instance based on lattitude and longitude.
 *
 *  @note altitude and horizontalAccuracy properties are set to 0,
 *  verticalAccuracy property is set to -1 to indicate that the altitude value is invalid.
 *  @note timestamp is set to now.
 */
@property (nonatomic, readonly) CLLocation *cllocation;


/**
 *  Creates and returns coords2D instance based on CLLocationCoordinate2D value.
 *
 *  @param cllocationCoordinate2D Struct which values are to be used for lattitude and longitude.
 *
 *  @return Newly created coords2D instance.
 */
+ (instancetype)coords2DWithCLLocationCoordinate2D:(CLLocationCoordinate2D)cllocationCoordinate2D;

/**
 *  Creates and returns coords2D instance based on values from CLLocation instance.
 *
 *  @param cllocation Instance, which values are to be used for lattitude and longitude. If this parameter is nil
 *                    returns nil.
 *
 *  @return Initialized coords2D instance.
 */
+ (instancetype)coords2DWithCLLocation:(CLLocation *)cllocation;

/**
 *  Initializes coords2D instance based on CLLocationCoordinate2D value.
 *
 *  @param cllocationCoordinate2D Struct which values are to be used for lattitude and longitude.
 *
 *  @return Initialized coords2D instance.
 */
- (instancetype)initWithCLLocationCoordinate2D:(CLLocationCoordinate2D)cllocationCoordinate2D;

/**
 *  Initializes coords2D instance based on latitude and longitude values from CLLocation instance.
 *
 *  @param cllocation Instance, which values are to be used for lattitude and longitude.  If this parameter is nil
 *                    returns nil.
 *
 *  @return Initialized coords2D instance.
 */
- (instancetype)initWithCLLocation:(CLLocation *)cllocation;
@end
