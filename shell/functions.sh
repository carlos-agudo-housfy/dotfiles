function cdd() {
  cd "$(ls -d -- */ | fzf)" || echo "Invalid directory"
}

function j() {
  fname=$(declare -f -F _z)

  [ -n "$fname" ] || source "$DOTLY_PATH/modules/z/z.sh"

  _z "$1"
}

function recent_dirs() {
  # This script depends on pushd. It works better with autopush enabled in ZSH
  escaped_home=$(echo $HOME | sed 's/\//\\\//g')
  selected=$(dirs -p | sort -u | fzf)

  cd "$(echo "$selected" | sed "s/\~/$escaped_home/")" || echo "Invalid directory"
}

myLocalIP() {
        wifiIP=$(ifconfig wlo1 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p')
        wiredIP=$(ifconfig enp3s0 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p')

        if [ -n "$wifiIP" ];then
                echo "WIFI is active"
                export HOUSFY_DEBUG_HOST_IP="$wifiIP"
        else
                echo "WIRED is active"
                export HOUSFY_DEBUG_HOST_IP="$wiredIP"
        fi

        echo "Value of HOUSFY_DEBUG_HOST_IP: $HOUSFY_DEBUG_HOST_IP"
}

myLocalHardcodedIP() {
 export HOUSFY_DEBUG_HOST_IP="127.0.0.1"
}

resetDHCP() {
        wifiIP=$(ifconfig wlo1 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p')
        wiredIP=$(ifconfig enp3s0 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p')

        if [ -n "$wifiIP" ];then
                $(sudo dhclient -r wlo1)
                $(sudo dhclient wlo1)
                echo "DHCP for WIFI reseted"
        else
                $(sudo dhclient -r enp3s0)
                $(sudo dhclient enp3s0)
                echo "DHCP for WIRED reseted"
        fi
}