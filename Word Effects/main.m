//
//  main.m
//  Word Effects
//
//  Created by Anton Moiseev on 2016-05-02.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    char string[255];
    char operation[255];

    while (YES) {
        
        NSLog(@"Here are the operations available to you:\n1.Uppercase\n2.Lowercase\n3.Numberize\n4.Canadianize\n5.Respond\n6.De-Space-It");
        printf("Which one do you want to do? Enter the numnber of the operation: ");
        fgets(operation, 255, stdin);
        
        NSString *inputOperation = [NSString stringWithUTF8String:operation];
        inputOperation = [inputOperation stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        printf("Enter the string: ");
        fgets(string, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String:string];
        inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        if ([inputOperation isEqualToString:@"1"]) {
            
            NSLog(@"%@", [inputString uppercaseString]);
            
        } else if ([inputOperation isEqualToString:@"2"]) {
            
            NSLog(@"%@", [inputString lowercaseString]);
            
        } else if ([inputOperation isEqualToString:@"3"]) {
            
            
            
            
        } else if ([inputOperation isEqualToString:@"4"]) {
            
            inputString = [inputString stringByAppendingString:@", eh?"];
            NSLog(@"%@", inputString);
            
            
        } else if ([inputOperation isEqualToString:@"5"]) {
            
            if ([inputString hasSuffix:@"?"]) {
                
                NSLog(@"I don't know");
                
            } else if ([inputString hasSuffix:@"!"]) {
                
                NSLog(@"Whoa, calm down!");
                
            }
            
            
        } else if ([inputOperation isEqualToString:@"6"]) {
            
            inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            NSLog(@"%@", inputString);
            
            
        } else {
            
            NSLog(@"The number you printed is outised the range of available operations (1-6), try again, please!");
            
        }
        
        
    }
    
    return 0;
}
