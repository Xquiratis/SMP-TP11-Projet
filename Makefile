# A mettre a jour : répertoire d'installation de Google Test
all : mytest.out testCalculator.out
GTEST_DIR = ./googletest/googletest
GTEST_LIB = ./googletest/lib

CPP_FLAGS = -isystem $(GTEST_DIR)/include  -g -Wall -Wextra -pthread -std=c++11

GTEST_HEADERS = $(GTEST_DIR)/include/gtest/*.h \
                $(GTEST_DIR)/include/gtest/internal/*.h

mytest.o: mytest.cpp factorielle.h
	g++ -c $(CPP_FLAGS) mytest.cpp

factorielle.o: factorielle.cpp factorielle.h
	g++ -c $(CPP_FLAGS) factorielle.cpp

mytest.out: mytest.o factorielle.o
	g++ $(CPP_FLAGS) -o mytest.out mytest.o factorielle.o -lpthread $(GTEST_LIB)/libgtest.a $(GTEST_LIB)/libgtest_main.a


testCalculator.o: testCalculator.cpp Calculator.h
	g++ -c $(CPP_FLAGS) testCalculator.cpp

Calculator.o: Calculator.cpp Calculator.h
	g++ -c $(CPP_FLAGS) Calculator.cpp

testCalculator.out: testCalculator.o Calculator.o
	g++ $(CPP_FLAGS) -o testCalculator.out testCalculator.o Calculator.o -lpthread $(GTEST_LIB)/libgtest.a $(GTEST_LIB)/libgtest_main.a


