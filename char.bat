@echo off

if /i %1 == --help goto help
if /i %1 == -h     goto help
if /i %1 == ?      goto help

goto charset

:help

echo change charset.
echo This command is case insensitive for its arguments.
echo.
echo Usage: char [option] charset
echo Option:
echo.  --HELP, -H, ?                             Show help.
echo Charset:
echo.  UTF-8, UTF8, UTF, U8 U                    Use charset UTF-8.
echo.  Shift-JIS, ShiftJIS, SJIS, JIS, SJ, S     Use charset Shift-JIS.

goto end

:charset

if /i %1 == utf8  goto ch_utf8
if /i %1 == utf-8 goto ch_utf8
if /i %1 == utf   goto ch_utf8
if /i %1 == u8    goto ch_utf8
if /i %1 == u     goto ch_utf8

if /i %1 == sjis      goto ch_sjis
if /i %1 == shiftjis  goto ch_sjis
if /i %1 == shift-jis goto ch_sjis
if /i %1 == sj        goto ch_sjis
if /i %1 == jis       goto ch_sjis
if /i %1 == s         goto ch_sjis

echo Error :
echo Check Help.

goto end

:ch_utf8
chcp 65001
goto end

:ch_sjis
chcp 932
goto end

:end