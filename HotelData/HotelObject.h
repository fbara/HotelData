//
//  HotelObject.h
//  HotelData
//
//  Created by Frank Bara on 3/10/16.
//  Copyright © 2016 BaraLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HotelObject : NSObject

- (instancetype)initWithId:(int)Id Name:(NSString *)currentName City:(NSString *)givenCity Address:(NSString *)givenAddress;
@property (nonatomic)int Id;
@property (nonatomic,strong) NSString * city;
@property (nonatomic,strong) NSString * name;
@property (nonatomic,strong) NSString *address;

@end
