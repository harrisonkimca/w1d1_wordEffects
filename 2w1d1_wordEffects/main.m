//
//  main.m
//  2w1d1_wordEffects
//
//  Created by Seantastic31 on 26/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[255];
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Input was: %@", inputString);
        
        int selection;
        
        do
        {
            
            printf("Your options are:\n1. UPPERCASE\n2. lowercase\n3. numberize\n4. canadianize, eh?\n5. respond!?\n6. de-space\n7. Quit\n");
            printf("Make your selection\n");
            scanf("%i", &selection);
            printf("Your selection is: %i\n", selection);
            
            switch (selection) {
                case 1:
                {
                    NSString *uppercase = inputString.uppercaseString;
                    NSLog(@"Line: %d, Value: %p, Address: %p, New string is: %@", __LINE__, &uppercase, *&uppercase, uppercase);
                    
                    break;
                }
                    
                case 2:
                {
                    NSString *lowercase = inputString.lowercaseString;
                    NSLog(@"Line: %d, Value: %p, Address: %p, New string is: %@", __LINE__, &lowercase, *&lowercase, lowercase);
                    
                    break;
                }
                
                case 3:
                {
                    NSInteger numberize = inputString.integerValue;
                    NSLog(@"Line: %d, Value: %p, Address: %p, New string is: %li", __LINE__, &numberize, &numberize, numberize);
                    
                    break;
                }
                    
                case 4:
                {
                    NSString *canadianize = [inputString stringByAppendingString:@", eh?"];
                    NSLog(@"Line: %d, Value: %p, Address: %p, New string is: %@", __LINE__, &canadianize, *&canadianize, canadianize);
                    
                    break;
                }
                
                case 5:
                {
                    NSString *respond = [inputString substringFromIndex:inputString.length-2];
                    if ([respond containsString:@"?"])
                    {
                        NSLog(@"I don't know");
                    }
                    else if ([respond containsString:@"!"])
                    {
                        NSLog(@"Whoa calm down!");
                    }
                    else
                    {
                        NSLog(@"Have a nice day");
                    }
                    
                    break;
                }
                    
                case 6:
                {
                    NSString *despace = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"Line: %d, Value: %p, Address: %p, New string is: %@", __LINE__, &despace, *&despace, despace);
                    
                    break;
                }
                    
                case 7:
                {
                    NSLog(@"See you again!");
                    
                    break;
                }
                    
                default:
                {
                    NSLog(@"Your selection is not available. Please try again");
                }
                
            }
            
        }
        
        while (selection != 7);

    }
    return 0;
}
