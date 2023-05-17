
print("(")
for i in range(0, 360):
    print(math.floor(math.cos(math.radians(i)) * scale), sep="", end="")
    if i != 359:
        print(",")
print("\n)")