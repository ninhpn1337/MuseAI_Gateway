@echo off
title MuseAI Gateway
cd /d "%~dp0"

if not exist ".venv" (
    echo [INFO] Creating virtual environment...
    python -m venv .venv
    echo [INFO] Installing dependencies...
    .venv\Scripts\pip install --upgrade pip
    .venv\Scripts\pip install -e .
    .venv\Scripts\playwright install chromium
)

echo [INFO] Starting MuseAI Gateway...
.venv\Scripts\python -m museai
pause
