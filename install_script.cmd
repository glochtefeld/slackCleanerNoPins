:: This script sets up a virtual environment for python and edits a package.
@ECHO ON

:: Setup environment
mkdir slackClear
cd slackClear
python -m venv .
Scripts/activate.bin
pip install slack-cleaner

:: Switching files
del lib\python3.6\site-packages\slack_cleaner\cli.py
COPY ..\
