# cat /etc/anacrontab 
# /etc/anacrontab: configuration file for anacron

# See anacron(8) and anacrontab(5) for details.

SHELL=/bin/sh
PATH=/sbin:/bin:/usr/sbin:/usr/bin
MAILTO=root
# the maximal random delay added to the base delay of the jobs
RANDOM_DELAY=2
# the jobs will be started during the following hours only
START_HOURS_RANGE=21-5

#period in days    delay in minutes   job-identifier   command
1	5	cron.daily		nice run-parts /etc/cron.daily
@monthly 45	cron.monthly		nice run-parts /etc/cron.monthly
@daily 2 cron.daily nice amfoss-update 