import RPi.GPIO as GPIO
import time
led_1 = False
count = 0
leds = 21, 20, 16

def setupGPIO():
    global led
    GPIO.setmode(GPIO.BCM)
    GPIO.setwarnings(False)
    GPIO.setup(leds, GPIO.OUT, initial = GPIO.LOW)
    GPIO.setup(21, GPIO.OUT, initial = GPIO.LOW)
    GPIO.setup(2, GPIO.IN, pull_up_down= GPIO.PUD_UP)

def flashLED(count):
    global led
    for i in range (count):
        GPIO.output(leds, GPIO.HIGH)
        time.sleep(.2)
        GPIO.output(leds, GPIO.LOW)
        time.sleep(.2)

def switch(ev=None):
    global led_1, count
    led_1 = not led_1
    count +=1
    
    if led_1 == True:
        print("green light on\tcount: " + str(count))
        GPIO.output(21, GPIO.HIGH)
    else:
        print("green light off\tcount: " + str(count))
        GPIO.output(21, GPIO.LOW)
    
        
def detect_BP():
     GPIO.add_event_detect(2, GPIO.FALLING, callback=switch, bouncetime=300)
        
def wait():
    while True:
        time.sleep(1)

setupGPIO()
flashLED(5)
detect_BP()

wait()

