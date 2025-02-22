CC = gcc
LDFLAGS = -lSDL2 -lm
SRC_DIR = src
SRC_FILES = $(SRC_DIR)/main.c $(SRC_DIR)/generator.c $(SRC_DIR)/traffic_simulation.c
TARGET = traffic_simulation

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SRC_FILES)
	$(CC) -o $@ $^ $(LDFLAGS)

clean:
	rm -f $(TARGET)

