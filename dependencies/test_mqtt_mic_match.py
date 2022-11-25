#!/usr/bin/env python3

from os import environ
import paho.mqtt.client as mqtt
from dotenv import load_dotenv
import json
import wave
from pyaudio import PyAudio, Stream, paInt16, paContinue
from contextlib import contextmanager
from typing import AsyncGenerator, Generator
import time

load_dotenv()

FORMAT = paInt16
CHANNELS = 1
RATE = 16000
CHUNK = 16000

class VoskMqttServerTest():
    def __init__(self):
        self.pid = 'asr'
        self.mqtt_address = '130.60.24.99'
        self.mqtt_username = 'vrtz'
        self.mqtt_password = 'ZU SETZEN'
        self.__init_mqtt_client()

    def run(self):
        self.client.connect(self.mqtt_address)
        self.client.loop_start()
        p = PyAudio()
        s = p.open(
            format = FORMAT, 
            channels = CHANNELS,
            rate = RATE,
            input = True, 
            frames_per_buffer = CHUNK)

        s.start_stream()

        while s.is_active():
            data = s.read(CHUNK)
            if len(data) == 0:
                print('Disconnecting...')
                self.client.disconnect()
                break

            self.client.publish(self.pid + '/stream/voice', data)

        s.stop_stream()
        s.close()
        p.terminate()

    def __on_mqtt_connect(self, client, obj, flags, rc):
        print('Connected to mqtt server')
        self.client.subscribe(self.pid + '/match')

    def __on_mqtt_publish(self, client, obj, mid):
        print('test')


    def __init_mqtt_client(self):
        self.client = mqtt.Client()
        self.client.username_pw_set(self.mqtt_username, self.mqtt_password)
        self.client.on_connect = self.__on_mqtt_connect
        self.client.on_message = self.__on_mqtt_message

    def __on_mqtt_message(self, client, userdata, msg):
        print(msg.topic, json.loads(msg.payload))

if __name__ == "__main__":
    server = VoskMqttServerTest()
    server.run()
