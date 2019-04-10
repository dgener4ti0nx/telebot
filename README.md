# telebot
A simple bash script that sends HTTP requests to the telegram API

* **telebot** is responsible for sending text messages
* **teledoc** is responsible for sending files (to be later merged with telebot)

# watcher
A simple bash script that monitors a certain file and triggers **telebot** in order to send a warning through telegram. This program works on sending alerts for finished simulations and its current status.

In order to list this program to your shell please export its path, by default

`git clone https://github.com/dgeneratioN/telebot
export PATH=$HOME/telebot:$PATH
source .bashrc`

It can be used by the following sintaxe

`watcher [File] [Frequency] [Receiver] [Program]`

It currently supports two CFD outputs by default:
* ANSYS® CFX
* ANSYS® FLUENT - via exported console transcript
