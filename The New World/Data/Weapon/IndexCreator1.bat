rem  *****************************初始化************************************
@echo off
if exist temp.txt del /f /s /q temp.txt
if exist Index.txt del /f /s /q Index.txt
if exist Index.xml ren Index.xml Index.txt
if exist Index.txt del /f /s /q Index.txt
if exist AudioFile.txt del /f /s /q AudioFile.txt
if exist AudioFile.xml ren AudioFile.xml AudioFile.txt
if exist AudioFile.txt del /f /s /q AudioFile.txt
if exist Texture.txt del /f /s /q Texture.txt
if exist Texture.xml ren Texture.xml Texture.txt
if exist Texture.txt del /f /s /q Texture.txt

rem  *****************************Index.xml生成************************************
cd.>temp.txt
echo ^<^?xml version="1.0" encoding="utf-8"?^>>>temp.txt
echo ^<^AssetDeclaration xmlns="uri:ea.com:eala:asset" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>>>temp.txt
echo 	^<^Includes^>>>temp.txt

for /f "tokens=*" %%j in ('dir /on/b') do (
if "%%~xj"==".xml" (
echo 		^<^Include type="all" source="%%j" /^>>>temp.txt)
)
echo.>>temp.txt
for /f "tokens=*" %%j in ('dir fx /on/b') do (
if "%%~xj"==".xml" (
echo 		^<^Include type="all" source="fx/%%j" /^>>>temp.txt)
)
echo.>>temp.txt
for /f "tokens=*" %%j in ('dir Art /on/b') do (
if "%%~xj"==".xml" (
echo 		^<^Include type="all" source="Art/%%j" /^>>>temp.txt)
)

echo       ^<^/Includes^>>>temp.txt
echo ^<^/AssetDeclaration^>>>temp.txt
ren temp.txt index.xml
if exist temp.txt del /f /s /q temp.txt















