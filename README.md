# MoleculeRuntime - Runtime Client
The molecule_rpc_client is used to simulate MoleculeRuntime. It sends commands to the runc by global IPC.
## Build
``` bash
make
```
## Run
Usage:
``` bash
USAGE:
./molecule_rpc_client <command> -i <server_id> -p <os_port> command_args...

DEFAULT ARGS:
    os_port: 65259

COMMANDS:
    run: run a container
        ARGS: -c <container_id> -b <bundle_path>
        DEFAULT ARGS:
            container_id: container_id
            bundle_path: $HOME/.base/baseline/
            
    cfork: fork a container from template to endpoint
        ARGS: -t <template_container_id> -e <endpoint_container_id>
        DEFAULT ARGS:
            template_container_id: python-test
            endpoint_container_id: app-test

    send: send messages to runc
        ARGS: TODO
        DEFAULT ARGS:
            TODO

```
Example:
``` bash
# Suppose there's a server running with id 1 and a global os listening on port 65259
./molecule_rpc_client cfork -i 1 -t temp -p endp 
```
## PROTOCOL
TODO