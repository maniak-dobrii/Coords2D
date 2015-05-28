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
@property (nonatomic, readonly) CLLocationCoordinate2D cllocationCoordinate2D;
@property (nonatomic, readonly) CLLocation* cllocation;

+ (instancetype) coords2DWithCLLocationCoordinate2D: (CLLocationCoordinate2D)cllocationCoordinate2D;
+ (instancetype) coords2DWithCLLocation: (CLLocation*)cllocation;

- (instancetype) initWithCLLocationCoordinate2D: (CLLocationCoordinate2D)cllocationCoordinate2D;
- (instancetype) initWithCLLocation: (CLLocation*)cllocation;
@end
