#!/bin/bash

# Retrieve the list of VMs (both running and not running)
vm_list=$(virsh list --all --name)

# Check if wofi is installed
if ! command -v wofi &> /dev/null; then
    echo "wofi is not installed. Please install wofi first."
    exit 1
fi

# Use wofi to select a VM
selected_vm=$(echo "$vm_list" | wofi --dmenu --prompt "Select a VM:")

# Check if a VM was selected
if [ -z "$selected_vm" ]; then
    echo "No VM selected. Exiting."
    exit 1
fi

# Start the selected VM
virsh start "$selected_vm"

# Check if virt-manager is installed
if ! command -v virt-manager &> /dev/null; then
    echo "virt-manager is not installed. Please install virt-manager first."
    exit 1
fi

# Connect to the VM's console
virt-manager --connect qemu:///system --show-domain-console "$selected_vm"

