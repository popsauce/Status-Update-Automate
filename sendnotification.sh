CHATID="1234"
KEY="abcd"
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="Hello world"



command supposed to be run
curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT" $URL >/dev/null

The time and date fields are:

       field          allowed values
       -----          --------------
       minute         0-59
       hour           0-23
       day of month   1-31
       month          1-12 (or names, see below)
       day of week    0-7 (0 or 7 is Sunday, or use names)


command to run the shell script at:- 0 min 21 hrs *all days *every month *every weekday
0 21 * * * root /usr/local/sbin/maint.sh

Method 1:Using only cron, disadvantages if the user's system is not by 2100 hrs(ideal time to notify for update) and if the user opens his laptop between 2100hrs to 0500 hrs he wont be notified.
