# !/usr/local/bin/python3

import subprocess
import tkinter as tk
from tkinter import *
from tkinter import filedialog, ttk

global commitTop, commitBottom
commitTop = commitBottom = ()

git = subprocess.run(['/usr/local/bin/git', 'log',
                      '--pretty=format:"%h \t%s"'], stdout=subprocess.PIPE)

checkouts_top = (git.stdout.decode('utf-8').splitlines())
checkouts_bottom = checkouts_top[:]

print(checkouts_top)


def runProgram(*argv):
    print("Resolution : ")
    print(resolution.get())
    print()
    print ("Layers ON: ")
    for val in buttons:
        if buttons[val].get() == 1:
            print(val)
    print()
    print ("Layers OFF: ")
    for val in buttons:
        if buttons[val].get() == 0:
            print(val)
    print()
    print("Commit TOP : ")
    print(commitTop.get())

    print()
    print("Commit Bottom : ")
    print(commitBottom.get())


def CurSelect(event):
    widget = event.widget
    selection = widget.curselection()
    picked = widget.get(selection)
    source = ((str(widget).split('.'))[1])[-1:]
    print(source, picked)

    if source == 3:
        commitTop = picked
        print("CommitTop = ", commitTop)

    elif source == 4:
        print("HERE")
        commitBottom = picked
        print("CommitBottom = ", commitBottom)


def OnClick(event, obj):
    print ("you clicked on", obj)


root = Tk()

root.configure(background='#ececec')

frame1 = tk.LabelFrame(root, text="frame1", width=600,
                       height=50, bd=1, background='#ececec')
frame2 = tk.LabelFrame(root, text="Layers", width=200,
                       height=200, bd=1, background='#ececec')
frame3 = tk.LabelFrame(root, text="Commit 1", width=400,
                       height=200, bd=1, background='#ececec')
frame4 = tk.LabelFrame(root, text="Commit 2", width=400,
                       height=200, bd=1, background='#ececec')
frame5 = tk.LabelFrame(root, text="Resolution (dpi)", width=600,
                       height=50, bd=0, background='#ececec')

frame1.grid(row=0, column=0, columnspan=2, padx=5, sticky='N E W S')
frame2.grid(row=1, column=0, rowspan=2, padx=5, sticky='N E W S')
frame3.grid(row=1, column=1, padx=5, sticky='N E W S')
frame4.grid(row=2, column=1, padx=5, sticky='N E W S')
frame5.grid(row=3, column=0, columnspan=2, padx=5, sticky='N E W S')

root.grid_columnconfigure(0, weight=1)
root.grid_columnconfigure(1, weight=10)

root.grid_rowconfigure(0, weight=1)
root.grid_rowconfigure(1, weight=10)
root.grid_rowconfigure(2, weight=10)
root.grid_rowconfigure(3, weight=1)

buttons = {'Top layer': '1',
           'Bottom layer': '1',
           'Paste bottom': '1',
           'Paste top': '1',
           'Silk top': '1',
           'Silk bottom': '1',
           'Mask top': '1',
           'Mask bottom': '1',
           'Edge cuts': '1',
           'Margin': '1',
           'Inner1': '1',
           'Inner2': '1',
           'Dwgs_User': '1',
           'Comments_User': '1',
           'ECO1': '1',
           'ECO2': '1',
           'Fab bottom': '1',
           'Fab top': '1',
           'Adhesive bottom': '1',
           'Adhesive top': '1',
           'Courtyard bottom': '1',
           'Courtyard top': '1'
           }
initLayers = []

for b in buttons:
    buttons[b] = Variable()
    buttons[b].set(1)
    l = ttk.Checkbutton(frame2, text=b, variable=buttons[b], onvalue=1, offvalue=0).pack(anchor='w')

commitTop = Variable()
listTop = Listbox(frame3, bd=0, selectmode=SINGLE, exportselection=False)
listTop.grid(column=0, row=0, sticky=(N, E, W))
scrollTop = ttk.Scrollbar(frame3, orient=VERTICAL, command=listTop.yview)
scrollTop.grid(column=1, row=0, sticky=(N, E, W))
listTop['yscrollcommand'] = scrollTop.set
# listTop.bind('<<ListboxSelect>>', lambda event, obj=listTop: OnClick(CurSelect, obj))
listTop.bind('<<ListboxSelect>>', CurSelect)

commitBottom = Variable()
listBottom = Listbox(frame4, bd=0, selectmode=SINGLE, exportselection=False)
listBottom.grid(column=0, row=0, sticky=(N, E, W))
scrollBottom = ttk.Scrollbar(frame4, orient=VERTICAL, command=listBottom.yview)
scrollBottom.grid(column=1, row=0, sticky=(N, E, W))
listBottom['yscrollcommand'] = scrollBottom.set
listBottom.bind('<<ListboxSelect>>', CurSelect)

frame3.grid_columnconfigure(0, weight=1)
frame3.grid_columnconfigure(1, weight=0)
frame3.grid_rowconfigure(0, weight=1)

frame4.grid_columnconfigure(0, weight=1)
frame4.grid_columnconfigure(1, weight=0)
frame4.grid_rowconfigure(0, weight=1)

buttonOK = ttk.Button(
    frame5, text="OK", command='runProgram', default='active')
buttonOK.grid(column=7, row=0, sticky='w', pady=10)

buttonCancel = ttk.Button(frame5, text="Cancel", command='')
buttonCancel.grid(column=6, row=0, sticky='e', pady=10)


resolution = IntVar()
resolution.set(300)

button100 = ttk.Radiobutton(frame5, text="100", variable=resolution, value=100)
button300 = ttk.Radiobutton(frame5, text="300", variable=resolution, value=300, )
button600 = ttk.Radiobutton(frame5, text="600", variable=resolution, value=600)
button1000 = ttk.Radiobutton(frame5, text="1000", variable=resolution, value=1000)

button100.grid(column=1, row=0)
button300.grid(column=2, row=0)
button600.grid(column=3, row=0)
button1000.grid(column=4, row=0)

frame5.grid_columnconfigure(0, weight=0)
frame5.grid_columnconfigure(1, weight=0)
frame5.grid_columnconfigure(2, weight=0)
frame5.grid_columnconfigure(3, weight=0)
frame5.grid_columnconfigure(4, weight=0)
frame5.grid_columnconfigure(5, weight=5)
frame5.grid_columnconfigure(6, weight=0)
frame5.grid_columnconfigure(7, weight=1)
frame5.grid_rowconfigure(0, weight=1)

for line in checkouts_top:
    listTop.insert(END, line[1:-1])

for i in range(1, len(checkouts_top) - 1, 2):
    listTop.itemconfigure(i, background='#ececec')

for line in checkouts_bottom:
    listBottom.insert(END, line[1:-1])

for i in range(1, len(checkouts_bottom) - 1, 2):
    listBottom.itemconfigure(i, background='#ececec')

for child in root.winfo_children():
    child.grid_configure(padx=5, pady=5)


root.bind('<Return>', runProgram)
root.mainloop()
