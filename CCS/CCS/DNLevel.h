//
//  DNLevel.h
//  CCS
//
//  Created by Duc Nguyen on 5/13/14.
//  Copyright (c) 2014 Duc Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import  "DNCookie.h"

static const NSInteger NumColumns = 9;
static const NSInteger NumRows = 9;


@interface DNLevel : NSObject

- (NSSet *) shuffle;
- (DNCookie *) cookieAtColumn:(NSInteger) column row:(NSInteger) row;


@end
