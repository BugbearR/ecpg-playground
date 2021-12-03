TARGET = dynamic_sql_no_inout
OBJS = main.o
C_SRCS = main.c
CFLAGS = -g

ECPG = ecpg

MY_LDFLAGS = -lecpg -lpq
MY_CFLAGS = -I/usr/include/postgresql
ECPGFLAGS = -I/usr/include/postgresql

.PHONY: all
all: $(TARGET)

.PHONY: clean
clean:
	-rm -f $(OBJS) $(C_SRCS)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) $(MY_LDFLAGS) -o $@

main.o: main.c
	$(CC) $(CFLAGS) $(MY_CFLAGS) -c -o $@ $<

main.c: main.pgc
	$(ECPG) $(ECPGFLAGS) -c -o $@ $<
