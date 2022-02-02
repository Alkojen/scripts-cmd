@echo off

for /f "skip=1 tokens=1 delims= " %%G in ('certutil -hashfile %1 MD5') do (set hash=%%G && goto:compare)

:compare
if %hash%==%2 echo El fichero es autentico
