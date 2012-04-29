//
//  End.m
//  Pachira37
//
//  Created by  on 12/03/25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "End.h"

@implementation End

@synthesize rink = _rink;
@synthesize nth = _nth;
@synthesize game = _game;

- (id)initWithGame:(Game *)g {
    self = [super init];
    if (self) {
        _game = g;
    }
    return self;
}

@end
