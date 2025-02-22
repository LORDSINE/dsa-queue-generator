CC = gcc
LDFLAGS = -lSDL2 -lm
SRC_DIR = src
BIN_DIR = bin
SRC_FILES = $(SRC_DIR)/main.c $(SRC_DIR)/generator.c $(SRC_DIR)/traffic_simulation.c
TARGET = $(BIN_DIR)/traffic_simulation

.PHONY: all clean

all: $(BIN_DIR) $(TARGET)

$(TARGET): $(SRC_FILES)
	$(CC) -o $@ $^ $(LDFLAGS)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

clean:
	rm -rf $(BIN_DIR)

run:
	mkdir -p $(BIN_DIR) && $(CC) -o $(TARGET) $(SRC_FILES) $(LDFLAGS) && ./$(TARGET)
