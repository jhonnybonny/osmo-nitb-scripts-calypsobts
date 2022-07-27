![](https://raw.githubusercontent.com/jhonnybonny/osmo-nitb-scripts-calypsobts/main/doc/img/111screen.jpg)

![](https://raw.githubusercontent.com/jhonnybonny/osmo-nitb-scripts-calypsobts/main/doc/img/IMG.jpg)

All software was tested on [x2 Motorola c123 + DragonOS](https://cemaxecuter.com/)

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
