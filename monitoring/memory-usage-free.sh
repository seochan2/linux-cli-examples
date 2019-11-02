#!/bin/bash
export LANG=C, LC_ALL=C

free | awk '
    BEGIN{
        total=0; used=0; available=0; rate=0;
    }

    /^Mem:/{
        total = $2;
        available = $7;
    }

    END {
        used = total - available;
        rate= 100 * used / total;
        printf("total(MB)\tused(MB)\tavailable(MB)\tused-rate(%)\n");
        printf(" %.1d \t\t %.1d \t\t %.1d \t\t %.1f\n", total, used, available, rate);
    }';