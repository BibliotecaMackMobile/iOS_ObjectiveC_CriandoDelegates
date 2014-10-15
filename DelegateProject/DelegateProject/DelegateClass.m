//
//  ClasseImplementa.m
//  DelegateProject
//
//  Created by João Henrique da Silva Arruda on 10/10/14.
//  Copyright (c) 2014 João Henrique da Silva Arruda. All rights reserved.
//

#import "DelegateClass.h"

@implementation DelegateClass {
    BOOL _delegateRespondsToSelector;
}

@synthesize delegate;

- (void)metodoExecutor
{
    NSString *meuTexto = @"RESPONDEU!";
    
    NSLog(@"Execução pesada em andamento");
    for (int i = 0; i < 999999999; i++) {
    }
    
    if (_delegateRespondsToSelector) {
        [delegate didFinishExecutingAndReturnString:meuTexto];
    }
}

//Sobrescrito para verificar apenas uma vez na atribuição se o delegate é válido
- (void)setDelegate:(id<DelegateProtocol>)dlg
{
    if (dlg != delegate) {
        delegate = dlg;
        
        _delegateRespondsToSelector = [dlg respondsToSelector:@selector(didFinishExecutingAndReturnString:)];
    }
}

@end
