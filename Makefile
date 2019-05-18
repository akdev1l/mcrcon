BIN_NAME := mcrcon
SRC_FILE := mcrcon.c
VERSION := 0.0.5
DIST_NAME := $(BIN_NAME)-$(VERSION)
PACKAGE_NAME := $(DIST_NAME).rpm
WORKSPACE := $(shell mktemp -d)
CFLAGS := -O2 -Wall -g
BINDIR := usr/bin



all: $(BIN_NAME)
	@rm -rf $(WORKSPACE)


$(BIN_NAME): $(SRC_FILE)
	$(CC) $(CFLAGS) $(LDFLAGS) $(SRC_FILE) -o $(BIN_NAME)

$(PACKAGE_NAME): $(BIN_NAME)
	rpmbuild -bb rpm/$(BIN_NAME).spec

dist: $(BIN_NAME)
	cp -r . $(WORKSPACE)/$(DIST_NAME)
	tar -C $(WORKSPACE) -czf $(DIST_NAME).tar.gz .

install: $(SRC_FILE)
	install -D -t $(DESTDIR)/$(BINDIR) $(BIN_NAME)

.PHONY clean:
	rm -rf $(BIN_NAME)
