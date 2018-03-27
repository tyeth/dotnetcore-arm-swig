# SWIG_FILES=example.cs example_wrap.c example_wrap.cs examplePINVOKE.cs
SWIG=swig
CC=gcc
CFLAGS=-I.
ODIR=./app
LDIR =./app
DEPS = example.h
OBJ = $(ODIR)/example.o $(ODIR)/example_wrap.o 
LIBS=-lm

$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -fpic -o $@ $< $(CFLAGS) -o $@

example: $(OBJ)
	$(CC) -shared -fpic -o $@ $^ $(CFLAGS) -o $(ODIR)/libexample.so

.PHONY: swig
swig:
	$(SWIG) -csharp example.i

.PHONY: clean
clean:
	rm -f $(SWIG_FILES) $(ODIR)/example.o $(ODIR)/example_wrap.o $(ODIR)/libexample.so
