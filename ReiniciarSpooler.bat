@echo off
echo Pausando Spooler
net stop spooler
echo Excluindo documentos pendentes
del /Q /F /S "%systemroot%\System32\Spool\Printers\*.*"
echo Iniciando Spooler
net start spooler
exit