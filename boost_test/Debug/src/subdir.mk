################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/boost_test.cpp \
../src/date_time_test.cpp \
../src/timer_test.cpp 

OBJS += \
./src/boost_test.o \
./src/date_time_test.o \
./src/timer_test.o 

CPP_DEPS += \
./src/boost_test.d \
./src/date_time_test.d \
./src/timer_test.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/include/python2.7/ -I/usr/include/boost -O0 -fPIC -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


