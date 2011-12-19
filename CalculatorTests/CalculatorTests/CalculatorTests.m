#import "CalculatorTests.h"
#import "Calculator.h"

@implementation CalculatorTests

- (void)setUp {
    [super setUp];
    sut = [[Calculator alloc] init];
}

- (void)tearDown {
    [sut release];
    [super tearDown];
}

- (void)testAddMethod_ZeroLengthInput_ReturnsZero {
    CalcOperationType calcOperationType = Add;
    int result = [sut doOperation:calcOperationType onValue:@""];
    int expected = 0;

    STAssertEquals(expected, result, @"Zero length input returns zero.");
}


- (void)dealloc {
    [super dealloc];
}


@end
