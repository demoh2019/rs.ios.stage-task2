#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if(numbersArray == nil || [numbersArray count] == 0){
        return @"";
    }
    NSString *errorRange = @"The numbers in the input array can be in the range from 0 to 255.";
    NSString *errorNegative = @"Negative numbers are not valid for input.";
    NSMutableString *result = [[NSMutableString alloc] init];
    for(NSInteger i = 0; i<4; i++){
        NSInteger number = 0;
        if(i < [numbersArray count]){
            number = [numbersArray[i] integerValue];
        }
        if(number > 255){
            return errorRange;
        }
        if(number < 0){
            return errorNegative;
        }
        [result appendFormat:@"%ld.", number];
    }
    return [result substringToIndex:[result length]-1];
}

@end
