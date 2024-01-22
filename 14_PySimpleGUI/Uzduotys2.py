import PySimpleGUI as sg


layout = [
    [sg.Text('Jusu Vardas?')],
    [sg.Input(key='-INPUT-')],
    [sg.Text(size=(13, 1), key='-OUTPUT-')],
    [sg.Button('Patvirtinti'), sg.Button('Iseiti')]
]

window = sg.Window('Inform', layout)

while True:
    event, value = window.read()
    if event == sg.WINDOW_CLOSED or event == 'Exit':
        break

    window['-OUTPUT-'].update( 
    'Sveiki'+ value['-INPUT-'] + '! Nusisipsok, ir vel pirmadienis :)p',
text_color='#F7D060'
    )

window.close()
