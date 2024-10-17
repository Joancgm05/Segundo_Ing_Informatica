# Variables
CXX = iverilog
CXX2 = vvp
CXX3 = gtkwave
CXXFLAGS = -Wall -o
SRC_DIR = directorio_v
BIN_DIR = directorio_exec
HED_DIR = directorio_test_bench
SOURCES = $(wildcard $(SRC_DIR)/*.v)
HEADERS = $(wildcard $(HED_DIR)/*.v)
EXECUTABLE = $(BIN_DIR)/ALU
EXECUTABLE_VVP = $(addsuffix .vcd, $(EXECUTABLE))

## ····························Importante······························ ##
# El $@ es una macro: es el nombre del objetivo $(Executable) en este caso
# El $^ es una macro: son todos los prerequisitos
# El %< es una macro: primer prerequisito
#········································································#


# Regla por defecto: compilar el ejecutable
all: $(EXECUTABLE_VVP)

# Compilar el ejecutable
$(EXECUTABLE): $(SOURCES) $(HEADERS)
$(CXX) $(CXXFLAGS) $@ $^

$(EXECUTABLE_VVP): $(EXECUTABLE)
$(CXX2) $^
mv *.vcd ./directorio_exec

.PHONY: clean gtkwave_file

# Regla para limpiar el directorio
clean:
rm -f $(EXECUTABLE)
rm -f $(EXECUTABLE_VVP)

gtkwave_file: $(EXECUTABLE_VVP)
$(CXX3) $(EXECUTABLE_VVP)