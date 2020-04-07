# Simple-Program-In-Objective-C


You can use Objective C inside the Windows environment. If you follow these steps, it should be working just fine:

1.Visit the GNUstep website and download GNUstep MSYS Subsystem (MSYS for GNUstep), GNUstep Core (Libraries for GNUstep), and GNUstep Devel

2.After downloading these files, install in that order, or you will have problems with configuration

3.Navigate to 

```
C:\GNUstep\GNUstep\System\Library\Headers\Foundation1

```
and ensure that 
```Foundation.h
```
exists

4.Open up a command prompt and run gcc -v to check that GNUstep MSYS is correctly installed (if you get a file not found error, ensure that the bin folder of GNUstep MSYS is in your PATH)

5.Use this simple "Hello World" program to test GNUstep's functionality:

```
#include <Foundation/Foundation.h>

int main(void)
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"Hello World!.");
    [pool drain];
 return;
}

```
6.Go back to the command prompt and cd to where you saved the "Hello World" program and then compile it:2

```
gcc -o helloworld.exe <HELLOWORLD>.m -I /GNUstep/GNUstep/System/Library/Headers -L /GNUstep/GNUstep/System/Library/Libraries -std=c99 -lobjc -lgnustep-base -fconstant-string-class=NSConstantString

```
7.Finally, from the command prompt, type helloworld to run it

All the best, and have fun with Objective-C!
