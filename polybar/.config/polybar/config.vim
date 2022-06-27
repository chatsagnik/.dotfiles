;==========================================================
;
;
;   ██████╗  ██████╗ ██╗  ██╗   ██╗██████╗  █████╗ ██████╗
;   ██╔══██╗██╔═══██╗██║  ╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗
;   ██████╔╝██║   ██║██║   ╚████╔╝ ██████╔╝███████║██████╔╝
;   ██╔═══╝ ██║   ██║██║    ╚██╔╝  ██╔══██╗██╔══██║██╔══██╗
;   ██║     ╚██████╔╝███████╗██║   ██████╔╝██║  ██║██║  ██║
;   ╚═╝      ╚═════╝ ╚══════╝╚═╝   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
;
;
;   To learn more about how to configure Polybar
;   go to https://github.com/polybar/polybar
;
;   The README contains a lot of information
;
;==========================================================
[colors]
background = #282A2E
background-alt = #373B41
foreground = #C5C8C6
primary = #05998c 
secondary = #8ABEB7
alert = #A54242
disabled = #707880

[bar/example]
width = 100%
height = 22pt
; offset-x = 2.5%
; offset-y = 1%
fixed-center = true
; bottom = false
radius = 9.0

; dpi = 96

background = ${colors.background}
foreground = ${colors.foreground}

line-size = 3pt
line-color = #foo

border-size = 4pt
border-color = #00000000

padding-left = 0
padding-right = 1

module-margin-left = 1
module-margin-right = 2

separator = |
separator-foreground = ${colors.disabled}

font-0 = Meslo Nerd Font:size=10;2
font-1 = FontAwesome:size=12;4
font-2 = Meslo Nerd Font:size=10;2

modules-left = i3 xwindow 
modules-right = battery memory cpu date pulseaudio wlan xkeyboard filesystem

cursor-click = pointer
cursor-scroll = ns-resize

enable-ipc = true

tray-position = none
tray-padding = 2

; wm-restack = generic
; wm-restack = bspwm
; wm-restack = i3

; override-redirect = true

[module/i3]
type = internal/i3
pin-workspaces = true
show-urgent = true
strip-wsnumbers = true
index-sort = true
enable-click = false
enable-scroll = false
wrapping-scroll = false
reverse-scroll = false
fuzzy-match = true
ws-icon-0 = 1;
ws-icon-1 = 2;
ws-icon-2 = 3;
ws-icon-3 = 4;
ws-icon-4 = 5;
ws-icon-5 = 6;
ws-icon-6 = 7;
ws-icon-7 = 8;
ws-icon-8 = 9;
ws-icon-9 = 10;
ws-icon-default = 
format = <label-state> <label-mode>
label-mode = %mode%
label-mode-padding = 2
label-mode-background = #e60053
label-focused = %index% 
label-focused-foreground = #ffffff
label-focused-background = #3f3f3f
label-focused-underline = ${colors.primary}
label-focused-padding = 4
label-unfocused = %icon%
label-unfocused-padding = 4
label-visible = %index%
label-visible-underline = ${colors.primary}
label-visible-padding = 4
label-urgent = %index%
label-urgent-foreground = #000000
label-urgent-background = #bd2c40
label-urgent-padding = 4
label-separator = |
label-separator-padding = 2
label-separator-foreground = ${colors.primary}

[module/xworkspaces]
type = internal/xworkspaces

label-active = %name%
label-active-background = ${colors.background-alt}
label-active-underline= ${colors.primary}
label-active-padding = 1

label-occupied = %name%
label-occupied-padding = 1

label-urgent = %name%
label-urgent-background = ${colors.alert}
label-urgent-padding = 1

label-empty = %name%
label-empty-foreground = ${colors.disabled}
label-empty-padding = 1

[module/xwindow]
type = internal/xwindow
label = %title:0:30:...%

[module/battery]
type = internal/battery
full-at = 98
low-at = 5
battery = BAT0
adapter = ADP1
poll-interval = 5
time-format = %H:%M

