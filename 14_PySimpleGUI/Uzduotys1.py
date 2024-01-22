import PySimpleGUI as sg  


layout = [
    [sg.Text('Koks tavo vardas?')],
    [sg.Input()],
    [sg.Text('Kiek tau metu?')],
    [sg.Input()],
    [sg.Text('Kuriame mieste tu gyveni?')],
    [sg.Input()],
    [sg.Button('Patvirtinti')]]


window = sg.Window('Prisistatymas', layout)

event, values = window.read()

print('Sveiki', values[0], 'Malonu susipazinti')

window.close()





