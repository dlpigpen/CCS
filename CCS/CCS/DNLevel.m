//
//  DNLevel.m
//  CCS
//
//  Created by Duc Nguyen on 5/13/14.
//  Copyright (c) 2014 Duc Nguyen. All rights reserved.
//

#import "DNLevel.h"

@implementation DNLevel
{
    DNCookie *_cookies[NumColumns][NumRows];
}

-(DNCookie *) cookieAtColumn:(NSInteger)column row:(NSInteger)row
{
    NSAssert1(column >= 0 && column < NumColumns, @"Invalid column: %ld",(long) column);
    NSAssert1(row >= 0 && row < NumRows, @"Invalid row: %ld",(long) row);
    
    return _cookies[column][row];
    
}

- (NSSet *) shuffle
{
    return [self createInitialCookies];
}

- (NSSet *) createInitialCookies
{
    NSMutableSet *set = [NSMutableSet set];
    
    for (NSInteger row = 0; row < NumRows; row++)
    {
        for (NSInteger column = 0; column <  NumColumns; column++)
        {
            
            NSUInteger cookieType =  arc4random_uniform(NumCookieTypes) + 1;
            
            DNCookie *cookie = [self createCookieAtColumn:column row:row withType:cookieType];
            
            [set addObject:cookie];
        }
    }
    
    return set;
}


-(DNCookie *) createCookieAtColumn:(NSInteger) column row:(NSInteger) row withType:(NSUInteger) cookieType
{
    DNCookie *cookie = [[DNCookie alloc] init];
    cookie.cookieType =  cookieType;
    cookie.column =  column;
    cookie.row =  row;
    
    _cookies[column][row] = cookie;
    
    return cookie;
}


@end
