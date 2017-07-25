from Tkinter import *
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
GPIO.setup(25, GPIO.OUT, initial=GPIO.LOW)

estado = 0

class App:
	def __init__(self, master):
        	frame = Frame(master)
        	frame.pack()
		if estado == 0:
        	self.hi_there = Button(frame, text="Encender", command=self.enciende)
			estado = 1
		else:
			self.hi_there = Button(frame, text="Apagar", command=self.apagar)
        	self.hi_there.pack(side=LEFT)
			estado = 0

	def enciende(self):
        	print "Encendido."
		GPIO.output(25, GPIO.HIGH)

	def apagar(self):
		print "Apagar."
		GPIO.output(25, GPIO.LOW)

root = Tk()
app = App(root)
root.mainloop()
