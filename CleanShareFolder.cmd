rem ===================================================================
rem Объявляем переменные
set workFolder=C:\workFolder
set folderClean=F:\Exchange\!Общая_папка
rem *****
set folderOrdersClients=F:\Exchange\!Общая_папка\Заказы_клиентов
set tempFolderOrdersClients=%workFolder%\Заказы_клиентов
rem *****
set folderDogovor=F:\Exchange\!Общая_папка\dogovor
set tempFolderDogovor=%workFolder%\dogovor
rem
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
rem pause
rem