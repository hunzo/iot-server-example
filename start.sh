docker run \
	--name iot-server \
	-p 1883:1883 \
	-p 9001:9001 \
	-v $(pwd)/mosquitto/config/mosquitto.conf:/mosquitto/config/mosquitto.config \
	-v $(pwd)/mosquitto/log:/mosquitto/log \
	-v $(pwd)/mosquitto/data:/mosquitto/data \
	-d \
	eclipse-mosquitto \
