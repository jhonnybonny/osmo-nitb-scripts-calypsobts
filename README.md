![](https://raw.githubusercontent.com/jhonnybonny/osmo-nitb-scripts-calypsobts/main/doc/img/111screen.jpg)

![](https://raw.githubusercontent.com/jhonnybonny/osmo-nitb-scripts-calypsobts/main/doc/img/IMG.jpg)

Software was tested on [x2 Motorola c123 + DragonOS](https://cemaxecuter.com/) !tested only sms + ussd!

### Installation

Cloning
```
git clone https://github.com/jhonnybonny/osmo-nitb-scripts-calypsobts.git
```
Install services (P.S. Clock setting (ARFCN) inside services/osmo-trx-lms.service 🤪)
```
sudo ./install_services.sh
```
Auto start ✅
```
sudo ./auto.sh
```
Start ⚠️ Also u need run TRX ⚠️
```
sudo python3 main.py
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
         "enabled": true,
         "sender_extension": "CrTh",
         "message":[
            "TEST SMS"
         ]
      },
      "ussd":{
         "enabled": true,
         "ussd_type": 1,
         "message":[
            "CrTh.",
            "TEST ALERT TEST ALERT TEST ALERT"
         ]
      },
      "call":{
         "enabled": false,
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
