| **Security Group**                        | **Network ACL (NACL)**                       |
| ----------------------------------------- | -------------------------------------------- |
| **Works On:** EC2 Instance                | **Works On:** Subnet                         |
| **Type:** Stateful                        | **Type:** Stateless                          |
| **Rules:** Allow Only                     | **Rules:** Allow & Deny                      |
| **Return Traffic:** Automatically Allowed | **Return Traffic:** Must Be Allowed Manually |
| **Best Use:** Protect an EC2 Instance     | **Best Use:** Protect an Entire Subnet       |
