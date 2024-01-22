import PySimpleGUI as sg

def calculate_vat(amount, vat_rate):
    vat_amount = amount * vat_rate / 100
    total_amount = amount + vat_amount
    return vat_amount, total_amount

def main():
    layout = [
        [sg.Text('Įveskite sumą:', size=(15, 1)), sg.InputText(key='amount')],
        [sg.Text('PVM tarifas (%):', size=(15, 1)), sg.InputText(key='vat_rate')],
        [sg.Button('Skaičiuoti PVM'), sg.Button('Išeiti')],
        [sg.Text(size=(20, 1), key='result_text')],
    ]

    window = sg.Window('PVM Skaičiuoklė', layout)

    while True:
        event, values = window.read()

        if event in (sg.WIN_CLOSED, 'Išeiti'):
            break
        elif event == 'Skaičiuoti PVM':
            try:
                amount = float(values['amount'])
                vat_rate = float(values['vat_rate'])
                vat_amount, total_amount = calculate_vat(amount, vat_rate)

                result_text = f"PVM suma: {vat_amount:.2f}\nViso suma su PVM: {total_amount:.2f}"
                window['result_text'].update(result_text)
            except ValueError:
                sg.popup_error('Įvesties klaida. Įveskite teisingus skaičius.')

    window.close()

if __name__ == '__main__':
    main()