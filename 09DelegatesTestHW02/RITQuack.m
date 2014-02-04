//
//  RITQuack.m
//  09DelegatesTestHW02
//
//  Created by Aleksandr Pronin on 04.02.14.
//  Copyright (c) 2014 Aleksandr Pronin. All rights reserved.
//

#import "RITQuack.h"

@implementation RITQuack

#pragma mark - RITPatientDelegate

- (void) patientFeelsBad:(RITPatient*) patient {
    
    NSLog(@"Patient %@ fells bad", patient.name);
    
    switch (arc4random() % 4) {
        case 0:
            // treat flu
            NSLog(@"Patient %@ diagnosed flu", patient.name);
            [patient takePill];
            break;
            
        case 1:
            // prepare for surgery
            NSLog(@"Patient %@ diagnosed appendicitis", patient.name);
            [patient prepareForSurgery];
            break;
            
        case 2:
            // do ultrasound
            NSLog(@"Patient %@ diagnosed pregnancy", patient.name);
            [patient doUltrasound];
            break;
        default:
            // pass tests
            [patient undergoMoreTests];
            break;
    }
    
    NSLog(@"\n");
    
}

- (void) patient:(RITPatient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
