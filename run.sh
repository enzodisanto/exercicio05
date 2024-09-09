chmod +x ./hello-server

./hello-server &

sleep 5

for LOGIN in Homer Bart Maggie; do
    echo "$(date): $(curl -s http://localhost:8080/${LOGIN})"
done
