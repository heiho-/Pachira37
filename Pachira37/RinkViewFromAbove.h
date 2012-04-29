//
//  RinkViewFromAbove.h
//  Pachira37
//
//  Created by  on 12/04/29.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Rink.h"
#import "RinkObserver.h"

@interface RinkViewFromAbove : UIView <RinkObserver>
{
    Rink* rink;
}
@end
