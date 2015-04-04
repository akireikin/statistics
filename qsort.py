#!/usr/bin/python
# -*- coding: utf-8 -*-

import random
import time


def qsort(numbers):

    if len(numbers) <= 1:
        return numbers

    less = []
    equal = []
    more = []
    mid = numbers[random.randint(0, len(numbers) - 1)]
    for number in numbers:
        if number > mid:
            more.append(number)
        elif number < mid:
            less.append(number)
        else:
            equal.append(number)

    return qsort(less) + equal + qsort(more)

length = 100000
shuffled = []
for i in range(length):
    shuffled.append(random.randint(0, length))

start = time.clock()

qsort(shuffled)

print(u"array size: {0}\nexecution time: {1}".format(length, time.clock() - start))
