//
//  ViewController.m
//  DelegateProject
//
//  Created by João Henrique da Silva Arruda on 10/10/14.
//  Copyright (c) 2014 João Henrique da Silva Arruda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lblTest;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DelegateClass *classeQueTemDelegate = [[DelegateClass alloc] init];
    
    [classeQueTemDelegate setDelegate:self];
    
    //Este método ira responder o delegate após sua execução
    [classeQueTemDelegate metodoExecutor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Método que é chamado após a classe do delegate terminar sua execução
- (void)didFinishExecutingAndReturnString:(NSString *)text
{
    [lblTest setText:text];
}

@end
