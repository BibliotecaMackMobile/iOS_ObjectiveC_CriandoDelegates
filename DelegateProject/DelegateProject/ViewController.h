//
//  ViewController.h
//  DelegateProject
//
//  Created by João Henrique da Silva Arruda on 10/10/14.
//  Copyright (c) 2014 João Henrique da Silva Arruda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DelegateClass.h"

//Implementa o protocolo
@interface ViewController : UIViewController <DelegateProtocol>

@property (strong, nonatomic) IBOutlet UILabel *lblTest;

@end

