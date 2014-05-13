//
//  Cookie.h
//  CCS
//
//  Created by Duc Nguyen on 5/13/14.
//  Copyright (c) 2014 Duc Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
@import SpriteKit;

static const NSUInteger NumCookieTypes = 6;

@interface DNCookie : NSObject

@property (nonatomic, assign) NSInteger column;
@property (nonatomic, assign) NSInteger row;
@property (nonatomic, assign) NSUInteger cookieType;
@property (nonatomic, strong) SKSpriteNode *sprite;

- (NSString *) spriteName;
- (NSString *) highlightedSpriteName;


@end
