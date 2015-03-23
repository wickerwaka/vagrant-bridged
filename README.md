# vagrant-bridged

VagrantFile and provisioning scripts for two VMs connected via a bridge VM.

This creates three VMs - left, right and middle. It also creates two internal virtualbox networks - left and right. The left VM is connected to the left network (eth1) and the right VM is connected to the right network (eth1). The middle VM creates an ethernet bridge between the left network (eth1) and the right network (eth2).

