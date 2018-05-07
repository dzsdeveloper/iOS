//
//  GestorRestaurante.m
//  Examen
//
//  Created by user137297 on 7/5/18.
//  Copyright © 2018 user137297. All rights reserved.
//

#import "GestorRestaurante.h"
#import "Restaurante.h"

@implementation GestorRestaurante

-(NSArray *)listarRestaurantes{
    Restaurante *r1 = [[ Restaurante alloc ] initConNombre:@"Restaurante Pepa" descripcion:@"Tiene todo tipo de salsas picantes." longitud:2.1685 latitud:41.3818];
    Restaurante *r2 = [[ Restaurante alloc ] initConNombre:@"Restaurante Popeye" descripcion:@"Es marino y se come espinacas en cada plato." longitud: -3.70325 latitud:40.4167];
    Restaurante *r3 = [[ Restaurante alloc ] initConNombre:@"Restaurante de pintxos" descripcion:@"No se comen pinchos, se come pan con tomate." longitud:-2.9334110 latitud:43.2603479];
    Restaurante *r4 = [[ Restaurante alloc ] initConNombre:@"Restaurante Teto" descripcion:@"Para pasar un buen rato y conocer gente." longitud:2.33333 latitud:48.8667];
    Restaurante *r5 = [[ Restaurante alloc ] initConNombre:@"Restaurante Vegan" descripcion:@"Comida rápida sin sufrimiento animal." longitud:2.8239 latitud:41.9842];
    Restaurante *r6 = [[ Restaurante alloc] initConNombre:@"Restaurante hindú" descripcion:@"La comida mas sabrosa y picante de Londres." longitud:-0.1275 latitud:51.5072];
    NSArray *lista = [ NSArray arrayWithObjects:r1, r2, r3, r4, r5, r6, nil];
    return lista;
}

@end
