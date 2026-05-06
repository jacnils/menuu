# menuu

temporary build instructions:

- install dependencies as needed
- install [netkit](https://github.com/jacnils/netkit)
- clone repository recursively
- ./scripts/generate_wayland_c.sh from project root (if wayland support is enabled)
- mkdir -p build && cd build
- cmake ..
- cmake --build . && cmake --install .
- cd ../libmenuu
- pip install . --break-system-packages
- optionally move docs/menuu.py to $HOME/.config/menuu/ for a default configuration
