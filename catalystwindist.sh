wget "http://developer.amd.com/wordpress/media/download.php?f=QU1ELUFQUC1TREstdjIuOC1XaW5kb3dzLTY0LmV4ZQ==" -O catalyst12.exe
7z e catalyst12.exe  Packages/Apps/OpenCL64/OpenCL-CPU.msi
7z x OpenCL-CPU.msi
mkdir 32
mkdir 64
mv _59110E8F35784BEEB9CE174637AE5093 32/OpenCL.dll
mv _36DA18ABBF0D4255AAB92E49278F669D 32/amdocl.dll
mv _D51227AE37174D40A5C3B1FAB68237B8 64/OpenCL.dll
mv _69D81B01B01E4158A9BCFDF9E1E6809D 64/amdocl64.dll

mv oclvanitygen.exe 32/
touch 32/oclvanitygen.exe.local

mv oclvanityminer.exe 32/
touch 32/oclvanityminer.exe.local

mv vanitygen.exe 32/
mv vanitygen64.exe 64/
touch 64/vanitygen64.exe.local

mv oclvanityminer64.exe 64/
touch 64/oclvanityminer64.exe.local

cp calc_addrs.cl cacert.pem 32/
cp calc_addrs.cl cacert.pem 64/

rm -f *.msi *.exe _[A-Z0-9]* *.pem *.cl
