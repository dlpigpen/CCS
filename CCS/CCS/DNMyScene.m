//
//  DNMyScene.m
//  CCS
//
//  Created by Duc Nguyen on 5/13/14.
//  Copyright (c) 2014 Duc Nguyen. All rights reserved.
//

#import "DNMyScene.h"

@interface DNMyScene()
{
    SKNode *_wordNode;
}
@end

@implementation DNMyScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        
        self.anchorPoint =  CGPointMake(0.5, 0.5);
        
        _wordNode = [SKNode node];
        [self addChild:_wordNode];
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"Background"];
        [_wordNode addChild:background];
    }
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
