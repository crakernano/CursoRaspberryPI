from Tkinter import *

class App:
    def __init__(self, master):
        frame = Frame(master)
        frame.pack()
	Etiqueta = Label(frame,text="Pulsa el boton.")
	Etiqueta.pack()
        self.hi_there = Button(frame, text="Hola", command=self.saluda)
        self.hi_there.pack(side=LEFT)
    def saluda(self):
        print "hola mundo!"

root = Tk()
app = App(root)
root.mainloop()
