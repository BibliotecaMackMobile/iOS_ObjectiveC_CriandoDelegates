//
//  Protocolo.h
//  DelegateProject
//
//  Created by João Henrique da Silva Arruda on 10/10/14.
//  Copyright (c) 2014 João Henrique da Silva Arruda. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DelegateProtocol <NSObject>

@optional //Caso essa notação seja retirada um warning é dado quando a classe que devia não está implementando o método do protocolo
- (void)didFinishExecutingAndReturnString:(NSString *)text;

@end
