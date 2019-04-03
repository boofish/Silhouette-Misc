#include <stdio.h>

#include "lib.h"

#define BASE(i) &base[(i)*width]

/* int foo(int num) { */
/*     int i = 0; */
/*     int total = 1; */

/*     for (i = 10; i > 0; i--) { */
/*         total += i; */
/*     } */
/*     return total + num; */
/* } */

int add(int a, int b) {
    return a + b;
}


int sub(int a, int b) {
    return a - b;
}

int foo(int a, int b) {
    int (*func[2])(int, int) = {
        add, sub
    };

    static unsigned int i = 0;
    return func[i++ % 2](a, b);
}

void
qsort(base, nel, width, compar)
    char base[];	/* start of data in memory */
    int nel;		/* number of elements to be sorted */
    int width;		/* size (in bytes) of each element */
    int (*compar)();	/* comparison function */
{
    int gap;
    int i;
    int j;

    register int k;	/* inner exchange loop parameters */
    register char* p;
    register char* q;
    register char  c;

    for (gap = nel/2; gap > 0; gap /= 2)
    {
	for (i = gap; i < nel; i++)
	{
	    for (j = i-gap; j >= 0; j -= gap)
	    {
	        p = BASE(j);
		q = BASE(j+gap);
		if ((*compar)(p,q) <= 0)
		    break;	/* exit j loop */
		else
		{
		    for (k = 0; k < width; (++p, ++q, ++k))
		    {
			c = *q;
			*q = *p;
			*p = c;
		    }
		}
	    }
	}
    }
}

int main() {
    volatile char *str = "Hello from hello\n";

    printf("str = %s\n", str);

    /* int i = 10; */
    /* float f = 10.5; */
    /* i = f; */
    /* printf("i = %d\n", i); */
    /* float f2 = i; */
    /* printf("f2 = %f\n", f2); */

    /* double d0 = 1587; */
    /* int arr[3]; */
    /* arr[0] = d0; */
    /* printf("%d, %d\n", arr[0], arr[1]); */


    return 0;
}
