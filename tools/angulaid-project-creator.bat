@ECHO OFF
REM ==================================================================================
REM  Angulaid - Angular Boilerplate Template [Version 0.1.01 Alpha] Windows Edition
REM  Copyright (c) 2012 z3bbster. All rights reserved.
REM ==================================================================================

SET PROJECT_NAME=
SET /p PROJECT_NAME=" What's your new Angular project name?"

set PROJ=%CD%\%PROJECT_NAME%

ECHO %PROJ%
PAUSE

MD %PROJ%\assets\font %PROJ%\assets\ico %PROJ%\assets\img %PROJ%\css\plugin %PROJ%\css\vendor 
MD %PROJ%\js\plugin %PROJ%\js\vendor %PROJ%\template %PROJ%\view

ECHO //%PROJECT_NAME% controller.js > %PROJ%\js\controllers.js
ECHO var app = angular.module("%PROJECT_NAME%App", []); >> %PROJ%\js\controllers.js

ECHO //%PROJECT_NAME% routers.js > %PROJ%\js\routers.js
ECHO //%PROJECT_NAME% models.js > %PROJ%\js\models.js
ECHO //%PROJECT_NAME% views.js > %PROJ%\js\views.js
ECHO //%PROJECT_NAME% directives.js > %PROJ%\js\directives.js

ECHO /* %PROJECT_NAME% styles.scss */ > %PROJ%\scss\style.scss

ECHO ## %PROJECT_NAME% > %PROJ%\README.md