# libmenuu
# Python interface for menuu

from libmenuu import interfacing
from libmenuu import socket_path
from libmenuu import settings
from pathlib import Path
import json

# is_running:
# Check if Menuu is running or not.
def is_running():
    return Path(socket_path).exists()

def load_settings(s):
    string = {
        "action": "load_config",
        "config_json": settings.serialize_to_json(s)
    }
    interfacing.menuu_pipe.send_string(json.dumps(string) + "\n")