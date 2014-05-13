//
//  Cookie.m
//  CCS
//
//  Created by Duc Nguyen on 5/13/14.
//  Copyright (c) 2014 Duc Nguyen. All rights reserved.
//

#import "DNCookie.h"

@implementation DNCookie

- (NSString *) spriteName
{
    static NSString* const spriteNames[] = {
        @"Croissant",
        @"Cupcake",
        @"Danish",
        @"Donut",
        @"Macaroon",
        @"SugarCookie",
    };
    
    return spriteNames[self.cookieType - 1];
}

- (NSString *) highlightedSpriteName
{
    static NSString* const highlightedSpriteNames[] = {
        @"Croissant-Highlighted",
        @"Cupcake-Highlighted",
        @"Danish-Highlighted",
        @"Donut-Highlighted",
        @"Macaroon-Highlighted",
        @"SugarCookie-Highlighted",
    };
    
      return highlightedSpriteNames[self.cookieType - 1];
}

-(NSString *) description
{
    return [NSString stringWithFormat:@"type:%ld square:(%ld,%ld)", (long)self.cookieType,
            (long)self.column, (long)self.row];
}


@end