format-charging-prefix = " " 
format-charging = <label-charging>
format-charging-underline = ${colors.primary}
format-charging-prefix-foreground=${colors.primary}

format-discharging-prefix = " "
format-discharging-prefix-foreground=${colors.primary}
format-discharging = <label-discharging>


format-full-prefix = " "
format-full-prefix-foreground=${colors.primary}
format-full = <label-full>

format-low-prefix = " " 
format-low-prefix-foreground=${colors.primary}
format-low = <label-low> 

label-charging = %percentage%%
label-discharging = %percentage%%
label-full = Fully Charged
label-low = Battery Low

ramp-capacity-0 = 
ramp-capacity-1 = 
ramp-capacity-2 = 
ramp-capacity-3 = 
ramp-capacity-4 = 

animation-charging-0 = 
animation-charging-1 = 
animation-charging-2 = 
animation-charging-3 = 
animation-charging-4 = 
animation-charging-framerate = 750

animation-discharging-0 = 
animation-discharging-1 = 
animation-discharging-2 = 
animation-discharging-3 = 
animation-discharging-4 = 
animation-discharging-framerate = 500

animation-low-0 = !
animation-low-1 = 
animation-low-framerate = 200

[module/filesystem]
type = internal/fs
interval = 25

mount-0 = / 

format-mounted = <label-mounted>
format-unmounted = <label-unmounted>

format-mounted-prefix = 
format-mounted-prefix-foreground = ${colors.primary}
label-mounted = %free% free


label-unmounted = %mountpoint% not mounted
label-unmounted-foreground = ${colors.disabled}

[module/pulseaudio]
type = internal/pulseaudio
interval = 5

format-volume-prefix = " "
format-volume-prefix-foreground = ${colors.primary}
format-volume =  <label-volume>
label-volume = %percentage%%

label-muted = muted
label-muted-foreground = ${colors.disabled}

[module/xkeyboard]
type = internal/xkeyboard
blacklist-0 = scroll lock

format-prefix = " "
format-prefix-foreground = ${colors.primary}
format = <label-layout> <label-indicator>
format-spacing = 0

label-layout = %layout%
label-layout-padding = 0
# label-layout = %layout%
# label-layout-foreground = ${colors.primary}

layout-icon-default = some-icon
layout-icon-1 = US

indicator-icon-default = D
indicator-icon-0 = caps lock;C ; 
# indicator-icon-1 = scroll lock;-SL;+SL
indicator-icon-1 = num lock;N ;N 

label-indicator-on = %icon%
label-indicator-off = %icon%

label-indicator-padding = 2
label-indicator-margin = 1
label-indicator-foreground = ${colors.background}
label-indicator-background = ${colors.secondary}

[module/memory]
type = internal/memory
interval = 2
format-prefix = " "
format-prefix-foreground = ${colors.primary}
label = %percentage_used%%

[module/cpu]
type = internal/cpu
interval = 2
format-prefix = " "
format-prefix-foreground = ${colors.primary}
label = %percentage:2%%

[network-base]
type = internal/network
interval = 5
format-connected = <label-connected>
format-disconnected = <label-disconnected>
label-disconnected = %{F#F0C674}%ifname%%{F#707880} disconnected

[module/wlan]
inherit = network-base
interface-type = wireless

format-connected-prefix =" "
format-connected-prefix-foreground = ${colors.primary}
format-connected = <label-connected>
format-connected-underline = ${colors.primary}
label-connected = %essid%
format-disconnected = <label-disconnected>
label-disconnected = disconnected


[module/eth]
inherit = network-base
interface-type = wired
label-connected = %{F#F0C674}%ifname%%{F-} %local_ip%

[module/date]
type = internal/date
interval = 1

time =  %H:%M
; date-alt = %Y-%m-%d %H:%M:%S
format-prefix = " "
format-prefix-foreground = ${colors.primary}

label = %time%
label-font = 3

[settings]
screenchange-reload = true
pseudo-transparency = true

; vim:ft=dosini
