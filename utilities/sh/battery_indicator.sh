#!/bin/bash

BOLT='⚡'
CROSS='✖'

if [[ `uname` == 'Linux' ]]; then
  current_charge=$(cat /proc/acpi/battery/BAT1/state | grep 'remaining capacity' | awk '{print $3}')
  total_charge=$(cat /proc/acpi/battery/BAT1/info | grep 'last full capacity' | awk '{print $4}')
else
  battery_info=`ioreg -rc AppleSmartBattery`
  current_charge=$(echo $battery_info | grep -o '"CurrentCapacity" = [0-9]\+' | awk '{print $3}')
  total_charge=$(echo $battery_info | grep -o '"MaxCapacity" = [0-9]\+' | awk '{print $3}')
  is_charging=$(echo $battery_info | grep -co '"IsCharging" = Yes')
fi

charge=$((current_charge * 100 / total_charge))

output=''

if [ $charge -gt 70 ]; then
    output='#[fg=green]'
elif [ $charge -gt 35 ]; then
    output='#[fg=yellow]'
else
    output='#[fg=red]'
fi

output+=$charge
output+='%'

if [ $is_charging -eq 1 ]; then
    output+=' #[fg=green]'$BOLT
else
    output+=' #[fg=red]'$CROSS
fi

echo $output
#echo $is_charging
