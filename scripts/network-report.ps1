# Network Analysis Report

## Project Information

**Project:** Home Network Lab

**Purpose:** Home network analysis and documentation

**Focus Areas:**
- IP Addressing
- DNS
- DHCP
- Router Configuration
- Network Troubleshooting

---

# Executive Summary

This report documents the analysis of a home network environment.

The purpose of this project was to understand how devices communicate within a local network, identify network components, verify connectivity, and document basic troubleshooting procedures.

---

# Network Overview

A typical home network consists of several connected components:

- Internet connection
- Router
- Wireless network
- Client devices

The router acts as the central point for network communication and provides services such as DHCP and gateway access.

---

# Network Components

## Router

The router provides:

- Internet connectivity
- IP address management
- Network routing
- Wireless access

### Observation

The router successfully manages communication between local devices and the internet.

---

## Client Devices

Connected devices communicate through the local network using assigned IP addresses.

### Observation

Each device receives network configuration information from the router.

---

# IP Address Analysis

## IPv4 Configuration

The network uses private IPv4 addressing for local communication.

Important parameters:

- IP Address
- Subnet Mask
- Default Gateway
- DNS Server

Example:

```
IP Address:
192.168.x.x

Subnet Mask:
255.255.255.0

Gateway:
Router IP Address
```

---

# DHCP Analysis

DHCP automatically provides network configuration to devices.

Assigned information includes:

- IP Address
- Subnet Mask
- Gateway
- DNS Server

### Observation

Automatic IP assignment simplifies device configuration and reduces manual errors.

---

# DNS Analysis

DNS converts domain names into IP addresses.

Example:

```
google.com
      |
      v
IP Address
```

### Testing Method

DNS functionality was checked using:

```
nslookup
```

### Observation

Domain name resolution worked correctly.

---

# Connectivity Testing

Network connectivity was tested using:

## Ping Test

Command:

```
ping <destination>
```

Purpose:

- Verify device reachability
- Measure response time
- Identify connection problems

---

# Troubleshooting Scenarios

## Problem 1: No Internet Connection

### Possible Causes

- Router issue
- Incorrect IP configuration
- DNS problem

### Diagnostic Steps

1. Check IP address
2. Test router connectivity
3. Test DNS resolution

### Solution

Verify network configuration and restart network equipment if required.

---

## Problem 2: DNS Resolution Failure

### Symptoms

- Internet connection exists
- Websites cannot be opened

### Investigation

- Test DNS server
- Use nslookup
- Check router DNS settings

### Solution

Correct DNS configuration.

---

# Tools Used

- ipconfig
- ping
- nslookup
- Windows Network Settings
- Router Interface

---

# Skills Demonstrated

- IPv4 Networking
- TCP/IP Fundamentals
- DNS Troubleshooting
- DHCP Understanding
- Network Testing
- Technical Reporting

---

# Conclusion

This project provided practical experience in analyzing and documenting a home network environment.

The investigation improved understanding of network communication, addressing, DNS, DHCP, and basic troubleshooting methods.

This knowledge is directly relevant to IT support and IT-Systemelektroniker training.
