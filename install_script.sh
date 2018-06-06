#!/bin/bash
# Purpose: install script to clear out slack messages.

# Setup environment
echo Setting up environment...
mkdir slackClear
cd slackClear
python3 -m venv .
. bin/activate
pip install slack-cleaner

# Switching files
echo Switching files...
rm lib/python3.6/site-packages/slack_cleaner/cli.py
cp ../cli.py ./lib/python3.6/site-packages/slack_cleaner

echo Environment complete.

