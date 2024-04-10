## SMSend V2
                                    Anonymous SMS Sender 

                                     Linux, Mac, Termux

# SMSend-Anon-SMS-Sender
SMSend is a Python tool for sending SMS messages anonymously and securely through VPN connections. It offers single and bulk SMS sending capabilities, where each message is routed through a separate VPN, ensuring privacy and bypassing geo-restrictions. 

- Windows version will soon be available

## What's New & Features
- Completely Free
- Anon Multi-SMS Sender.
- Fast SMS sending.
- International Messaging also available.
- Can be used Infinitely thanks to the vpn configuration.


# Usage & Setup
If you're on linux run the following commands. (Assuming a Debian Based Distribution, and assuming you have git and python installed).
**NOTE**: **if you are going to be using the Multi SMS utility, scroll down to the 'Multi SMS' section to learn how it works.**
## For Linux
```
git clone https://github.com/sytaxus/SMSend-Anon-SMS-Sender
cd SMSend-Anon-SMS-Sender && chmod +x setup.sh && ./setup.sh
```
if the tool doesn't start then run:
```
python smsend.python
```
- When you run the `setup.sh` you will be asked if you would like to save your openvpn or vpn login informations, select `y` or `yes`, else simply type `n` to ignore, assuming you're not using the multi-sms utlity or have already done the setup in `auth.txt` manually.

## For Termux
Simply run:
```
pkg install git && python
git clone https://github.com/sytaxus/SMSend-Anon-SMS-Sender
cd SMSend-Anon-SMS-Sender && chmod +x setup.sh && ./setup.sh
```

## How to Multi SMS & Configure VPN
- First open `phones.txt`, then paste in your phone numbers in **each line individually**, prefix included. (e.g: `+485555555555` or `+15555555555` etc..)
- Secondly, get your open vpn configs. If you're not sure how it works, watch the showcase video. Or you can just get your openvpn configs from any service, for example ProtonVPN. **Make sure you place all of your `.ovpn` configs in the same directory / folder.**
- Setup your vpn authentication file. Open `auth.txt` (e.g: nano `auth.txt`), in the very first line, place your authentication **username**, then in the second line place your authentication **password** for your configs.
- Finally, run the tool, and when asked for the vpn PATH directory, simply paste the directory of where your `.ovpn` configs are located. (e.g: `/home/user/somedir/vpn_configs`)
- Then when asked for the filename with phone numbers simply put `phones.txt`
- Final step, when asked for the vpn credential file name, simply put `auth.txt`, and that's it!
- NOTE: **Do NOT touch the vpn_auth.txt, that file is already preconfigured**

## Contributions
Updates and contributions are welcome, simply perform a pull request.


## Restrictions
- No Links allowed within SMS.
- You cannot send a message to the **same** phone number twice in less than a 24 hours (Yes, even when using a vpn). 

## Disclaimer
Do not use SMSend to harm others. The creator of this tool does not take any responsibility for any damage caused by SMSend.
