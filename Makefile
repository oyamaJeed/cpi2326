#TARGET NAME
TARGET := ex02

# OBJ FILES
OBJS := ex02.o

#SOURCE FILES
SRCS := $(OBJS:%.o=%.c)

#COMPILER TYPE
CC := gcc

#COMPILER OPTION
CFLAGS := -g -Wall -Wextra -DDEEBUG=1

#DYNAMIC LIBRARY
#LDFLAGS := -lpthread

#MAKE ALL(PHONY TARGET)
.PHONY: all
all: $(TAGET)

#LINK OBJECTS
$(TARGET): $(OBJ)
 $(CC) $(CFLAGS) -o $@ $(OBJS) $(LDFLAGS)
ex02: ex02.o
 gcc -g -Wall -Wextra -DDEEBUG=1 -o ex02 ex02 ex02.o

#COMPILE SOURCE
./%.o: ./%.c
 $(CC) $(CC\FLAGS) -c $<
#./ex02.o: ./ex02.c
# gcc -c ./ex02.c

# UPDATE HEADER FILE
#$(OBJS): *.h


# CLEAN FILES (PHONY TARGET)
.PHONY: clean
clean: 
	rm -f *.o *~ $(TARGET)




$(TARGET): $(TARGET).c

gcc -o ex02 ex02.c
