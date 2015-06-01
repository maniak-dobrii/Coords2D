//
//  MDMutableCoords2D.h
//  Pods
//
//  Created by Mikhail Solodovnichenko on 31/05/15.
//
//

#import "MDImmutableCoords2D.h"

@interface MDMutableCoords2D : MDCoords2D
@property (nonatomic, assign, readwrite) double lat;
@property (nonatomic, assign, readwrite) double lon;

- (instancetype)init;
@end
