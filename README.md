# telebot
A simple bash script that send HTTP requests to the telegram API

* **telebot** is responsible for sending text messages
* **teledoc** is responsible for sending files (to be later merged with telebot)

# watcher
A simple bash script that monitors a certain file and triggers <b>telebot</b> in order to send a warning through telegram.

<code>watcher [File] [Frequency] [Receiver] [Program]</code>
