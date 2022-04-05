import re
import webbrowser
print("Welcome to the Dell DPS tracking")
print()
print()
print("Pick the menu")
print("Type 'U' for UPS")
print("Type 'F' for Fedex")
print("Type 'Q' for Quit")

while True:
    menu = input('Please, choose one of the above options: ').upper()
    if menu == 'U'.upper():
        print('You choose UPS Carrier')
        dps = int(input("Type UPS DPS number only: "))
        link = ('https://wwwapps.ups.com/WebTracking/OnlineTool?InquiryNumber=3037671&DestinationCountry=br&TypeOfInquiryNumber=R&IATA=BR&Lang=por&submit=submit')
        res=re.sub(r'\d\d\d\d\d\d\d', str(dps), link)
        print('')
        webbrowser.open(res)
    if menu == 'F'.upper():
        print('You choose Fedex Carrier')
        dps = int(input("Please type Fedex DPS number only: "))
        link = ('https://servicos.rapidaocometa.com.br/rastreamento/tracking/open-tracking/trata-rastreamento-aberto.php?&cnpj=00462691000145&tipo=P&numero=3095198')
        res=re.sub(r'(?<=numero=)\d+', str(dps), link)
        webbrowser.open(res)
    if menu == 'Q'.upper():
        break
print('Thanks for using Dell DPS tracking')u