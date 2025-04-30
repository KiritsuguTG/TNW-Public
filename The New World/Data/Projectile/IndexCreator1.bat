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





rem  *****************************audiofile.xml生成************************************
if exist Sounds (
cd.>temp.txt
echo ^<^?xml version="1.0" encoding="utf-8"?^>>>temp.txt
echo ^<^AssetDeclaration xmlns="uri:ea.com:eala:asset" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>>>temp.txt
for /f "tokens=*" %%j in ('dir Sounds /on/b') do (
if "%%~xj"==".wav" (
echo ^<^AudioFile id="%%~nj" File="Sounds/%%j" GUIPreset="Default" PCCompression="XAS" IsStreamedOnPC="false" /^>>>temp.txt)
)
echo ^<^/AssetDeclaration^>>>temp.txt
ren temp.txt AudioFile.xml
if exist temp.txt del /f /s /q temp.txt
)


rem  *****************************Texture.xml生成************************************
if exist Texture (
cd.>temp.txt
echo ^<^?xml version="1.0" encoding="utf-8"?^>>>temp.txt
echo ^<^AssetDeclaration xmlns="uri:ea.com:eala:asset" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>>>temp.txt
for /f "tokens=*" %%j in ('dir Texture /on/b') do (
echo ^<^Texture id="%%~nj" File="Texture/%%j"/^>>>temp.txt)
echo ^<^/AssetDeclaration^>>>temp.txt
ren temp.txt Texture.xml
if exist temp.txt del /f /s /q temp.txt
)






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










rem  *****************************CommandData.xml生成************************************
cd..
if not exist CommandData.xml (
cd.>temp.txt
echo ^<^?xml version="1.0" encoding="utf-8"?^>>>temp.txt
echo ^<^AssetDeclaration xmlns="uri:ea.com:eala:asset"^>>>temp.txt

	echo ^<^Tags/^>>>temp.txt
	echo ^<^Includes/^>>>temp.txt

echo.>>temp.txt
echo.>>temp.txt	

echo ^<^/AssetDeclaration^>>>temp.txt
ren temp.txt CommandData.xml
)





rem  *****************************Mod.xml生成************************************
if not exist Mod.xml (
cd.>temp.txt
echo ^<^?xml version="1.0" encoding="utf-8"?^>>>temp.txt
echo ^<^AssetDeclaration xmlns="uri:ea.com:eala:asset" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>>>temp.txt
echo 	^<^Includes^>>>temp.txt
echo.>>temp.txt
echo.>>temp.txt

echo		^<^Include type="reference" source="DATA:static.xml" /^>>>temp.txt
echo		^<^Include type="reference" source="DATA:global.xml" /^>>>temp.txt
echo		^<^Include type="reference" source="DATA:audio.xml" /^>>>temp.txt
echo.>>temp.txt
echo.>>temp.txt

for /f "tokens=*" %%j in ('dir /on/b') do (
if "%%~xj"=="" (
if not "%%j"=="AdditionalMaps" (
echo 		^<^Include type="all" source="%%j/index.xml" /^>>>temp.txt)
)
)

for /f "tokens=*" %%j in ('dir /on/b') do (
if "%%~xj"==".xml" (
if not "%%j"=="DeathTypeIndex.xml" (
echo 		^<^Include type="all" source="%%j" /^>>>temp.txt)
)
)

if exist DeathTypeIndex.xml (
echo 		^<^Include type="all" source="DeathTypeIndex.xml" /^>>>temp.txt)

echo       ^<^/Includes^>>>temp.txt
echo ^<^/AssetDeclaration^>>>temp.txt
ren temp.txt Mod.xml
)

if exist temp.txt del /f /s /q temp.txt

rem  *****************************Additional生成************************************
cd ..
if not exist Assets md Assets
if not exist Additional (
md Additional
cd Additional
md Data
cd Data
md Movies
)






