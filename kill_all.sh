echo "kill: $1"
processes=$(ps xua | grep "$1" | grep -v 'grep'| grep -v 'kill_all.sh' | awk '{print $2}' | tr '\n' ' ')
echo "try to kill: $processes \n"
if [[ -n "$processes" ]]; then
    echo "kill..."
    kill -9 $processes
fi
