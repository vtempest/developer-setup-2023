function fish_greeting
  #user
  echo -n (set_color $fish_color_user)👤 (whoami)@(hostname)
  #ip
  set -xg ip (host -W 1 -t txt o-o.myaddr.l.google.com 8.8.8.8|grep -oP "client-subnet \K(\d{1,3}\.){3}\d{1,3}" 2>&1)
  echo -n (set_color $fish_color_end) 🌎 $ip
  #os
  echo -n (set_color $fish_color_operator) 💻 (cat /etc/*release| grep -oP -m1 "NAME=\"\K([^\"]*)")
  #disk
  echo -n (set_color $fish_color_cwd) 📁 (df | grep '/$' | awk '{print $5}')
  #cpu
  echo -n (set_color $fish_color_param) 📈 (sed -n '/model name/p' /proc/cpuinfo | cut -d':' -f2 | head -1 | awk '{$1=$1};1' )
  #top
 # echo (set_color $fish_color_quote) 🔝 (ps -eo pcpu,comm --sort=-%cpu --no-headers  | head -1 | sed 's/\.[0-9]/%/' | awk '{$1=$1};1' )
end
