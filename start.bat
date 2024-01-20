@echo off

@rem Check administrative permissions using net session command.
net session >nul 2>&1
if %errorlevel% == 0 (
    echo Successfully checked administrative permissions.
) else (
    echo Run this script with administrative permissions.
    exit /b 1
)

setlocal EnableDelayedExpansion

@rem Create directory where elasticsearch data will be stored
@rem If you change this directory remember to set same path at .env file at ES_DATA_DIR
if not exist "D:\Docker\data\elasticsearch-data" (
  mkdir "D:\Docker\data\elasticsearch-data"
  if "!errorlevel!" EQU "0" (
    echo Successfully created folder "D:\Docker\data\elasticsearch-data".
  ) else (
    echo Error while creating folder "D:\Docker\data\elasticsearch-data".
    exit /b %errorlevel%
  )
)

@rem Create directory where kibana data will be stored
@rem If you change this directory remember to set same path at .env file at KIBANA_DATA_DIR
if not exist "D:\Docker\data\kibana-data" (
  mkdir "D:\Docker\data\kibana-data"
  if "!errorlevel!" EQU "0" (
    echo Successfully created folder "D:\Docker\data\kibana-data".
  ) else (
    echo Error while creating folder "D:\Docker\data\kibana-data".
    exit /b %errorlevel%
  )
)

setlocal DisableDelayedExpansion

@rem Check if Docker desktop is running
docker ps 2>&1 | find /I /C "error" > NUL
if %errorlevel% EQU 0 (
    ECHO IMPORTANT: Run DOCKER DESKTOP before you start this script!
    ECHO IMPORTANT: I wait 30 seconds for DOCKER DESKTOP to launch, then continue.
    timeout 30
)

echo Running docker compose files.

docker compose --env-file .env -f elk-docker-compose.yml up -d

echo Done!
