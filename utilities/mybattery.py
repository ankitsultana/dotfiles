# A Python 2 script to check the battery level. Is run every time zshrc is sourced
# Checkout my zshrc to know how
import math, subprocess, sys

p = subprocess.Popen(["ioreg", "-rc", "AppleSmartBattery"], stdout=subprocess.PIPE)
output = p.communicate()[0]

o_max = [l for l in output.splitlines() if 'MaxCapacity' in l][0]
o_cur = [l for l in output.splitlines() if 'CurrentCapacity' in l][0]

b_max = float(o_max.rpartition('=')[-1].strip())
b_cur = float(o_cur.rpartition('=')[-1].strip())

charge = b_cur / b_max
charge_threshold = int(math.ceil(10 * charge))

charge = int(math.ceil(charge * 100))

yellow = '%{%F{yellow}%}'
green = '%{%F{green}%}'
red = '%{%F{red}%}'

color = ''
if charge_threshold >= 5 and charge_threshold < 7:
    color = yellow
elif charge_threshold <= 4:
    color = red
else:
    color = green

block = u'\u2588'

filled = math.ceil(float(charge)/10)

output += ''.encode('utf-8')
output = int(filled) * block
remain = 10 - filled
output += int(remain) * ' '
output += '|'

sys.stdout.write(color.encode('utf-8') + output.encode('utf-8'))
