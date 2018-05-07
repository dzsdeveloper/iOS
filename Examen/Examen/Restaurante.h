//
//  Restaurante.h
//  Examen
//
//  Created by user137297 on 7/5/18.
//  Copyright © 2018 user137297. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurante : NSObject

@property NSString *nombre;
@property NSString *descripcion;
@property double longitud;
@property double latitud;

-(id) initConNombre:(NSString *)nombre
             descripcion:(NSString *)descripcion
              longitud:(double)longitud
          latitud:(double)latitud;
@end
