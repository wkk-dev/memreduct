@echo off

php "..\builder\make_resource.php" ".\src\resource.h"
php "..\builder\make_locale.php" "Mem Reduct" "memreduct" ".\bin\i18n" ".\src\resource.h" ".\src\resource.rc" ".\bin\memreduct.lng"
copy /y ".\bin\memreduct.lng" ".\bin\32\memreduct.lng"
copy /y ".\bin\memreduct.lng" ".\bin\64\memreduct.lng"

pause
