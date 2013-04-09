wget -nc "http://developer.amd.com/wordpress/media/download.php?f=QU1ELUFQUC1TREstdjIuOC1XaW5kb3dzLTY0LmV4ZQ==" -O catalyst12.exe

wget -nc ftp://ftp.info-zip.org/pub/infozip/win32/unz600xn.exe
unz600xn.exe unzip.exe

wget -nc http://downloads.sourceforge.net/sevenzip/7za920.zip
unzip 7za920.zip

7za e catalyst12.exe  Packages/Apps/OpenCL64/OpenCL-CPU.msi
echo %TEMP%
mkdir "%TEMP%\catatmp"
start /wait msiexec /a OpenCL-CPU.msi /qb TARGETDIR=%TEMP%\catatmp

mkdir 32
mkdir 64

copy "%TEMP%\catatmp\program files\AMD APP\bin\x86_64" 64
copy "%TEMP%\catatmp\program files\AMD APP\bin\x86" 32

wget -nc http://curl.haxx.se/ca/cacert.pem

copy calc_addrs.cl 32
copy calc_addrs.cl 64

copy cacert.pem 32
copy cacert.pem 64

for %%f in (vanitygen oclvanitygen oclvanityminer keyconv) do (
copy %%f.exe 32
copy %%f64.exe 64
)

for /r %%f in (32\*.exe 64\*.exe) do copy nul %%f.local

7za a vanitygen_catalyst.zip 32 64
