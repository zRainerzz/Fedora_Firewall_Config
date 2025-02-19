#!/bin/bash

# Check if script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root or with sudo."
   exit 1
fi

# Default firewall configuration for gaming and pentesting
echo "Configuring firewall for gaming and pentesting environment..."

# Allow specific services for gaming
sudo firewall-cmd --zone=FedoraWorkstation --add-service=ssh --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-service=samba-client --permanent

# Open custom ports commonly used for gaming and pentesting
sudo firewall-cmd --zone=FedoraWorkstation --add-port=4444/tcp --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-port=8080/tcp --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-port=1337/tcp --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-port=1025-65535/udp --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-port=1025-65535/tcp --permanent

# Add Steam, Discord, and Teamspeak services if needed (not predefined in firewalld)
sudo firewall-cmd --zone=FedoraWorkstation --add-service=steam --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-service=discord --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-service=teamspeak --permanent

# Reload firewall configuration to apply changes
sudo firewall-cmd --reload

echo "Firewall configured for secure gaming and pentesting environment."

# Secure SSH access
echo "Securing SSH access..."
sudo firewall-cmd --zone=FedoraWorkstation --add-service=ssh --permanent
sudo firewall-cmd --reload

echo "SSH access secured."

# Allow ports for various services that might be used for pentesting and gaming
sudo firewall-cmd --zone=FedoraWorkstation --add-port=4444/tcp --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-port=8080/tcp --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-port=1337/tcp --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-port=1025-65535/udp --permanent
sudo firewall-cmd --zone=FedoraWorkstation --add-port=1025-65535/tcp --permanent

# Reload firewall once again to ensure all settings are active
sudo firewall-cmd --reload

echo "Firewall setup complete."

