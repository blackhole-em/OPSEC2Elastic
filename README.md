# OPSEC2Elastic
  this is where the magic happens....
# Some glue to connect the Splunk LEA OPSEC tool to Elasticsearch, mainly using Rsyslog
# This is all done on a CentOS 6.x box...  hopefully you're using that too...

Step 1 - go get the OPSEC 6.0 SDK from Checkpoint...  Somewhere like this: https://supportcenter.checkpoint.com/supportcenter/portal/user/anon/page/default.psml/media-type/html?action=portlets.DCFileAction&eventSubmit_doGetdcdetails=&fileid=7385 

Step 2 - RTFM - http://docs.splunk.com/index.php?title=Documentation:OPSEC-LEA:Install:AbouttheSplunkAdd-onforCheckPointOPSECLEA:2.0&action=pdfbook

Step 3 - setup the secret sauce 

cp.sh - script to kick off fw1-loggrabber binary 

checkpoint.conf - rsyslog rule for ES config - goes in /etc/rsyslog.d/

cpfw.rule - lognormalize rule for rsyslog/liblognorm - goes in /etc/rsyslog.d/

fw1-loggrabber.conf - fw1 Checkpoint tool config - goes in /usr/local/fw1-loggrabber/etc/

 1.1.1.1.lea.conf - sample LEA config for 1.1.1.1 file.  Name your configs and .p12 files like this - goes in
/usr/local/fw1-loggrabber/etc/
 
If you have problems with rsyslog, setup a  < *.*   /var/log/everything.all > rule or something similar to get better debug output... 
