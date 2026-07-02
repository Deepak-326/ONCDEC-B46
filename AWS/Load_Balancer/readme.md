
## What is a Load Balancer?

A **Load Balancer** is an AWS service that **distributes incoming user requests across multiple EC2 instances**.

Instead of sending every request to one server, it shares the load among multiple servers so that no single EC2 becomes overloaded.

---

## Why Do We Need a Load Balancer?

Imagine you own an online shopping website.

On a normal day, one EC2 instance is enough to handle all users.

But during a **Diwali sale** or **Big Billion Days**, thousands of users visit your website at the same time.

If all requests go to a single EC2 instance:

* The server becomes slow.
* It may stop responding.
* Users may not be able to open the website.

To avoid this, we place a **Load Balancer** in front of multiple EC2 instances.

The Load Balancer receives all user requests and distributes them among the available EC2 instances.

```text id="e8wgk2"
                Load Balancer
                     │
      ┌──────────────┼──────────────┐
      ▼              ▼              ▼
    EC2-1          EC2-2          EC2-3
```

Example:

```text id="3oq1m2"
User 1 → EC2-1
User 2 → EC2-2
User 3 → EC2-3
User 4 → EC2-1
User 5 → EC2-2
```

As a result:

* No single EC2 handles all the traffic.
* Users get a faster response.
* If one EC2 fails, the Load Balancer automatically sends traffic to the remaining healthy EC2 instances.
* Your application continues to run without interruption.

### Benefits

* Prevents server overload.
* Improves application performance.
* Increases availability.
* Automatically routes traffic to healthy EC2 instances.
