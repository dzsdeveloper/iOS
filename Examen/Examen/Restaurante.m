//
//  Restaurante.m
//  Examen
//
//  Created by user137297 on 7/5/18.
//  Copyright © 2018 user137297. All rights reserved.
//

#import "Restaurante.h"

@implementation Restaurante

-(id)initConNombre:(NSString *)nombre descripcion:(NSString *)descripcion longitud:(double)longitud latitud:(double)latitud{
    if(self = [ super init ]){
        _nombre = nombre;
        _descripcion = descripcion;
        _longitud = longitud;
        _latitud = latitud;
    }
    return self;
}

@end
