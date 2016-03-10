//
//  HotelObject.m
//  HotelData
//
//  Created by Frank Bara on 3/10/16.
//  Copyright © 2016 BaraLabs. All rights reserved.
//

#import "HotelObject.h"

@implementation HotelObject

-(instancetype)initWithId:(int)Id Name:(NSString *)currentName City:(NSString *)givenCity Address:(NSString *)givenAddress {
    self = [super init];
    if (self) {
        self.Id = Id;
        self.name = currentName;
        self.city = givenCity;
        self.address = givenAddress;
    }
    return self;
}



@end
