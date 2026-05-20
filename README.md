<img src="https://cdn.prod.website-files.com/677c400686e724409a5a7409/6790ad949cf622dc8dcd9fe4_nextwork-logo-leather.svg" alt="NextWork" width="300" />

# Active Directory Home Lab

**Project Link:** [View Project](https://learn.nextwork.org/projects/578859a7-a837-4caf-bb1f-5d5f9a154d0f)

**Author:** HAROON AKBAR  
**Email:** haroonakberjune11@gmail.com

---

## Building an Active Directory Home Lab

### Project goals and motivation

In this project, I'm building A fully functional Active Directory domain controller running inside VirtualBox, complete with departments, user accounts, security groups, and a PowerShell automation script.

## Setting Up the Virtualization Environment

### Installing VirtualBox

In this step, I'm setting up Oracle VirtualBox so that I can run Windows Server 2022 Evaluation

![Image](https://learn.nextwork.org/satisfied_brown_brave_kraken/uploads/578859a7-a837-4caf-bb1f-5d5f9a154d0f_hkc1oq9w)

### Downloading Windows Server 2022

I saved the ISO to my virtualbox folder 

## Configuring the Windows Server Virtual Machine

### Creating and configuring DC01

In this step, I'm creating a virtual machine named DC01 with the correct hardware settings.so that I can Install Windows Server 2022 Standard Evaluation (Desktop Experience) on DC01 and Configure a static IP address, set the DNS server, and rename the computer.

![Image](https://learn.nextwork.org/satisfied_brown_brave_kraken/uploads/578859a7-a837-4caf-bb1f-5d5f9a154d0f_l7qwfcoa)

![Image](https://learn.nextwork.org/satisfied_brown_brave_kraken/uploads/578859a7-a837-4caf-bb1f-5d5f9a154d0f_4y2zcmdh)

## Promoting DC01 to a Domain Controller

### Installing Active Directory Domain Services

In this step, I'm installing the AD DS role using Server Manager. so that DC01 becomes a domain controller and create a new forest

![Image](https://learn.nextwork.org/satisfied_brown_brave_kraken/uploads/578859a7-a837-4caf-bb1f-5d5f9a154d0f_aqhsiyho)

### Understanding the domain controller role

I created a domain called mylab.local. Being a domain controller means DC01 can now become the central authority for my entire mylab.local domain

## Structuring the Domain with OUs, Users, and Groups

### Creating the organizational structure

In this step, I'm creating three Organizational Units for IT, HR, and Sales, Creating user accounts in each department OU, and creating Security Groups, Assigning users to their department group.

![Image](https://learn.nextwork.org/satisfied_brown_brave_kraken/uploads/578859a7-a837-4caf-bb1f-5d5f9a154d0f_5pl6vu30)

![Image](https://learn.nextwork.org/satisfied_brown_brave_kraken/uploads/578859a7-a837-4caf-bb1f-5d5f9a154d0f_cr1djep7)

## Automating User Management with PowerShell

### Using PowerShell to manage Active Directory

In this step, I'm using PowerShell to query existing users and OUs and create a new user account entirely from the command line so that I can write and run a script that bulk-creates users from a CSV file.

![Image](https://learn.nextwork.org/satisfied_brown_brave_kraken/uploads/578859a7-a837-4caf-bb1f-5d5f9a154d0f_y7t69q4u)

### Advantages of scripted user creation

Using a script lets me create new users in bulk and in an automated way compared to the GUI which requires one by one entry

## Joining a Client to the Domain and Enforcing Group Policy

### Verifying GPO application on CLIENT01

## Reflections and Key Takeaways

### Tools and concepts learned

The key tools I used include Oracle VirtualBox, Windows Server 2022, Server Manager, Active Directory Users and Computers, and PowerShell. Key concepts I learnt include Virtual Machine, Static IP Address, DNS, Active Directory Domain Services (AD DS), Domain Controller, Forest and Domain, DSRM Password, Organizational Units(OUs), Security Groups, and Bulk user creation with CSV + scripts

### Time and challenges

This project took me approximately 3 hours to complete. The most challenging part was writing the automation script 

### Next steps and goals

I did this project today to learn how to build an Active Directory environment from scratch, including creating a domain controller, organizing users into departments, and automating account management with PowerShell.

---

*Built with [NextWork](https://learn.nextwork.org) - [View this project](https://learn.nextwork.org/projects/578859a7-a837-4caf-bb1f-5d5f9a154d0f)*
