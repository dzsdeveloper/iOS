//
//  ViewController.m
//  Examen
//
//  Created by user137297 on 7/5/18.
//  Copyright © 2018 user137297. All rights reserved.
//
#import "DetalleRestaurante.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _gestorRes = [[ GestorRestaurante alloc ] init];
    _tablaDS = [[TablaRestauranteDS alloc] init];
    [ _tablaRestaurantes setDataSource:_tablaDS];
    [ _tablaRestaurantes setDelegate:self ];
}

-(void) viewWillAppear:(BOOL)animated{
    [ _tablaDS setRestaurantes:[_gestorRes listarRestaurantes]];
    [ _tablaRestaurantes reloadData];
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Restaurante *r = [ _tablaDS restauranteAt:[indexPath row]];
    [ self performSegueWithIdentifier:@"verDetalle" sender:r];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"verDetalle"]){
        if([sender isKindOfClass:[ Restaurante class]]){
            DetalleRestaurante *dr = (DetalleRestaurante *)[ segue destinationViewController];
            [dr setRestaurante:(Restaurante *)sender];
        }
    }
}

-(IBAction)volverAControler1:(UIStoryboardSegue *)segue{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
