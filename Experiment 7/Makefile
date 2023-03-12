# Makefile

# Compiler and flags
CC = gcc
CFLAGS = -Wall

# Executable name
EXE = hello

# Source file
SRC = hello.c

# Object file
OBJ = $(SRC:.c=.o)

# Platform detection
ifeq ($(OS),Windows_NT)
	PLATFORM = WINDOWS
else
	PLATFORM = LINUX
endif

# Rule to make executable
$(EXE): $(OBJ)
ifeq ($(PLATFORM),WINDOWS)
	$(CC) $(CFLAGS) -o $@.exe $^ # add .exe extension for Windows executable
else
	$(CC) $(CFLAGS) -o $@ $^ # no extension for Linux executable
endif

# Rule to make object file
$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c $<

# Rule to clean object and executable files
.PHONY: clean
clean:
ifeq ($(PLATFORM),WINDOWS)
	del $(OBJ) $(EXE).exe # use del command for Windows platform
else
	rm -f $(OBJ) $(EXE) # use rm command for Linux platform
endif	