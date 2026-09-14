@ECHO OFF
REM Regenerate everything derived from the FSH sources and the guide pages:
REM   1. SUSHI  -> fsh-generated/
REM   2. artifact index page (reads fsh-generated + example page frontmatter)
REM   3. IP statements block on the downloads page
REM   4. per-page tables of contents
REM Run this before committing / before _build.bat.

ECHO === SUSHI ===
CALL sushi build .
IF ERRORLEVEL 1 GOTO fail

ECHO.
ECHO === Artifact index ===
python scripts\build_artifacts_index.py
IF ERRORLEVEL 1 GOTO fail

ECHO.
ECHO === IP statements ===
python scripts\build_ip_statements.py
IF ERRORLEVEL 1 GOTO fail

ECHO.
ECHO === Page TOCs ===
python scripts\add_page_toc.py
IF ERRORLEVEL 1 GOTO fail

ECHO.
ECHO Done.
EXIT /B 0

:fail
ECHO.
ECHO *** FAILED - see the output above.
EXIT /B 1
