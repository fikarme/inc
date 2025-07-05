#!/bin/bash

# Clean up existing directory
rm -rf inc

# Clone the repository
git clone https://github.com/fikarme/inc.git

# Set permissions (though 777 is pretty permissive - you might want 755 instead)
chmod -R 777 inc

# Navigate into the directory
cd inc
