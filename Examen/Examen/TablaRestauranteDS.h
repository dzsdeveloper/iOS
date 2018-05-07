//
//  TablaRestauranteDS.h
//  Examen
//
//  Created by user137297 on 7/5/18.
//  Copyright © 2018 user137297. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Restaurante.h"

@interface TablaRestauranteDS : NSObject<UITableViewDataSource>

@property NSArray* restaurantes;

-(Restaurante *) restauranteAt:(NSInteger) pos;


@end
