#!/usr/local/bin/python3
""".
Test of linting
just checking it is working
"""

import subprocess
from tkinter import *
from tkinter import filedialog, ttk

git = subprocess.run(['/usr/local/bin/git', 'log',
                      '--pretty=format:"%h, %s"'], stdout=subprocess.PIPE)
checkouts_left = (git.stdout.decode('utf-8').splitlines())
checkouts_right = checkouts_left[:]


root = Tk()


root.title('Main Window')


listLeft = Listbox(root, height=10)
listLeft.grid(column=0, row=0, sticky=(N, E, W), pady=10, padx=(10, 0))
scrollLeft = ttk.Scrollbar(root, orient=VERTICAL, command=listLeft.yview)
scrollLeft.grid(column=1, row=0, sticky=(N, E, W), pady=10, padx=(0, 10))
listLeft['yscrollcommand'] = scrollLeft.set


listRight = Listbox(root, height=10)
listRight.grid(column=2, row=0, sticky=(N, E, W), pady=10)
scrollRight = ttk.Scrollbar(root, orient=VERTICAL, command=listRight.yview)
scrollRight.grid(column=3, row=0, sticky=(N, E, W), pady=10, padx=(0, 10))
listRight['yscrollcommand'] = scrollRight.set

root.grid_columnconfigure(0, weight=1)
root.grid_columnconfigure(2, weight=1)
root.grid_rowconfigure(0, weight=1)


for line in checkouts_left:
    listLeft.insert(END, line[1:-1])

for line in checkouts_right:
    listRight.insert(END, line[1:-1])

for i in range(0, len(checkouts_left), 2):
    listLeft.itemconfigure(i, background='#f0f0f0')

for i in range(0, len(checkouts_right), 2):
    listRight.itemconfigure(i, background='#f0f0f0')

root.mainloop()
