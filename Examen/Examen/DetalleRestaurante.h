//
//  DetalleRestaurante.h
//  Examen
//
//  Created by user137297 on 7/5/18.
//  Copyright © 2018 user137297. All rights reserved.
//
#import "Restaurante.h"
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DetalleRestaurante : UIViewController

@property Restaurante *restaurante;
@property IBOutlet UILabel *labelNombre;
@property IBOutlet UILabel *labelDescripcion;
@property IBOutlet MKMapView *mapa;

@end
