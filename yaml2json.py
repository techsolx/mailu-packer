#!/usr/bin/python3

import json
import sys
import yaml

f = yaml.safe_load(sys.stdin.read())
json.dump(f, sys.stdout)
