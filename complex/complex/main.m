//
//  main.m
//  complex
//
//  Created by Niedermann Fabian on 18.02.13.
//  Copyright (c) 2013 Niedermann Fabian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool
    {
        {
            Complex *c1 = [[Complex alloc] initWithComplexValue:5 andAngleRad:(atan(3.0/4.0))];
            Complex *c2 = [[Complex alloc] initWithComplexValue:4 andAngleDeg:60];
            [c1 printRect];
            [c1 printPolarDeg];
            [c1 printPolarRad];
            NSLog(@"Betrag = %lg", [[c1 abs] doubleValue]);
            [c2 printRect];
            [c2 printPolarDeg];
            [c2 printPolarRad];
            NSLog(@"Betrag = %lg", [[c2 abs] doubleValue]);
        }
        
        {
            Complex *c1 = [[Complex alloc] initWithComplexReal:5.2 andImag:9.8];
            Complex *c2 = [[Complex alloc] initWithComplexReal:4.3 andImag:6.4];
            [c1 add:c2];
            [c1 printRect];
            [c1 sub:c2];
            [c1 printRect];
            [c1 mult:c2];
            [c1 printRect];
            [c1 div:c2];
            [c1 printRect];
            [c1 conj];
            [c1 printRect];
            [c1 inv];
            [c1 printRect];
            NSLog(@"Betrag = %lg", [c2.abs doubleValue]);
            NSLog(@"Winkel = %lg", [c2.ang doubleValue]);
            NSLog(@"Komplexe Zahl: %@", [c2 complexAsStringRect]);
            NSLog(@"Komplexe Zahl: %@", [c2 complexAsStringPolarDeg]);
            NSLog(@"Komplexe Zahl: %@", [c2 complexAsStringPolarRad]);
        }
    }
    return 0;
}

