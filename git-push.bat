git add .
@set /p m=Commit Message:
@if "%m%"=="" @set m=Hexo updated: %date:~0,4%-%date:~5,2%-%date:~8,2% %TIME:~0,8%
git commit -m "%m%"
git push -u origin master