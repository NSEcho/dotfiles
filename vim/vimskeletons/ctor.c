// clang -dynamiclib ctor.c -o ctor.dylib
#include <stdio.h>

__attribute__((constructor))
static void ctor(int argc, char **argv) {
    printf("called ctor\n");
}
