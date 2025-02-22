CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c11
LDFLAGS = -lSDL2 -lm
SRC_DIR = src
BIN_DIR = bin
TARGET = $(BIN_DIR)/traffic_simulation

SRC_FILES = $(SRC_DIR)/main.c $(SRC_DIR)/generator.c $(SRC_DIR)/traffic_simulation.c
OBJ_FILES = $(SRC_FILES:.c=.o)

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJ_FILES) | $(BIN_DIR)
	$(CC) -o $@ $^ $(LDFLAGS)

$(SRC_DIR)/%.o: $(SRC_DIR)/%.c $(SRC_DIR)/traffic_simulation.h
	$(CC) $(CFLAGS) -c -o $@ $<

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

clean:
	rm -rf $(BIN_DIR) $(SRC_DIR)/*.o

