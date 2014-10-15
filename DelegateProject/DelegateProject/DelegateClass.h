//
//  ClasseImplementa.h
//  DelegateProject
//
//  Created by João Henrique da Silva Arruda on 10/10/14.
//  Copyright (c) 2014 João Henrique da Silva Arruda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DelegateProtocol.h"

@interface DelegateClass : NSObject

@property (nonatomic, weak) id <DelegateProtocol> delegate;

- (void)metodoExecutor;

@end
