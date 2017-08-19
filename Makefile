PYTHON_VERSION = 2.6
PYTHON_INCLUDE = /usr/include/python$(PYTHON_VERSION)
  
# location of the Boost Python include files and library
#  
BOOST_INC = /usr/local/include
BOOST_LIB = /usr/local/lib
 
# compile mesh classes
TARGET = hello
 
$(TARGET).so: $(TARGET).o
	icc -shared $(TARGET).o -L$(BOOST_LIB) -lboost_python -L/usr/lib/python$(PYTHON_VERSION)/config -lpython$(PYTHON_VERSION) -Wl,-rpath=$HOME/local/lib64/ -o $(TARGET).so
	 
$(TARGET).o: $(TARGET).cpp
	icc -I$(PYTHON_INCLUDE) -I$(BOOST_INC) -fPIC -c $(TARGET).cpp

clean:
	rm *.so *.o
