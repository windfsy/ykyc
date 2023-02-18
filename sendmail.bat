@echo off
:::::::::::::: 参数设置::::::::::::::
set from=linked@email.cn
set user=linked@email.cn
set pass=uI7kMuSRBwmpz7kN
set to=s-1-wind@outlook.com
set subj=test
set mail=mail_body.txt
set server=smtp.email.cn
::::::::::::::::: 运行blat :::::::::::::::::
blat %mail% -to %to% -base64 -charset Gb2312 -subject %subj%  -server %server% -f %from% -u %user% -pw %pass%