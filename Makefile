OUTPUT := mcrcon
SRC_FILE := mcrcon.c
SYSROOT := /

all: mcrecon.c


mcrecon.c:
	$(CC) $(SRC_FILE) -o $(OUTPUT)

install: mcrecon.c
	cp $(OUTPUT) $(SYSROOT)usr/bin/$(OUTPUT)


.PHONY clean:
	rm -rf $(OUTPUT)
