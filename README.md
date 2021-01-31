### IOT SERVER

## START Container
```shell
docker run \
	--name iot-server \
	-p 1883:1883 \
	-p 9001:9001 \
	-v $(pwd)/mosquitto/config/mosquitto.conf:/mosquitto/config/mosquitto.config \
	-v $(pwd)/mosquitto/log:/mosquitto/log \
	-v $(pwd)/mosquitto/data:/mosquitto/data \
	-d \
	eclipse-mosquitto \
```

## Subscriber
```shell
    docker exec -it iot-server mosquitto_sub -t TOPPIC_NAME -m 'MESSAGE'
```

## Publisher
```shell
    docker exec -it iot-server mosquitto_pub -t TOPPIC_NAME 
```
