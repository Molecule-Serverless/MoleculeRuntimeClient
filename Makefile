CFLAGS	:= -ImoleculeOS-userlib/include -ImoleculeOS-userlib/local-ipc 
LDFLAGS	:= -LmoleculeOS-userlib -lmoleculeos -lm -lpthread
All: molecule_rpc_client
molecule_rpc_client: molecule_rpc_client.c
	gcc -g -o $@ $^ $(CFLAGS) $(LDFLAGS) 
molecule_rpc_server: molecule_rpc_server.c 
	gcc -o $@ $^ $(CFLAGS) $(LDFLAGS)
clean:
	rm molecule_rpc_server molecule_rpc_client