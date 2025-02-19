# Fedora Gaming and Pentesting Firewall Configuration

This repository contains a script designed to configure a Fedora-based system’s firewall for both gaming and pentesting environments. It ensures that essential ports and services are opened while securing the system from unnecessary vulnerabilities.

## Features

- Configures the firewall for gaming by allowing Steam, Discord, Teamspeak, and other game-related ports.
- Opens ports commonly used for pentesting like `4444`, `8080`, `1337`, and a range from `1025-65535` for UDP and TCP traffic.
- Secures SSH access by allowing the necessary ports for remote login.
- Customizable and easy to use for a secure yet functional Fedora system setup.

## Prerequisites

Before running the script, make sure your system meets the following requirements:

- Fedora Workstation (or any other Fedora-based distribution)
- Root privileges (sudo access)
- Basic understanding of Linux command-line usage

## Installation

To use the firewall configuration script, follow these steps:

### 1. Clone the repository

```bash
git clone https://github.com/zRainerzz/firewall-configure.git
cd firewall-configure
