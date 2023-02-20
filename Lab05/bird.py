####################################################
# This is a genertor of 2D array initialization list.
# Edit the variable of bird (starting from line 22) as the color matrix
#   according to the relationship of number and color (line 19)
#   and then run these codes.
#
# An example: when bird is
#   bird = '''
#   123123123
#   123123123
#   123123123
#   '''
# The generated output is as below:
# ((C_DarkGreen,C_LightGreen,C_Red,C_DarkGreen,C_LightGreen,C_Red,C_DarkGreen,C_DarkGreen,C_Red),
# (C_DarkGreen,C_LightGreen,C_Red,C_DarkGreen,C_LightGreen,C_Red,C_DarkGreen,C_LightGreen,C_Red),
# (C_DarkGreen,C_Red,C_LightGreen,C_DarkGreen,C_DarkGreen,C_DarkGreen,C_LightGreen,C_Red,C_DarkGreen))
####################################################

# 0 C_Black, 1 C_DarkGreen, 2 C_LightGreen, 3 C_Red, 4 C_White, 5 C_Pink
v = ['C_Black', 'C_DarkGreen', 'C_LightGreen', 'C_Red', 'C_White', 'C_Pink']

bird = '''
0000000111000
0100001222100
0110012444410
0121012440410
0122112454433
0122212444100
0122222211000
0011223333000
0001233333000
1111233330000
1222133300000
1111000000000
'''

bird = bird.strip()
bird = bird.split('\n')

bird = [x.strip() for x in bird]
sig_v = []
for i in range(len(bird)):
    t = '('
    for j in range(len(bird[i])):
        t += v[int(bird[i][j])] + ','
    t = t.strip(',')
    t += ')'
    sig_v.append(t)
s = '(' + ',\n'.join(sig_v) + ')'
print(s)
