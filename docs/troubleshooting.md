# Network Troubleshooting Guide

This document contains basic troubleshooting scenarios for common home network problems.

---

# Scenario 1: No Internet Access

## Problem

A device cannot access the internet.

## Possible Causes

- Router problem
- Incorrect IP configuration
- Network cable issue

## Diagnostic Steps

1. Check physical connections.
2. Check IP configuration:

```
ipconfig
```

3. Test router:

```
ping gateway-address
```

4. Test internet connectivity:

```
ping 8.8.8.8
```

## Solution

Restart network equipment and verify IP settings.

---

# Scenario 2: Website Cannot Be Opened

## Problem

Internet connection works but websites do not load.

## Possible Cause

DNS resolution failure.

## Diagnostic Steps

Test DNS:

```
nslookup google.com
```

## Solution

Check DNS server configuration.

---

# Scenario 3: IP Address Conflict

## Problem

Two devices use the same IP address.

## Symptoms

- Connection instability
- Network warnings

## Solution

Renew DHCP configuration:

```
ipconfig /release
ipconfig /renew
```
