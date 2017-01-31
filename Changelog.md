# Changelog

## 16.4.0

### New

* Version bump to 16.4.0. [Thomas Merkel]

## 16.2.0

### New

* Version update to 16.2.2 with newest dovecot, exim, etc. [Thomas Merkel]

  Switching to the newest pkgsrc stable version 16Q2 release. Provide newest packages for exim, dovecot, spipe and more. Also switching to the new core-base configuration options.

* Added config for URIBL. [Boris Poblotzki]
* SPF check for spamassassin in init.pre activated. [Boris Poblotzki]

### Fix

* Fix logging for dovecot. [Thomas Merkel]
* Config log path and logadm for dovecot. [Thomas Merkel]
* Enable munin plugin only if dovecot proxy is used. [Thomas Merkel]

### Other

* License update. [Thomas Merkel]
* Spamd plugins configrured. [Boris Poblotzki]
* Same log location as in mbox server. [Thomas Merkel]
* Ssl and starttls didnt work both. [Thomas Merkel]

## 14.2.13

### Other

* version bump. [Thomas Merkel]
* support also starttls for proxy. [Thomas Merkel]
* allow also starttls connections. [Thomas Merkel]

## 14.2.12

### New

* Merge all changes from extra/dovecot-proxy. [Thomas Merkel]
* update to new core-base image cd298780-4d55-11e4-addf-63835732c9d9. [Thomas Merkel]
* new mdata var for proxy_host. [Thomas Merkel]
* cleanup and create ssl folder for dovecot. [Thomas Merkel]
* add dovecot minimal proxy config. [Thomas Merkel]
* add dovecot packages. [Thomas Merkel]
* version update of exim which include a patch for the proxy protocol. [Thomas Merkel]

### Changes

* update desc and name. [Thomas Merkel]
* update readme with new variables. [Thomas Merkel]
* rename to `proxy_mbox_` variable. [Thomas Merkel]
* modify motd. [Thomas Merkel]

### Fix

* issue with .ext file reference from dovecot.conf. [Thomas Merkel]
* dovecot should be enable by default. [Thomas Merkel]

### Other

* make everything a little bit more secure to verify via ca file. [Thomas Merkel]
* only start dovecot if mdata variables are used. [Thomas Merkel]
* require valid ssl certificates. [Thomas Merkel]
* only if mdata exists. [Thomas Merkel]
* fix permissions for script files. [Thomas Merkel]
* Merge dovecot proxy with master to provide only one image. [Thomas Merkel]
* Merge branch 'master' into extra/dovecot-proxy. [Thomas Merkel]
* fix LOGIN authenticator (used for example by outlook) by using the correct variable to compare against the password hash. [Sebastian Wiedenroth]
* fix external file for dovecot with information. [Thomas Merkel]
* Merge branch 'master' into extra/dovecot-proxy. [Thomas Merkel]
* update to new version. [Thomas Merkel]
* Merge branch 'master' into extra/dovecot-proxy. [Thomas Merkel]
* we are a gmbh now. [Thomas Merkel]
* dont use a special port because we also like to support pop. [Thomas Merkel]

## 14.2.11

### Other

* Spamassassin displays additional header for use in exims spam check routing.
  [Boris Poblotzki]
* pimped script and bounce message. [Boris Poblotzki]
* Spam handling with router scanning fallback. [Boris Poblotzki]

## 14.2.10

### New

* base image update and version bump. [Thomas Merkel]

### Other

* messages under 1MB will be spamscanned. [Boris Poblotzki]
* update exim to exim-4.84. [Sebastian Wiedenroth]

    includes fix for redis logic and backported smf fix in http://mail-
    index.netbsd.org/pkgsrc-changes/2014/10/20/msg112802.html so exim does
    queue runs

* run pyzor discover only if something went wrong. [Thomas Merkel]
* license update. [Thomas Merkel]

## 14.2.9

### New

* update to new core-base image ffefd524-4e1e-11e4-9998-bf5009186c28. [Thomas Merkel]

### Fix

* have a working pyzor installation. [Thomas Merkel]
* logadm do not warn for empty or non existing files. [Thomas Merkel]

### Other

* Apply all changes from MX server also to submission server. [Thomas Merkel]

    We only scan mails smaller than 20 MB, we check for spam on mails
    smaller than 5 MB. Need to be sure the HOME folder is set correctly
    for spamd. Set correct folder for bayes filter on spamd.


## 14.2.8 (2014-10-06)

### New

* update to new core-base image cd298780-4d55-11e4-addf-63835732c9d9. [Thomas Merkel]
* new mdata var for proxy_host. [Thomas Merkel]
* cleanup and create ssl folder for dovecot. [Thomas Merkel]
* add dovecot minimal proxy config. [Thomas Merkel]
* add dovecot packages. [Thomas Merkel]
* version update of exim which include a patch for the proxy protocol. [Thomas Merkel]

