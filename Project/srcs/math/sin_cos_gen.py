import math
import struct


def binary(num):
    return ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', num))


print("(")
for i in range(0, 360):
    print("\"", binary(math.sin(math.radians(i))), "\"", sep="", end="")
    if i != 359:
        print(",")
print(")")

print("(")
for i in range(0, 360):
    print("\"", binary(math.cos(math.radians(i))), "\"", sep="", end="")
    if i != 359:
        print(",")
print(")")

print("(")
for i in range(0, 360):
    print("\"", binary(math.tan(math.radians(i))), "\"", sep="", end="")
    if i != 359:
        print(",")
print(")")
