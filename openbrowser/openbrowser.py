import webbrowser
from tkinter import *


root = Tk( )
root.title("Abrir Browser")
root.geometry('300x200')


def google():
    webbrowser.open('www.googe.com.br')
    
mygoogle = Button(root, text='Abrir o google', command=google).pack(pady=20)
root.mainloop()