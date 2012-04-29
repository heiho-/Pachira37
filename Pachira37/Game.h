//
//  CurlingGame.h
//  Pachira37
//
//  Created by  on 12/04/15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "GameSettings.h"

@interface Game : NSObject
{
    Player* _player1;
    Player* _player2;
    
    NSMutableArray* _ends;
    
    // 今、何end目?
    int _endCount;
    
    GameSettings* _gameSettings;
}

@property (nonatomic, retain, readonly) GameSettings* gameSettings;

@end
