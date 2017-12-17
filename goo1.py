"""
Code illustration: 01.03
A demonstration of all core tkinter widgets
Tkinter GUI Application Development Blueprints
"""

from tkinter import *
import sys
import os
import subprocess


git = subprocess.run(['/usr/local/bin/git','log',
                 '--pretty=format:"%h : %s"'
                 ], stdout = subprocess.PIPE)
checkouts = (git.stdout.decode('utf-8'))
checkouts = checkouts.splitlines()
print (type(checkouts))


root = Tk()
root.title('I am a Top Level Widget, parent to other widgets')
#create a frame widget for placing menu
my_menu_bar = Frame(root, relief = 'raised', bd=2)
my_menu_bar.pack(fill = X)

#create another frame(my_frame_2) to hold a list box, Spinbox Widget,Scale Widget, :
my_frame = Frame(root, bd=2, relief=GROOVE)
my_frame.pack(side=RIGHT)



#add my_listbox widget to my_frame_2
Label(my_frame, text='Below is an example of my_listbox widget:').pack()
my_listbox = Listbox(my_frame, height=4)
for line in checkouts:
    my_listbox.insert(END, line)
my_listbox.pack()


root.mainloop()
