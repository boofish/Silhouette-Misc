#include <stdio.h>
#include "hello.h"


#define BASE(i) &base[(i)*width]

int foo(int num) {
    int i = 0;
    int total = 1;

    for (i = 10; i > 0; i--) {
        total += i;
    }


    return total + num;
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

    return 0;
}
