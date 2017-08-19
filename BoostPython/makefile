CC = icpc

LIB = -L/data/home/Eplistical/pkgs/anaconda3/lib -lpython3.6m 
LIB += -L/usr/local/lib64 -lboost_python -Wl,-rpath=/usr/local/lib64

INC = -I/data/home/Eplistical/pkgs/anaconda3/include/python3.6m
OPTS = -O2 -fPIC

default: zoo.so

zoo.so: zoo.o
	$(CC) $(INC) $(LIB) -shared $< -o $@

zoo.o: zoo.cpp
	$(CC) $(INC) $(LIB) $(OPTS) -c $< -o $@

clean:
	 rm -rf *.o *.so
