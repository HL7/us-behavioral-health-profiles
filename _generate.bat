@ECHO OFF
REM Regenerates everything derived from the FSH sources:
REM   1. SUSHI  -> fsh-generated/
REM   2. artifact index page (reads fsh-generated + example page frontmatter)
REM   3. IP statements block on the downloads page
REM   4. per-page tables of contents
REM
REM Steps 2-4 write into guides/, which is the Simplifier source. So run this
REM FIRST, then sync to Simplifier, then export-ig.ps1 (which also imports the
REM export into input/), then _build.bat.

ECHO === SUSHI ===
REM SUSHI never deletes what it no longer generates, and the sync would carry
REM that leftover to Simplifier, so start from an empty folder.
IF EXIST fsh-generated RMDIR /S /Q fsh-generated
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
