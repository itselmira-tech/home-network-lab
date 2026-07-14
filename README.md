# Home Network Lab

A practical IT project focused on understanding, documenting, and automating a small home network environment.

## Project Overview

In this project, I created a small home network documentation lab to practice basic networking concepts and automate network information collection using PowerShell.

The project covers IP addressing, DNS, DHCP, network documentation, and basic Windows network automation.

## Objectives

- Understand basic networking concepts
- Document a home network structure
- Analyze Windows network configuration
- Learn Git and GitHub workflow
- Automate network information collection with PowerShell

## Network Concepts Covered

### IP Addressing

- IPv4 addresses
- Private IP ranges
- Subnetting basics
- Default Gateway

### Network Services

- DHCP
- DNS
- Network configuration analysis

## Project Structure

```
home-network-lab
│
├── diagrams
│   └── home-network-diagram.png
│
├── screenshots
│   └── network-info.png
│
├── notes
│   ├── ip-addressing.md
│   ├── dns.md
│   └── dhcp.md
│
├── scripts
│   └── network-report.ps1
│
└── README.md
```

## Network Diagram

The following diagram shows the structure of the documented home network:

![Home Network Diagram](diagrams/home-network-diagram.png)

## Network Information

Example network information collected from a Windows system:

![Network Information](screenshots/network-info.png)

## PowerShell Automation

This project includes a PowerShell script that collects basic network information automatically.

Script:

```
scripts/network-report.ps1
```

Run:

```powershell
.\scripts\network-report.ps1
```

The script collects:

- Computer name
- Date and time
- IPv4 address
- Network gateway
- DNS servers

## Tools Used

- Windows PowerShell
- Git
- GitHub
- Visual Studio Code
- diagrams.net
- Markdown

## Skills Practiced

- Basic networking
- Network troubleshooting
- Technical documentation
- PowerShell scripting
- Version control with Git

## Future Improvements

Possible future improvements:

- Add network monitoring
- Add more PowerShell automation
- Add virtual machines for testing
- Document advanced networking concepts

## Author

Elmira