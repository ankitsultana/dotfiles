import math, subprocess, sys

p = subprocess.Popen(["ioreg", "-rc", "AppleSmartBattery"], stdout=subprocess.PIPE)
output = p.communicate()[0]

o_max = [l for l in output.splitlines() if 'MaxCapacity' in l][0]
o_cur = [l for l in output.splitlines() if 'CurrentCapacity' in l][0]
c_check = [l for l in output.splitlines() if 'IsCharging' in l][0]

b_max = float(o_max.rpartition('=')[-1].strip())
b_cur = float(o_cur.rpartition('=')[-1].strip())
is_charging = False

if "Yes" in c_check:
    is_charging = True

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

bolt = u'\u26A1'
cross = u'\u00D7'
c = green if is_charging else red
ch = bolt if is_charging else cross
sys.stdout.write(c.encode('utf-8') + ch.encode('utf-8') + ' ')

output = charge

sys.stdout.write(color.encode('utf-8') + str(output).encode('utf-8'))