### Changes

* update desc and name. [Thomas Merkel]
* update readme with new variables. [Thomas Merkel]
* rename to proxy_mbox_ variable. [Thomas Merkel]
* modify motd. [Thomas Merkel]

### Other

* Merge branch 'master' into extra/dovecot-proxy. [Thomas Merkel]
* we are a gmbh now. [Thomas Merkel]
* dont use a special port because we also like to support pop. [Thomas Merkel]
* configure logadm. [Thomas Merkel]
* version update of exim which include a patch for the proxy protocol. [Thomas Merkel]
* fix for administrativ mails. [Boris Poblotzki]

## 14.2.7 (2014-10-03)

### New

* version update. [Thomas Merkel]

### Fix

* change tmpdir for spamd to use disk and not memory. [Thomas Merkel]
* change clamd temp directory to /var/tmp to dont use memory for that. [Thomas Merkel]

## 14.2.6 (2014-10-02)

### New

* update to new core-base image 5f32cd38-4a1f-11e4-82e4-632b59542bc6. [Thomas Merkel]
* create cronjob for exim verify script. [Thomas Merkel]
* exim cron script to check panic log and verify database. [Thomas Merkel]
* use also syslog for logging. [Thomas Merkel]

## 14.2.5 (2014-10-01)

### Fix

* typo for blacklist_hosts. [Thomas Merkel]

### Other

* version update. [Thomas Merkel]

## 14.2.4 (2014-10-01)

### New

* version update. [Thomas Merkel]

### Other

* wrong version number in changelog. [Thomas Merkel]
* fix bug for blacklisted hosts. [Boris Poblotzki]

## 14.2.3 (2014-09-28)

### New

* update to new core-base image 4771851c-473c-11e4-a5d7-2336565b77d9. [Thomas Merkel]
* new munin plugin redis_replication_status. [Thomas Merkel]

## 14.2.2 (2014-09-27)

### New

* update to new core-base image 43aaede4-4622-11e4-a839-d3704910e498. [Thomas Merkel]

## 14.2.1 (2014-09-25)

### Other

* update changelog. [Thomas Merkel]
* version update. [Thomas Merkel]
* update to new core-base image: a6fb1ff0-4333-11e4-a0e1-370c81688134. [Thomas Merkel]
* max connections set to 500. [Boris Poblotzki]
* Domain for DKIM set to sender_address_domain, not servers domain. [Boris Poblotzki]

## 14.2.0 (2014-09-21)

### Other

* update changelog. [Thomas Merkel]
* Merge branch 'master' of github.com:skylime/mi-core-submission. [Thomas Merkel]

    Conflicts:         copy/opt/local/etc/exim/configure

* cleanup exim config. [Thomas Merkel]
* update to new core-base image: 6babbf24-3765-11e4-a87a-23e846a65e81. [Thomas Merkel]
* update to new core-base image: 99c9e7ac-34ed-11e4-bdc4-236f63b1ea9d. [Thomas Merkel]
* update readme file. [Thomas Merkel]
* remove [] for spide configuration to also allow hostnames. [Thomas Merkel]
* be sure we have a valid bayes db also if we dont use it. [Thomas Merkel]
* update to new core-base image: 89402478-34cf-11e4-ac94-f3a4d047918f. [Thomas Merkel]
* update to new core-base image: aed27f7a-34c4-11e4-be6c-4392ae5601bc. [Thomas Merkel]
* mdata variable with dkim selector. [Thomas Merkel]
* mdata variable with dkim selector. [Thomas Merkel]
* update to new core-base image: 5f749f3c-335f-11e4-a952-e780d226fa57. [Thomas Merkel]
* update to new core-base image: fbd244a6-32bf-11e4-8629-73c3e6ed202d. [Thomas Merkel]
* exim version update. [Thomas Merkel]
* Spam-Report-Header only if level more than 5.0. [Boris Poblotzki]
* preventing spamassassin from reporting too much. [Boris Poblotzki]
* update to new core-base image: 86465fe4-312d-11e4-a145-57554f40fa40. [Thomas Merkel]
* add exim munin configuration. [Thomas Merkel]
* create symlinks for sendmail and mailq. [Thomas Merkel]
* fine grained per account spoofing exception. [Thomas Merkel]
* add munin config back to customize. [Thomas Merkel]
* version update for base. [Thomas Merkel]
* Add anti-spoofing rule with check for the whitelist. [Thomas Merkel]
* use correct auth variable. [Thomas Merkel]
* Enable the possibility to disable accounts via API. [Thomas Merkel]

    This will only work with the newest API version. If the
    submission_disabled flag is missing the account will not work anymore.

