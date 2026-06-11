# 🌐 Networking Fundamentals 
---

## 📘 1. OSI Model (Open Systems Interconnection)

The OSI model is a **7-layer conceptual framework** that explains how data travels from one system to another over a network.

| Layer | Name         | Description                                |
| ----- | ------------ | ------------------------------------------ |
| 7     | Application  | User-facing services (HTTP, FTP, SMTP)     |
| 6     | Presentation | Data formatting, encryption, compression   |
| 5     | Session      | Session creation, management, termination  |
| 4     | Transport    | Data segmentation, reliability (TCP/UDP)   |
| 3     | Network      | Logical addressing and routing (IP)        |
| 2     | Data Link    | Framing, MAC addressing                    |
| 1     | Physical     | Transmission of bits via cable or wireless |



---

## 📗 2. TCP/IP Model

The TCP/IP model is the **practical implementation** of networking used on the Internet.

| TCP/IP Layer   | OSI Mapping        |
| -------------- | ------------------ |
| Application    | OSI Layers 7, 6, 5 |
| Transport      | OSI Layer 4        |
| Internet       | OSI Layer 3        |
| Network Access | OSI Layers 2, 1    |

---

## 🔌 3. Networking Devices

Devices used to build and manage networks:

* **Hub (Layer 1)**
  Sends data to all connected devices (no filtering)

* **Bridge (Layer 2)**
  Filters traffic using MAC addresses

* **Switch (Layer 2)**
  Sends data only to the destination device

* **Router (Layer 3)**
  Routes traffic between different networks using IP

---

## 🕸️ 4. Network Topologies

* **Bus Topology** – Single backbone cable
* **Star Topology** – Central hub or switch
* **Ring Topology** – Circular connection
* **Mesh Topology** – Every node connected to all
* **Hybrid Topology** – Combination of topologies

---

## 🌍 5. Types of Networks

| Network Type | Description                      |
| ------------ | -------------------------------- |
| LAN          | Small area like home or office   |
| MAN          | City-wide network                |
| WAN          | Large geographic area (Internet) |

---

## 🔢 6. IP Addressing

An **IP address** uniquely identifies a device on a network.

### IPv4

* 32-bit address
* Example: `192.168.1.1`

### IPv6

* 128-bit address
* Example: `2001:db8::1`

### Important Terms

* **Network ID** – Identifies the network
* **Broadcast ID** – Used to reach all devices
* **Subnet Mask** – Separates network and host portion

---

## 🌐 7. Public IP vs Private IP

### Private IP Ranges

```
10.0.0.0 – 10.255.255.255
172.16.0.0 – 172.31.255.255
192.168.0.0 – 192.168.255.255
```

### Difference Table

| Parameter       | Public IP               | Private IP                    |
| --------------- | ----------------------- | ----------------------------- |
| Meaning         | Used on the Internet    | Used inside internal networks |
| Scope           | Global                  | Local                         |
| Uniqueness      | Globally unique         | Reusable                      |
| Assigned By     | ISP                     | Router / DHCP                 |
| Internet Access | Direct                  | Via NAT                       |
| Cost            | Paid                    | Free                          |
| Security        | Less secure             | More secure                   |
| Usage           | Websites, cloud servers | Home/office networks          |
| Example         | `8.8.8.8`               | `192.168.1.10`                |

---

## 🚦 8. TCP vs UDP

### Difference Table

| Parameter      | TCP                           | UDP                    |
| -------------- | ----------------------------- | ---------------------- |
| Full Form      | Transmission Control Protocol | User Datagram Protocol |
| Connection     | Connection-oriented           | Connectionless         |
| Reliability    | Reliable                      | Unreliable             |
| Data Delivery  | Guaranteed                    | Not guaranteed         |
| Packet Order   | Maintained                    | Not maintained         |
| Error Handling | Yes                           | No                     |
| Retransmission | Supported                     | Not supported          |
| Speed          | Slower                        | Faster                 |
| Overhead       | High                          | Low                    |
| Use Cases      | Web, email, file transfer     | Streaming, gaming, DNS |
| Examples       | HTTP, HTTPS, SSH              | DNS, VoIP              |

---
