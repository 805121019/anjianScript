@echo 请将手机与电脑用USB线连接，并在手机上打开调试模式。
@pause
@..\android\adb push common.mql /sdcard/MobileAnjian/commandLib/
@..\android\adb push common996.mql /sdcard/MobileAnjian/commandLib/
@IF ERRORLEVEL 1 goto fail
@IF ERRORLEVEL 0 goto success
:fail
@echo 传输失败！请确认手机与电脑正确连接，并已在手机上打开调试模式。
@goto end
:success
@echo 传输成功。
@goto end
:end
@pause
