#include "foo.h"

//#include <Foundation/Foundation.h>

extern "C" {
int foo(int x) {
    //NSLog(@"in foo()");
    return x+1;
}
}
