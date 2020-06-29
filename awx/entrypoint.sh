until $(curl --output /dev/null --silent --head --fail http://localhost/api/v2/ping); do
    printf '.'
    sleep 5
done
/bin/sh