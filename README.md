# telebot
A simple bash script that sends HTTP requests to the telegram API

## Usage

`telebot -s [USER] [MESSAGE]`

in case no message is passed, telebot takes input from the stdin.

# watcher
A simple bash script that monitors a certain file and triggers **telebot** in order to send a warning through telegram. This program works on sending alerts for finished simulations and its current status.

In order to list this program to your shell please export its path, by default

`git clone https://github.com/dgeneratioN/telebot`

`export PATH=$HOME/telebot:$PATH`

`source .bashrc`

It can be used by the following sintaxe

`watcher [File] [Frequency] [Receiver] [Program]`

It currently supports two CFD outputs by default:
* ANSYS® CFX
* ANSYS® FLUENT - via exported console transcript
* OpenFOAM - via log file

# time-step
This command searches for a file names terminal.log (fluent console output) and displays the latest time-step saved. Also it will delete the extra time-steps in the monitor files with the **.out** extension, making it ready to run again.
