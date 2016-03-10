//
//  HotelCell.h
//  HotelData
//
//  Created by Frank Bara on 3/10/16.
//  Copyright © 2016 BaraLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HotelCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblID;
@property (weak, nonatomic) IBOutlet UILabel *lblAddress;
@property (weak, nonatomic) IBOutlet UILabel *lblCity;

@end
