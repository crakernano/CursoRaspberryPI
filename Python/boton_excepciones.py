GPIO.add_event_detect(4, GPIO.RISING)

def my_callback():
    print 'boton pulsado!'

GPIO.add_event_callback(4, my_callback)
