CC := g++ # This is the main compiler
# CC := clang --analyze # and comment out the linker last line for sanity
SRCDIR := src
BUILDDIR := build
TARGET := bin/runner
TEST_DIR=test

SRCEXT := cpp
SOURCES := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o))
CFLAGS := -g -std=c++11 # -Wall
LIB := # -lSDL2 -lSDL2_image
INC := -I include

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
	@echo "> Building ";
	@mkdir -p $(BUILDDIR)
	@echo " $(CC) $(CFLAGS) $(ARGSFLAGS) $(INC) -c -o $@ $<"; $(CC) $(CFLAGS) $(ARGSFLAGS) $(INC) -c -o $@ $<

$(TARGET): $(OBJECTS)
	@echo "> Linking ";
	@echo " $(CC) $^ -o $(TARGET) $(LIB)"; $(CC) $^ -o $(TARGET) $(LIB)

clean:
	@echo "> Cleaning ";
	@echo " $(RM) -r $(BUILDDIR) $(TARGET)"; $(RM) -r $(BUILDDIR) $(TARGET)

run: 
	$(TARGET)

test:
$(TEST_DIR): $(OBJECTS)
	@echo " $(ARGSFLAGS)";
	@echo "> Linking ";
	$(CC) $(CFLAGS) $(INC) -o bin/run_test test/test_main.cpp $(OBJECTS) $(TEST_SRC)
	@echo "> Running Test ";
	@./bin/run_test

# Spikes
# ticket:
#  $(CC) $(CFLAGS) spikes/ticket.cpp $(INC) $(LIB) -o bin/ticket

.PHONY: clean

.PHONY : run

.PHONY : test