* use valid redis config for connection. [Thomas Merkel]
* dont use port 25 for old ssmtp. [Thomas Merkel]
* Add rblwatch/rblcheck script as pip pkg and create cronjob. [Thomas Merkel]
* fixed cert permissions in exims mdata. [Boris Poblotzki]
* exim gets hostname from mdata. [Boris Poblotzki]
* Merge https://github.com/skylime/mi-core-submission. [Boris Poblotzki]

    Conflicts:         manifest

* reprov-scripts now executable. [Boris Poblotzki]
* add minimum ram requirement. [Boris Poblotzki]
* removed interface option in transport - noneed. [Boris Poblotzki]
* several changes for SSL an redis-connection. [Boris Poblotzki]
* HELO-ACL for better submission. [Boris Poblotzki]
* holy munin - fixed typo. [Boris Poblotzki]
* Exim configuration for submission host. [Boris Poblotzki]
* fixups for submission project. [Boris Poblotzki]
* changed READMEs syntax to markdown. [Boris Poblotzki]
* renamed to submission. [Boris Poblotzki]
* Initial commit. [Boris Poblotzki]

    Conflicts:         README.md         copy/opt/core/bin/mdata-setup
    customize

* clean up spamassassins config. [Boris Poblotzki]
* get pyzor std-server. [Boris Poblotzki]
* switch to munin community plugin repo and remove static file. [Thomas Merkel]
* move all mdata-setup for includes. [Thomas Merkel]
* use -s option for mdata enable. [Thomas Merkel]
* fix plugin check for different munin stuff. [Thomas Merkel]
* missing munin plugin variables. [Thomas Merkel]
* Add awesome fancy motd. [Thomas Merkel]
* Enable munin-node for mx server with some default and custom plugins. [Thomas Merkel]
* typo in spamassassins config. [Boris Poblotzki]
* Merge branch 'master' of github.com:skylime/mi-core-mx. [Boris Poblotzki]

    Conflicts:         packages

* added pyzor for spmassassin. [Boris Poblotzki]
* fix bash code, bitches. [Thomas Merkel]
* Add exim manifest because it's missing in the pkgs. [Thomas Merkel]
* fix child manifest exec. [Thomas Merkel]
* modify cron execute. [Thomas Merkel]
* remove spamd update on customize. [Thomas Merkel]
* Be sure database for spamd and clamd exists. [Thomas Merkel]
* disable clamd and spamd update on prov state. [Thomas Merkel]
* add spamassassin pkg to be installed. [Thomas Merkel]
* remove rspamd from enable it by default. [Thomas Merkel]
* add spamassassin spamd service. [Thomas Merkel]

    * add custom spamd manifest script * create extra user for spamd *
    create cron job that run sa-update every day

* enable mdata-setup only on provisioning state. [Thomas Merkel]
* Use single file that contains the cert, key and CA as PEM format. [Thomas Merkel]

    * it's easier to handle one single file which contains all ssl
    information * create ssl in the exim folder

* update clamav database by provisioning. [Thomas Merkel]

    * the clamav database is required to run clamd * run command once
    during provisioning * TODO: cronjob is required to update the database
    sometimes

* Fix logging directory for clamav. [Thomas Merkel]

    * use /var/log/clamav for logging * add directory and setup
    permissions * change configuration file from clamd.conf

* minor changes. [Boris Poblotzki]
* Fixed mainfest and motd. [Boris Poblotzki]
* Fixed providing SSL certs via mdata. [Boris Poblotzki]
* changed domainkey handling with mdata. [Boris Poblotzki]
* Fixed mdata and package installation/configuration and README. [Boris Poblotzki]
* Zoneinits for clamav, rspamd and exim added. [Boris Poblotzki]
* Added basics like mdata-setup, spipe-conf etc by copying... [Boris Poblotzki]
* renamed exim-configs minor changes for SRS-vars. [Boris Poblotzki]
* Initial commit with basic configs for exim, rspamd and clamav. [Boris Poblotzki]
* Fixed verbage in packages file. [Derek Crudgington]
* Merge branch 'master' of github.com:joyent/mi-example. [Derek Crudgington]
* Added extra space to motd. [Derek Crudgington]
* Fixed customize. [Derek Crudgington]
* Added new packages file. [Derek Crudgington]
* Removed .gitignore from copy directory. [Derek Crudgington]
* Added var/zoneinit/includes directory. [Derek Crudgington]
* Added LICENSE and copy directory. [Derek Crudgington]
* Initial release. [Derek Crudgington]

