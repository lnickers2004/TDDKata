#import "Calculator.h"


@implementation Calculator {

}

- (NSInteger)add:(NSString *)numbersToAdd {
    numbersToAdd = [self handleNewLineDelimiter:numbersToAdd];
    [self guardCondition_duplicateDelimitersShouldThrowException:numbersToAdd];
    if([numbersToAdd rangeOfString:@","].location != NSNotFound)
        return [self sum:numbersToAdd];
    return [numbersToAdd length] > 0 ? [numbersToAdd integerValue] : 0;
}

- (void)guardCondition_duplicateDelimitersShouldThrowException:(NSString *)numbersToAdd {
    if([numbersToAdd rangeOfString:@",,"].location != NSNotFound)
        [NSException raise:@"DuplicateDelimitersException" format:@"You cannot input duplicate delimiters."];
}

- (NSString *)handleNewLineDelimiter:(NSString *)numbersToAdd {
    numbersToAdd = [numbersToAdd stringByReplacingOccurrencesOfString:@"\n" withString:@","];
    return numbersToAdd;
}

- (NSInteger)sum:(NSString *)numbersToAdd {
        NSArray *numbersArray = [numbersToAdd componentsSeparatedByString:@","];
        NSInteger total = 0;
        for (NSString *numberString in numbersArray) {
            total += [numberString integerValue];
        }
        return total;
    }
@end