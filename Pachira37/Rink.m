//
//  Rink.m
//  Pachira37
//
//  Created by  on 12/03/22.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Rink.h"
#import "RinkObserver.h"
#import "End.h"

@interface Rink()

- (void)notifyObservers;
- (void)initStones;

@end

@implementation Rink

@synthesize stones = _stones;
@synthesize activeStones = _activeStones;
@synthesize movingStones = _movingStones;
@synthesize numStones = _numStones;

static const CGFloat WIDTH = 400.0;
static const CGFloat HEIGHT = 600.0; // 値はてきとう

// TODO modelの値とviewの値の関連どーする?

# pragma mark -
# pragma mark memory kanri

// とりあえずテスト用に仮にinit作る
// 実際はGameの情報をとってくる

- (id)init {
    self = [super init];
    if(self){
        [self initStones];
    }
    return self;
}

- (void)dealloc {
    [_stones release];
    [_activeStones release];
    [_movingStones release];
    [super dealloc];
}

# pragma mark -

- (void)notifyObservers {
    for(id<RinkObserver> observer in _rinkObservers) {
        [observer notify];
    }
}

- (void)calcNext {
    for(Stone* activeStone in self.activeStones) {
        [activeStone calcNextState];
    }
    for(Stone* activeStone in self.activeStones) {
        [activeStone updateState];
    }
}

+ (CGFloat)distanceOf:(Stone*)stone1 to:(Stone *)stone2{
    return (CGFloat) sqrt(pow(stone1.posX - stone2.posX, 2) + pow(stone1.posY - stone2.posY, 2));
}

- (CGFloat)friction:(CGFloat)posX :(CGFloat)posY {
    // TODO
    return 0;
}

- (void)notifyDeactive:(Stone *)stone {
    [self.activeStones removeObject:stone];
}
- (void)notifyStopping:(Stone *)stone {
    [self.movingStones removeObject:stone];
}

# pragma mark -
# pragma mark private methods
- (void)initStones {
    for(int i=0; i<10; i++){
        //TODO あとでちゃんとかく
        [self.stones addObject:[[[Stone alloc] init] autorelease]]; // autorelease?
    }
}

@end
