#!/usr/local/bin/python3
""".
Another edit agaiin randomnesss
"""

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


root.title('Main Window')

layerSelect1 = ttk.Checkbutton(root, text="F.Cu")
layerSelect2 = ttk.Checkbutton(root, text="B.Cu")
layerSelect3 = ttk.Checkbutton(root, text="F.Mask")
layerSelect4 = ttk.Checkbutton(root, text="B.Mask")
layerSelect5 = ttk.Checkbutton(root, text="F.Silk")
layerSelect6 = ttk.Checkbutton(root, text="B.Silk")
layerSelect7 = ttk.Checkbutton(root, text="ECO1")
layerSelect8 = ttk.Checkbutton(root, text="ECO2")

layerSelect1.grid(column=0, row=1, sticky=(N, E, W), padx=(10, 0))
layerSelect2.grid(column=0, row=2, sticky=(N, E, W), padx=(10, 0))
layerSelect3.grid(column=0, row=3, sticky=(N, E, W), padx=(10, 0))
layerSelect4.grid(column=0, row=4, sticky=(N, E, W), padx=(10, 0))
layerSelect5.grid(column=0, row=5, sticky=(N, E, W), padx=(10, 0))
layerSelect6.grid(column=0, row=6, sticky=(N, E, W), padx=(10, 0))
layerSelect7.grid(column=0, row=7, sticky=(N, E, W), padx=(10, 0))
layerSelect8.grid(column=0, row=8, sticky=(N, E, W), padx=(10, 0))


listLeft = Listbox(root, height=10)
listLeft.grid(column=1, row=0, sticky=(N, E, W), pady=10, padx=(10, 0))
scrollLeft = ttk.Scrollbar(root, orient=VERTICAL, command=listLeft.yview)
scrollLeft.grid(column=2, row=0, sticky=(N, E, W), pady=10, padx=(0, 10))
listLeft['yscrollcommand'] = scrollLeft.set


listRight = Listbox(root, height=10)
listRight.grid(column=3, row=0, sticky=(N, E, W), pady=10)
scrollRight = ttk.Scrollbar(root, orient=VERTICAL, command=listRight.yview)
scrollRight.grid(column=4, row=0, sticky=(N, E, W), pady=10, padx=(0, 10))
listRight['yscrollcommand'] = scrollRight.set

root.grid_columnconfigure(1, weight=1)
root.grid_columnconfigure(3, weight=1)
root.grid_rowconfigure(0, weight=1)


for line in checkouts_left:
    listLeft.insert(END, line[1:-1])


for i in range(0, len(checkouts_left), 2):
    listLeft.itemconfigure(i, background='#f0f0f0')


for line in checkouts_right:
    listRight.insert(END, line[1:-1])


for i in range(0, len(checkouts_right), 2):
    listRight.itemconfigure(i, background='#f0f0f0')


root.mainloop()
