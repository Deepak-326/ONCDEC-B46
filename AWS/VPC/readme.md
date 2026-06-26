```txt
# how to create vpc

steps:
	* define ip address range(192.168.0.0/16)
	* create subnets
	  1. public subnet: direct internet access(192.168.0.0/22)
	  2. private subnet: no internet access(192.168.4.0/22)
	* create internet gateway and attach to vpc
	* create route table
		- associate subnet with rt
		- attach internet gateway
	* launch ec2 instance in public subnet >> connnect
```

<img width="1207" height="611" alt="image" src="https://github.com/user-attachments/assets/23db6232-a486-4018-a7ea-96be64bce51d" />



# Create VPC
- give name and cidr block
192.168.0.0/16
<img width="1421" height="710" alt="image" src="https://github.com/user-attachments/assets/eabe7282-9413-4bc7-8d3c-434e5c7b7183" />

# create subnet
- select vpc
- provide name
- provide az 
- cidr block
- allow public access for subnet(subnet-->actions-->edit subnet setting-->auto assign public ip)
<img width="1895" height="476" alt="image" src="https://github.com/user-attachments/assets/0284cfb2-a472-46a0-9efb-2f801fd444c5" />
<img width="1240" height="560" alt="image" src="https://github.com/user-attachments/assets/e443c8a0-2fba-454e-9770-556920c23f25" />
<img width="1622" height="577" alt="image" src="https://github.com/user-attachments/assets/3414a058-7acb-4921-b5f4-fd88e17be75b" />
<img width="1352" height="456" alt="image" src="https://github.com/user-attachments/assets/7ee00f49-5ce1-41a2-accb-1869fe770a0c" />
<img width="901" height="300" alt="image" src="https://github.com/user-attachments/assets/a97ce1d2-a93c-4787-b288-672d5c4896b4" />
<img width="1432" height="242" alt="image" src="https://github.com/user-attachments/assets/5ccf90e2-9bb7-47fb-8001-f534c198124a" />


# create internet gateway
- name
- attach vpc
<img width="1935" height="565" alt="image" src="https://github.com/user-attachments/assets/7359a20a-006f-4dd8-9ecc-4e13d1e59999" />
<img width="1917" height="791" alt="image" src="https://github.com/user-attachments/assets/3c51cdb3-0576-4685-b6fb-0f529728f070" />

# create nat gateway 
<img width="1917" height="791" alt="image" src="https://github.com/user-attachments/assets/8de67d75-4edd-498d-93d8-f3bbc6e75798" />
<img width="1851" height="702" alt="image" src="https://github.com/user-attachments/assets/b92eff56-fda6-458d-9526-937a82b399ec" />

# create route table for public subnet
- select vpc 
- name
- subnet association(add subnet)
- route(add igwor nat)
<img width="1902" height="638" alt="image" src="https://github.com/user-attachments/assets/7b35891d-c90b-4491-ac02-fb1e0e4ade12" />
<img width="1897" height="666" alt="image" src="https://github.com/user-attachments/assets/9c9ccd75-a6e5-483e-8c28-e5f3b9c5df9c" />
<img width="1907" height="492" alt="image" src="https://github.com/user-attachments/assets/11f61066-fba4-4480-b7b2-6e6415c07b0e" />
---
# create route table for private subnet
- select vpc 
- name
- subnet association(add subnet)
- route(add igwor nat)
<img width="1916" height="582" alt="image" src="https://github.com/user-attachments/assets/b937f37d-a7ae-4c5b-aeaf-9892523876cc" />
<img width="1916" height="687" alt="image" src="https://github.com/user-attachments/assets/c2fad372-bea3-4aad-84f3-d75a9704cc27" />
<img width="1918" height="580" alt="image" src="https://github.com/user-attachments/assets/5b928be8-405e-4927-bd94-0a2a13a0ac5d" />


# vpc resource map
<img width="1855" height="672" alt="image" src="https://github.com/user-attachments/assets/afecd120-4fe3-4e04-8502-1f0f30d45711" />
---
# JUMP SERVER/BASTION HOST
- unable to connect private vm bcz it is in private subnet and has no public ip
<img width="1896" height="708" alt="image" src="https://github.com/user-attachments/assets/fefe3565-898b-4d32-bd72-1147cf8f7120" />
<img width="1915" height="467" alt="image" src="https://github.com/user-attachments/assets/f5bf9c89-6816-4dee-9725-ebc5f1b19451" />

- in order to access private vm from public instance we need a privte vm's key pair 
<img width="1416" height="227" alt="image" src="https://github.com/user-attachments/assets/8553b7c5-f2f7-4bef-bdd6-87ad7dabaf07" />
<img width="1105" height="492" alt="image" src="https://github.com/user-attachments/assets/ea60df92-a6f5-4db0-87e6-f3e330dd5642" />
<img width="1885" height="482" alt="image" src="https://github.com/user-attachments/assets/c6b84e30-a9b7-48d9-9f0b-4d2fcaa067b9" />
