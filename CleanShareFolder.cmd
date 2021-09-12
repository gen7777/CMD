rem ===================================================================
rem Объявляем переменные
set workFolder=C:\workFolder
set folderClean=F:\Exchange\!Общая_папка
rem *****
set folderOrdersClients=F:\Exchange\!Общая_папка\Заказы_клиентов
set tempFolderOrdersClients=%workFolder%\Заказы_клиентов
rem *****
set folderDogovor=F:\Exchange\!Общая_папка\Договора
set tempFolderDogovor=%workFolder%\Договора
rem
set folder_unrealized_product=F:\Exchange\!Общая_папка\НЕРЕАЛИЗОВАННЫЙ_ТОВАР
set temp_unrealized_product=%workFolder%\НЕРЕАЛИЗОВАННЫЙ_ТОВАР
rem
set folder_gsm=F:\Exchange\!Общая_папка\ГСМ
set temp_gsm=%workFolder%\ГСМ
rem ****************************************************
rem
rem Создаем рабочую папку
mkdir "%workFolder%"
cd /D "%workFolder%"
rem pause
rem
rem Копируем из Общей_Папки нужны каталоги во временную папку
xcopy "%folderOrdersClients%" "%tempFolderOrdersClients%" /I /S /Y
xcopy "%folderDogovor%" "%tempFolderDogovor%" /I /S /Y
xcopy "%folder_unrealized_product%" "%temp_unrealized_product%" /I /S /Y
xcopy "%folder_gsm%" "%temp_gsm%" /I /S /Y
rem pause
rem 
rem Очищаем каталог Общая_папка
for /D %%I in (%folderClean%\*.*) do rd "%%I" /S /Q
del /F /S /Q %folderClean%
rem pause
rem
mkdir "%folderOrdersClients%"
mkdir "%folderDogovor%"
mkdir "%folder_unrealized_product%"
mkdir "%folder_gsm%"
rem
rem Копируем каталоги и файлы из рабочей папки в каталог Общая_папка
xcopy "%tempFolderOrdersClients%" "%folderOrdersClients%" /S /Y
xcopy "%tempFolderDogovor%" "%folderDogovor%" /S /Y
xcopy "%temp_unrealized_product%" "%folder_unrealized_product%" /S /Y
xcopy "%temp_gsm%" "%folder_gsm%" /S /Y
rem pause
rem
rem Удаляем рабочую папку
cd /D C:\
rd %workFolder% /S /Q
exit