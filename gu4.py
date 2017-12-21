#!/usr/local/bin/python3

import subprocess
from tkinter import *
from tkinter import filedialog, ttk
from tkinter import ttk
import tkinter as tk

git = subprocess.run(['/usr/local/bin/git', 'log',
                      '--pretty=format:"%h, %s"'], stdout=subprocess.PIPE)
checkouts_left = (git.stdout.decode('utf-8').splitlines())
checkouts_right = checkouts_left[:]


root = Tk()


# scrollLeft = ttk.Scrollbar(root, orient=VERTICAL, command=listLeft.yview)
# scrollLeft.grid(column=2, row=0, rowspan=10, sticky=(N, E, W), pady=10, padx=(0, 10))
# listLeft['yscrollcommand'] = scrollLeft.set
# root.geometry("320x400")

frame1 = tk.LabelFrame(root, text="frame1", width=600, height=50, bd=2)
frame2 = tk.LabelFrame(root, text="frame2", width=200, height=200, bd=2)
frame3 = tk.LabelFrame(root, text="frame3", width=200, height=200, bd=2)
frame4 = tk.LabelFrame(root, text="frame4", width=200, height=200, bd=2)
frame5 = tk.LabelFrame(root, text="frame5", width=600, height=50, bd=2)

frame1.grid(row=0, column=0, columnspan=3, padx=8, sticky='N E W S')
frame2.grid(row=1, column=0, padx=8, sticky='N E W S')
frame3.grid(row=1, column=1, padx=8,  sticky='N E W S')
frame4.grid(row=1, column=2, padx=8, sticky='N E W S')
frame5.grid(row=2, column=0, columnspan=3, padx=8, sticky='N E W S')

root.grid_columnconfigure(0, weight=1)
root.grid_columnconfigure(1, weight=4)
root.grid_columnconfigure(2, weight=4)

root.grid_rowconfigure(0, weight=1)
root.grid_rowconfigure(1, weight=2)
root.grid_rowconfigure(2, weight=1)

listLeft = Listbox(frame3)
listLeft.grid(column=0, row=0, sticky=(E, W))
scrollLeft = ttk.Scrollbar(frame3, orient=VERTICAL, command=listLeft.yview)
scrollLeft.grid(column=1, row=0, sticky=(E, W))
listLeft['yscrollcommand'] = scrollLeft.set


listRight = Listbox(frame4)
listRight.grid(column=0, row=0, sticky=(E, W))
scrollRight = ttk.Scrollbar(frame4, orient=VERTICAL, command=listRight.yview)
scrollRight.grid(column=1, row=0, sticky=(E, W))
listRight['yscrollcommand'] = scrollRight.set


frame3.grid_columnconfigure(0, weight=1)
frame3.grid_columnconfigure(1, weight=0)

frame4.grid_columnconfigure(0, weight=1)
frame4.grid_columnconfigure(1, weight=0)


for line in checkouts_left:
    listLeft.insert(END, line[1:-1])


for i in range(0, len(checkouts_left), 2):
    listLeft.itemconfigure(i, background='#f0f0f0')


for line in checkouts_right:
    listRight.insert(END, line[1:-1])


for i in range(0, len(checkouts_right), 2):
    listRight.itemconfigure(i, background='#f0f0f0')


root.mainloop()
