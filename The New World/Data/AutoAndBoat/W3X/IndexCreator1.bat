rem  *****************************Index.xmlÉú³É************************************
cd.>temp.txt
echo ^<^?xml version="1.0" encoding="utf-8"?^>>>temp.txt
echo ^<^AssetDeclaration xmlns="uri:ea.com:eala:asset" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>>>temp.txt
echo 	^<^Includes^>>>temp.txt

for /f "tokens=*" %%j in ('dir /on/b') do (
if "%%~xj"==".W3X" (
echo 		^<^Include type="all" source="%%j" /^>>>temp.txt)
)
echo.>>temp.txt
for /f "tokens=*" %%j in ('dir fx /on/b') do (
if "%%~xj"==".W3X" (
echo 		^<^Include type="all" source="fx/%%j" /^>>>temp.txt)
)
echo.>>temp.txt
for /f "tokens=*" %%j in ('dir Art /on/b') do (
if "%%~xj"==".W3X" (
echo 		^<^Include type="all" source="Art/%%j" /^>>>temp.txt)
)

echo       ^<^/Includes^>>>temp.txt
echo ^<^/AssetDeclaration^>>>temp.txt
ren temp.txt index.xml
if exist temp.txt del /f /s /q temp.txt









