//
//  WeatherTests.m
//  WeatherTests
//
//  Created by Aron Beaver on 9/2/17.
//  Copyright © 2017 Aron Beaver. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OpenWeatherMapAPI.h"
#import "WeatherData.h"
#import <CoreLocation/CoreLocation.h>

@interface WeatherTests : XCTestCase

@end

@implementation WeatherTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testOpenWeatherAPI {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Check for valid weather data"];
    CLLocation *fakeLocation = [[CLLocation alloc] initWithLatitude:38.00 longitude:78.00];


    [[OpenWeatherMapAPI sharedInstance]
        fetchCurrentWeatherDataForLocation:fakeLocation
        completion:^(WeatherData *weatherData) {
            XCTAssertNotNil(weatherData.name);
            XCTAssertNotNil(weatherData.temp);
            XCTAssertNotNil(weatherData.main);
            XCTAssertNotNil(weatherData.desc);
            XCTAssertNotNil(weatherData.pressure);
            XCTAssertNotNil(weatherData.humidity);
            XCTAssertNotNil(weatherData.temp_min);
            XCTAssertNotNil(weatherData.temp_max);
            XCTAssertNotNil(weatherData.wind_deg);
            XCTAssertNotNil(weatherData.wind_speed);
            
            NSLog(@"Name: %@",weatherData.name);
            NSLog(@"Temp: %@",[weatherData tempString]);
            NSLog(@"Main: %@",weatherData.main);
            NSLog(@"Desc: %@",weatherData.desc);
            NSLog(@"Pressure: %@",weatherData.pressure);
            NSLog(@"Humidity: %@",weatherData.humidity);
            NSLog(@"TempMin: %@",weatherData.temp_min);
            NSLog(@"TempMax: %@",weatherData.temp_max);
            NSLog(@"WindSpeed: %@",weatherData.wind_speed);
            NSLog(@"WindDeg: %@",weatherData.wind_deg);
            
            [expectation fulfill];
        }
        failure:^(NSError *error) {
            XCTFail(@"Failed: %@",error);
        }
     ];
    
    [self waitForExpectationsWithTimeout:20 handler:^(NSError *error) {}];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
