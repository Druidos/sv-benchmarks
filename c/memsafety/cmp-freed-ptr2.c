#include <stdlib.h>
#include <stdint.h>

int main() {

    struct T {
        struct T* next;
    };

    struct T* x = NULL;
    struct T* y = NULL;

    y = malloc(sizeof(*y));
    intptr_t adressY = (intptr_t) y;
    x = malloc(sizeof(*x));

    free(y);

    intptr_t adressX = (intptr_t) x;

    if (adressX == adressY)
    { // if the second malloc can't return the same value as the first
        free(x);
    }

    free(x);

    return 0;
}

// predator-regre/test-0238.c
// - comparing freed pointers
// - contributed by Ondra Lengal
