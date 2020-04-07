#include <Foundation/Foundation.h>

@interface Hi:NSObject {}

- (void) hi;
@end


@implementation Hi

- (void) hi {
	NSLog(@"Hi world\n");
}
@end

int main(void) {
	Hi *obj = [[Hi alloc] init];
	[obj hi];
        return 0;
}