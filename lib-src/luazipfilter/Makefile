CFLAGS  += -O2 -I$(PREFIX)/include/luajit-$(LUAJIT_VERSION) -fPIC -I/usr/include/lua5.1
LDFLAGS = $(MYLDFLAGS) -lz

SOURCES = luazipfilter.c
LIB = zipfilter.so

OBJECTS = $(SOURCES:.c=.o)

all: $(LIB)

$(LIB): $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

$(OBJECTS): $(DEPS)

.c.o:
	$(CC) $(CFLAGS) $< -c -o $@

clean:
	rm -f $(OBJECTS) $(LIB)
