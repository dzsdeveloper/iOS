//
//  ViewController.h
//  Examen
//
//  Created by user137297 on 7/5/18.
//  Copyright © 2018 user137297. All rights reserved.
//
#import "TablaRestauranteDS.h"
#import "GestorRestaurante.h"
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate>
{
    TablaRestauranteDS *_tablaDS;
    GestorRestaurante *_gestorRes;
}
@property IBOutlet UITableView *tablaRestaurantes;

@end

