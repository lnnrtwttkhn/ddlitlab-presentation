# Define variables
IMAGES_URL=https://cloud.uni-hamburg.de/s/Cd6fciKbajxc86E/download
IMAGES_ARCHIVE=ddlitlab-presentation.zip
IMAGES_DIR=static/images/

# Default target
all: download-images

# Download and extract images
download-images:
	wget $(IMAGES_URL) -O $(IMAGES_ARCHIVE)
	unzip -j -o $(IMAGES_ARCHIVE) -d $(IMAGES_DIR)
	rm -f $(IMAGES_ARCHIVE)

# Clean downloaded images
clean:
	rm -rf $(IMAGES_DIR)*
