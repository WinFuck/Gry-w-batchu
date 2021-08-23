@echo off
title Pierwsza gra 
echo Uruchamianie...
pause 
echo Jesli plik nie istnieje w lokalizacji: %USERPROFILE%\Documents zostanie stworzony spowrotem.
pause 
goto menustart

:menustart
cls
if not exist %USERPROFILE%\Documents\author.txt goto helppomoc
if exist %USERPROFILE%\Documents\author.txt goto game
echo ---------------------
echo -   Pierwsza Gra    -
echo ---------------------
echo Witaj w mojej pierwszej grze!
echo [1] Zacznij gre...
echo [2] Wyjdz z gry...
set /p firstgame= 
if %firstgame%==1 goto game
if %firstgame%==2 goto exitgame

:game
cls
echo ------------------
echo Statystyki 
echo Status pieniezny: 0$
echo Mieszkancy: 5
echo ------------------
set /p gamer= 
if %gamer%==zaczynamy goto startgame

:startgame
cls 
echo Twoim zadaniem jest zbudowanie budynkow dla innych mieszkancow twojego miasta.
echo Wcisnij dowolny przycisk na twojej klawiaturze aby zbudowac budynek dla mieszkancow
echo twojego miasta.
pause
cls
echo Prosze czekac...
echo Trwa budowanie...
pause 
echo Proces: 5%
echo Proces: 10%
echo Proces: 15%
echo Proces: 20%
echo Proces: 25%
echo Proces: 30%
echo Proces: 35%
echo Proces: 40%
echo Proces: 45%
echo Proces: 50%
echo Proces: 55%
echo Proces: 60%
echo Proces: 65%
echo Proces: 70%
pause 
cls 
echo Wybudowano budynki.
echo Twoj zarobek z budowy budynkow: 300$
pause 
goto newstats

:newstats
cls 
echo ------------------
echo Statystyki 
echo Status pieniezny: 300$
echo Mieszkancy: 10
echo ------------------
set /p playgames= 
if %playgames%==kontynuuje goto startgame1
if %playgames%==wychodze goto warning

:warning
cls 
echo Jesli wyjdziesz z gry, mozesz utracic swoj postep.
echo Czy na pewno chcesz kontynuowac?
set /p exited= 
if %exited%==tak goto exit
if %exited%==nie goto newstats

:startgame1
cls 
echo Proces podczas gry prawdopodobnie moze sie powtorzyc.
pause 
cls
echo Twoim zadaniem jest zbudowanie budynkow dla innych mieszkancow twojego miasta.
echo Wcisnij dowolny przycisk na twojej klawiaturze aby zbudowac budynek dla mieszkancow
echo twojego miasta.
pause
cls
echo Prosze czekac...
echo Trwa budowanie...
pause 
echo Proces: 5%
echo Proces: 10%
echo Proces: 15%
echo Proces: 20%
echo Proces: 25%
echo Proces: 30%
echo Proces: 35%
echo Proces: 40%
echo Proces: 45%
echo Proces: 50%
echo Proces: 55%
echo Proces: 60%
echo Proces: 65%
echo Proces: 70%
pause 
cls 
echo Wybudowano budynki.
echo Twoj zarobek z budowy budynkow: 359$
pause 
goto newstats1

:newstats1
cls 
echo ------------------
echo Statystyki 
echo Status pieniezny: 359$
echo Mieszkancy: 12
echo ------------------
pause
goto thanksforplaying

:thanksforplaying
cls 
echo Mozesz teraz wpisac 'pomoc' aby uzyskac pomoc dot. programu ktorego
echo Aktualnie uzywasz.
set /p helpstats= 
if %helpstats%==pomoc goto helppomoc

:helppomoc
cls 
echo Wersja gry: v1.0.0
pause 
cls
cd %USERPROFILE%\Documents
echo Jesli usunales plik z tej lokalizacji: %USERPROFILE%\Documents, Plik zostanie utworzony ponownie w lokalizacji: %USERPROFILE%\Documents
echo Link do kanalu autora: "(Wpisz tutaj swoją nazwe kanału)" >%USERPROFILE%\Documents\author.txt
pause
goto game