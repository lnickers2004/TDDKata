#import "CalculatorTests.h"
#import "Calculator.h"

@implementation CalculatorTests

- (void)setUp {
    [super setUp];  
    sut = [[Calculator alloc] init];
}

- (void)testAddMethod_ZeroLengthInput_ReturnsZero {
    int result = [sut add:@""];
    int expected = 0;

    STAssertEquals(expected, result, @"");
}

- (void)testAddMethod_OneLengthInput_ReturnsEquivalent {
    int result = [sut add:@"7"];
    int expected = 7;

    STAssertEquals(expected, result, @"");
}

- (void)testAddMethod_TwoLengthInput_ReturnsSum {
    int result = [sut add:@"7,3"];
    int expected = 10;

    STAssertEquals(expected, result, @"");
}


@end
