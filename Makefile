CXX = g++



SRC = $(shell find src -name *.cpp)

TAR = liveRtspServer

CXX_FLAGS = -g -I/usr/local/include/BasicUsageEnvironment -I/usr/local/include/UsageEnvironment\
			-I/usr/local/include/groupsock -I/usr/local/include/liveMedia\
			-DNO_OPENSSL=1


LD_FLAGS = -lliveMedia -lBasicUsageEnvironment -lgroupsock -lUsageEnvironment -lpthread -lx264 -lasound -lfaac

all:
	$(CXX) -o $(TAR) $(SRC) $(CXX_FLAGS) $(LD_FLAGS)