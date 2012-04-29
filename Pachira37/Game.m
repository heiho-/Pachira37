//
//  CurlingGame.m
//  Pachira37
//
//  Created by  on 12/04/15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Game.h"

@implementation Game

@synthesize gameSettings = _gameSettings;

- (id)init {
    self = [super init];
    if (self) {
        
        _endCount = 1; //0からなのか1からなのかどうしようか
    }
    return self;
}

@end
