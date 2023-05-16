import math
import struct

# def binary(num):
#     return ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', num))

scale = 131072

# print("(")
# for i in range(0, 360):
#     print("to_sfixed(", math.sin(math.radians(i)), ", 22, -8)", sep="", end="")
#     if i != 359:
#         print(",")
# print("\n)")

print("(")
for i in range(0, 360):
    print("to_sfixed(", math.cos(math.radians(i)), ", 22,-8)", sep="", end="")
    if i != 359:
        print(",")
print("\n)")

# print("(")
# for i in range(0, 360):
#     print("\"",
#           "to_sfixed(",
#           math.tan(math.radians(i)),
#           ", 22,-8)",
#           "\"",
#           sep="",
#           end="")
#     if i != 359:
#         print(",")
# print("\n)")
