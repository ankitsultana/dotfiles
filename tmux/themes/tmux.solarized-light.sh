#### COLOUR

battery_color=colour15
date_color=colour23
music_color=colour15
left_section_color2=colour7
time_color=colour0
tm_color_active=colour9
tm_color_inactive=colour241
tm_color_feature=colour7
tm_color_music=colour198
tm_active_border_color=colour39

# separators
tm_separator_left_bold="◀"
tm_left_separator_black=''
tm_right_separator_black=''
tm_separator_left_thin="❮"
tm_separator_right_bold="▶"
tm_separator_right_thin="❯"

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5


# default statusbar colors
# set-option -g status-bg colour13
set-option -g status-fg $tm_color_active
set-option -g status-bg colour7
set-option -g status-style default

# default window title colors
#set-window-option -g window-status-fg $tm_color_inactive
#set-window-option -g window-status-bg colour7
#set -g window-status-format "#I #W"

set-window-option -g window-status-style fg=$tm_color_inactive,bg=colour7
set -g window-status-format "#I #W#[bg=colour7]#[fg=colour7]$tm_left_separator_black"

# active window title colors
#set-window-option -g window-status-current-fg $tm_color_active
#set-window-option -g window-status-current-bg colour7
#set-window-option -g  window-status-current-format "#[bold]#I #W"
set-window-option -g window-status-current-style fg=$tm_color_active,bg=colour7
set -g window-status-current-format "#I #W#[bg=colour7]#[fg=colour7]$tm_left_separator_black"
set -g window-status-separator ""

# pane border
#set-option -g pane-border-fg $tm_color_inactive
#set-option -g pane-active-border-fg $tm_active_border_color
set-option -g pane-border-style  fg=$tm_color_inactive
set-option -g pane-active-border-style fg=$tm_active_border_color

# message text
#set-option -g message-bg default
#set-option -g message-fg $tm_color_active
set-option -g message-style bg=default,fg=$tm_color_active

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# clock
set-window-option -g clock-mode-colour $tm_color_active

tm_tunes="#[fg=$tm_color_music]#(osascript ~/.utilities/applescripts/itunes.scpt)"
tm_battery="#(~/.utilities/sh/battery_indicator.sh)"

tm_date="#[fg=$time_color] %R #[fg=$date_color]%d %b"
tm_host="#[fg=$tm_color_feature,bold]#h"

tm_session_name="#[bg=$battery_color]#[fg=$tm_color_feature,bold] $tm_battery "$offline
status_left=$tm_session_name"| #S #[bg=colour7]#[fg=$battery_color]"$tm_left_separator_black" #[bg=colour3]"

set -g status-left $status_left
offline='#(~/.utilities/sh/offline.sh) '

mah_separator1="#[fg=$music_color]$tm_right_separator_black#[bg=$music_color]"
mah_separator2="#[fg=$left_section_color2]$tm_right_separator_black#[bg=$left_section_color2]"

status_right=$mah_separator1' '$tm_tunes' '$mah_separator2' '$tm_date
set -g status-right $status_right
