import math
import struct

# def binary(num):
#     return ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', num))

scale = 512

print("(")
for i in range(0, 360):
    print(math.floor(math.sin(math.radians(i)) * scale), sep="", end="")
    if i != 359:
        print(",")
print("\n)")

# print("(")
# for i in range(0, 360):
#     print(math.floor(math.cos(math.radians(i)) * scale), sep="", end="")
#     if i != 359:
#         print(",")
# print("\n)")

# print("(")
# for i in range(0, 360):
#     print("\"", math.floor(math.tan(math.radians(i)) * scale), "\"", sep="", end="")
#     if i != 359:
#         print(",")
# print("\n)")
