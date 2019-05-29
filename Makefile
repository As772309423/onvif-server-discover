GSOAP_ROOT = ./
CC = gcc -g -DWITH_NONAMESPACES  -DSOAP_DEBUG -DDEBUG
INCLUDE = -I$(GSOAP_ROOT)
SERVER_OBJS = soapC.o stdsoap2.o duration.o wsaapi.o onvif_server_interface.o soapClient.o soapServer.o onvif_server.o
#SERVER_OBJS = soapC.o stdsoap2.o wsaapi.o onvif_server_interface.o soapClient.o soapServer.o onvif_server.o

all: server 
server: $(SERVER_OBJS)
	$(CC) $(INCLUDE) -o deviceserver $(SERVER_OBJS) -lpthread

clean: 
	rm -f *.o deviceprobe  deviceserver onvif
