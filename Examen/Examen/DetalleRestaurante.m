//
//  DetalleRestaurante.m
//  Examen
//
//  Created by user137297 on 7/5/18.
//  Copyright © 2018 user137297. All rights reserved.
//

#import "DetalleRestaurante.h"

@interface DetalleRestaurante ()

@end

@implementation DetalleRestaurante

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CLLocationCoordinate2D location;
    location.latitude = _restaurante.latitud;
    location.longitude = _restaurante.longitud;
    // Creamos una region centrada en las coordenadas
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 500, 500);
    // le pasamos la region al mapa
    [ _mapa setRegion:region animated:NO];
    
    // Vamos a añadir un marcador en el mapa
    CLLocationCoordinate2D location2 = CLLocationCoordinate2DMake(_restaurante.latitud, _restaurante.longitud);
    MKPointAnnotation *marcador = [[MKPointAnnotation alloc] init];
    // Al marcador le daremos una posicion, un titulo y un subtitulo
    [ marcador setCoordinate:location2];
    [ marcador setTitle:_restaurante.nombre ];
    //[ marcador setSubtitle:@"Y un subtitulo" ];
    //Añadimos el marcador al mapa
    [ _mapa addAnnotation:marcador ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated{
    _labelNombre.text = _restaurante.nombre;
    _labelDescripcion.text = _restaurante.descripcion;
    //_labelCiudad.text = _gimnasio.ciudad;
    //_labelCapacidad.text = [NSString stringWithFormat:@"%d", _gimnasio.capacidad];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
