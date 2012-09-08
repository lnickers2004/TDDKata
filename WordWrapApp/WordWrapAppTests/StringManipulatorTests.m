#import "StringManipulatorTests.h"
#import "StringManipulator.h"

@implementation StringManipulatorTests

- (void)setUp {
    [super setUp];
    sut = [[StringManipulator alloc] init];
}

- (void)testLineWrapByColumnWidthMethod_columnWidthIsZero_stringHasNoLineBreaks {
    NSString *input = @"Here is my string with no breaks, but enough length for at least 2 or 3 of them. Sound good?";
    NSString *expected = input;

    NSString *result = [sut lineWrap:input byColumnWidth:0];

    STAssertEqualObjects(expected, result, @"When column width is 0, result should have no line breaks.");
}


- (void)testLineWrapByColumnWidthMethod_columnWidthGreaterThan19_stringHasExactWidthLineBreaks {
    NSString *input = @"Here is my string with no breaks, but enough length for at least 2 or 3 of them. Sound good?";
    NSString *expected = @"Here is my string wi\nth no breaks, but en\nough length for at l\neast 2 or 3 of them.\n Sound good?\n";

    NSString *result = [sut lineWrap:input byColumnWidth:20];

    STAssertEqualObjects(expected, result, @"When column width > 19, result should have exact width line breaks.");
}
@end
