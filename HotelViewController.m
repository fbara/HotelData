//
//  HotelViewController.m
//  HotelData
//
//  Created by Frank Bara on 3/10/16.
//  Copyright © 2016 BaraLabs. All rights reserved.
//

#import "HotelViewController.h"
#import "HotelCell.h"
#import "HotelObject.h"

@interface HotelViewController ()

#define JSON_URL @"http://merrycode.com/belly/json/places.php"

//Property to hold all objects of HotelCell class
@property (nonatomic, strong)NSMutableArray *objectHolderArray;

@end

@implementation HotelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *blogURL = [NSURL URLWithString:JSON_URL];
    //Create object that holds the data we get from blogURL
    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
    
    NSError *error = nil;
    
    //Create a dictionary object to hold the data
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData
                                                                   options:0
                                                                     error:&error];
    
    //Iterate thru the data
    for (NSDictionary *bpDict in dataDictionary) {
        HotelObject *currentHotel = [[HotelObject alloc] initWithId:[[bpDict objectForKey:@"id"] integerValue]
                                                               Name:[bpDict objectForKey:@"name"]
                                                               City:[bpDict objectForKey:@"city"]
                                                            Address:[bpDict objectForKey:@"address"]];
        [self.objectHolderArray addObject:currentHotel];
    }
    
}

//Getter to check if object is instantiated
- (NSMutableArray *)objectHolderArray {
    if (!_objectHolderArray) {
        _objectHolderArray = [[NSMutableArray alloc] init];
    }
    return _objectHolderArray;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    HotelCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    HotelObject *currentHotel = [self.objectHolderArray objectAtIndex:indexPath.row];
    cell.lblID.text = [NSString stringWithFormat:@"%d", currentHotel.Id];
    cell.lblName.text = currentHotel.name;
    cell.lblCity.text = currentHotel.city;
    cell.lblAddress.text = currentHotel.address;
    return cell;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.objectHolderArray count];
}



@end
