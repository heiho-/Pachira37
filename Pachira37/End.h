//
//  End.h
//  Pachira37
//
//  Created by  on 12/03/25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Rink.h"
@class Game;

@interface End : NSObject
{
    // parent
    Game* _game; 
    
    int _nth; //nエンド目
    Rink* _rink;
}
@property(nonatomic, assign, readonly) Game* game;
@property(nonatomic, readonly) int nth;
@property(nonatomic, retain) Rink* rink;

- (id)initWithGame:(Game *)game;

@end
