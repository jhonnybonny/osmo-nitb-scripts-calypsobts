
![](https://raw.githubusercontent.com/DrLafa/osmo-nitb-scripts/master/doc/img/help.png)

### RougeBTS

 This project is created for easy deployment of Osmocom GSM stack and convenient interaction with users

  - E(GPRS) support
  - Asterisk support
  - monitoring online subscribers
  - automatic interaction with new users, like sms, ussd or call
  - manual interaction with individual users
  - USSD-broadcast
  - SMS-broadcast
  - SMS-spam ;)


![](https://raw.githubusercontent.com/jhonnybonny/osmo-nitb-scripts-calypsobts/main/doc/img/IMG.jpg)

All software was tested on [LimeSDR-Mini + Orange Pi Zero](https://codeby.net/threads/miniatjurnaja-sotovaja-stancija-na-baze-limesdr-mini-i-orange-pi-zero.66747/) with Armbian Bionic. Also with Debian 10

### Installation
```
sudo ./install_services.sh
```

Cloning
```
git clone https://github.com/jhonnybonny/osmo-nitb-scripts-calypsobts.git
```
Auto start
```
sudo ./auto.sh
```

### Configure
All osmocom config files stored in `config/` folder and updating everytime when you start `main.py`. You can change it by youself.

### config.json
For easy setup of user-interactivity you can use config.json
- config.json example
```
{
   "scripts":{
      "sms":{
         "enabled": false,
         "sender_extension": "John Connor",
         "message":[
            "If you are reading this, then you are resistance"
         ]
      },
      "ussd":{
         "enabled": false,
         "ussd_type": 1,
         "message":[
            "Welcome to our l33t hax0r network.",
            "If you are reading this, then you are true L33T 1337 H4xXx0r"
         ]
      },
      "call":{
         "enabled": true,
         "caller_extension": 666,
         "voice-file": "tt-monkeys"
      }
   }
}
```
#### sms
Send sms to new users. When user connect to network, script choose 1 random message from ```message``` section and sending it from extension ```sender_extension```

#### ussd
Send ussd to new users. Script choose 1 random message from ```message``` section adn sending it to user

#### call
Make a call to new user. This function works only with Asterisk support. voice-file is 16-bit 8 kHz wav file. If ```caller_extension``` is ```false```, then the user sees that the phone is not defined.
