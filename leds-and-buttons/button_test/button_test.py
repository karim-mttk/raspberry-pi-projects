import RPi.GPIO as GPIO
from time import sleep
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

GPIO.setup(2, GPIO.IN)
while True:
    if GPIO.input(2)==0:
        print("Button 1 working")
        sleep(0.25)