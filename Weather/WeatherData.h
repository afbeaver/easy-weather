//
//  WeatherData.h
//  Weather
//
//  Created by Aron Beaver on 9/5/17.
//  Copyright © 2017 Aron Beaver. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherData : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *main;
@property (strong, nonatomic) NSString *desc;
@property (strong, nonatomic) NSNumber *temp;
@property (strong, nonatomic) NSNumber *pressure;
@property (strong, nonatomic) NSNumber *humidity;
@property (strong, nonatomic) NSNumber *temp_min;
@property (strong, nonatomic) NSNumber *temp_max;
@property (strong, nonatomic) NSNumber *wind_speed;
@property (strong, nonatomic) NSNumber *wind_deg;


-(id)initWithJSON:(NSData *)jsonData;
- (NSString *)tempString;

@end
