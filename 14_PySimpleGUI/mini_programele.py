import PySimpleGUI as sg
import random

def update():
    r = random.randint(1, 100)
    text_elem.update("Rezultatas: {}".format(r), background_color=sg.theme_background_color())

def pristatymas():
    sg.theme('light brown 3')

    

layout = [
    [sg.Button('Naujas skaicius', enable_events=True, key='-FUNCTION-', font='Helvetica 16')],
    [sg.Text('Rezultatas:', size=(25, 1), key='-text-', font='Helvetica 16')]
]

window = sg.Window('Atsitiktiniai skaiciai', layout, size=(350, 100))

while True:
    event, values = window.read()

    if event in (sg.WIN_CLOSED, 'exit'):
        break

    if event == '-FUNCTION-':
        text_elem = window['-text-']
        update()

window.close()
