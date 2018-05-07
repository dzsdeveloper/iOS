//
//  TablaRestauranteDS.m
//  Examen
//
//  Created by user137297 on 7/5/18.
//  Copyright © 2018 user137297. All rights reserved.
//

#import "TablaRestauranteDS.h"

@implementation TablaRestauranteDS

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [ _restaurantes count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *idCeldaRes = @"celdaRes";
    
    UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:idCeldaRes];
    
    if (celda == nil){
        celda = [[ UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCeldaRes];
    }
    NSInteger fila = [ indexPath row ];
    Restaurante *res = [ _restaurantes objectAtIndex:fila];
    [[celda textLabel] setText:[res nombre] ];
    return celda;
    
}

-(Restaurante *) restauranteAt:(NSInteger)pos{
    return (Restaurante *) [ _restaurantes objectAtIndex:pos];
}

@end
