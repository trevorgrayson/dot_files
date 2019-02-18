#!/usr/bin/env python
import time
import serial
import requests

usbport = '/dev/cu.usbserial-AI05LZ7Y'

# print("you probably need to replace the usbport value with a good usb device")

def get(icao):
    response = requests.get(
        "https://aviationweather.gov/metar/data?ids={}&format=raw&hours=0&taf=off&layout=off&date=0".format(
        icao
        ))
    # 

    START = "<!-- Data starts here -->"
    ENDING = "<!-- Data ends here -->"

    if response.status_code == 200:
        flag = False
        for line in response.text.splitlines():

            if line == START:
                flag = True
                continue
            elif line == ENDING:
                break

            if flag:
                return str(line)[:50]
            
    else:
        print "http error"


with serial.Serial(usbport, 9600, timeout=1) as ser:
    print(ser.name)

    icao = 'KSMO'

    while True:
        if icao == 'KSMO':
            icao = 'KVNY'
        else:
            icao = 'KSMO'

        metar = get(icao)
        ser.write(metar + '\n')
        print metar

        time.sleep(10)


