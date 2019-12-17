import requests

def telegram_bot_sendtext(bot_message):
    
    bot_token = ''
    bot_chatID = ''
    send_text = 'https://api.telegram.org/bot' + "AAGpvY4FWoSZuu2SHlS6fGeJF-NDkyRAR5U" + '/sendMessage?chat_id=' + "1044827404" + '&parse_mode=Markdown&text=' + "test"

    response = requests.get(send_text)

    return response.json()
    

test = telegram_bot_sendtext("Testing Telegram bot")
print(test)