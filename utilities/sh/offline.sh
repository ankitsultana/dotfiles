offline='#[fg=green]✔'
online='#[fg=red]×'

if [[ -f ~/.offline ]]; then
    echo $online
else
    echo $offline
fi
