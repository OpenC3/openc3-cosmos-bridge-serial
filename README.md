# OpenC3 COSMOS Bridge for Serial Connections

This bridge provides an interface to connect to a host's serial port and forward the
data to COSMOS over TCP/IP.

## Install and Run the Bridge

1. gem install openc3
1. gem install openc3-cosmos-bridge-serial
1. Update the next step with your specific serial port settings
1. openc3cli bridgegem openc3-cosmos-bridge-serial router_port=2950 write_port_name=COM1 read_port_name=COM1 baud_rate=115200 parity=ODD

## Create and Install a Plugin

You will also need to create a COSMOS plugin that describes your target and connects to the bridge.

The INTERFACE section of your plugin will look something like this:

```
INTERFACE BRIDGE_INT tcpip_client_interface.rb host.docker.internal 2950 2950 10.0 nil LENGTH [Protocol Specific Parameters]
  MAP_TARGET MY_TARGET
```
