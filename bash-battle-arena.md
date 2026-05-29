# bash-battle-arena.md

# Bash Battle Arena ⚔️

## What is Bash Battle Arena?

Bash Battle Arena is a collection of Bash scripting exercises and automation challenges designed to improve:

* Linux scripting
* problem-solving
* automation skills
* command-line confidence

The goal is to practice real Bash scripting concepts in practical scenarios.

---

# Challenge 1 — User Greeting Script

## Goal

Create a script that:

* asks for a username
* greets the user

---

## Script

```bash id="1bwaswo"
#!/bin/bash

echo "Enter your name:"
read name

echo "Welcome $name"
```

---

## Concepts Practiced

* `echo`
* `read`
* variables
* user interaction

---

# Challenge 2 — Simple Calculator

## Goal

Create a script that:

* accepts numbers
* performs arithmetic

---

## Script

```bash id="2bwaswo"
#!/bin/bash

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Result:"
echo $((num1 + num2))
```

---

## Concepts Practiced

* arithmetic operations
* variables
* user input

---

# Challenge 3 — File Checker

## Goal

Check whether a file exists.

---

## Script

```bash id="3bwaswo"
#!/bin/bash

echo "Enter filename:"
read filename

if [ -f $filename ]
then
    echo "File exists"
else
    echo "File not found"
fi
```

---

## Concepts Practiced

* conditionals
* file checks
* `if` statements

---

# Challenge 4 — Directory Creator

## Goal

Automatically create directories.

---

## Script

```bash id="4bwaswo"
#!/bin/bash

echo "Enter folder name:"
read folder

mkdir $folder

echo "Folder created"
```

---

## Concepts Practiced

* `mkdir`
* variables
* automation

---

# Challenge 5 — Loop Practice

## Goal

Print numbers using loops.

---

## Script

```bash id="5bwaswo"
#!/bin/bash

for i in {1..10}
do
    echo $i
done
```

---

## Concepts Practiced

* loops
* automation
* iteration

---

# Challenge 6 — Password Checker

## Goal

Validate user passwords.

---

## Script

```bash id="6bwaswo"
#!/bin/bash

read -s password

if [ "$password" = "linux123" ]
then
    echo "Access granted"
else
    echo "Access denied"
fi
```

---

## Concepts Practiced

* hidden input
* string comparisons
* conditionals

---

# Challenge 7 — Process Checker

## Goal

Check if a process is running.

---

## Script

```bash id="7bwaswo"
#!/bin/bash

ps aux | grep nginx
```

---

## Concepts Practiced

* pipes
* `grep`
* process investigation

---

# Challenge 8 — System Information Script

## Goal

Display Linux system information.

---

## Script

```bash id="8bwaswo"
#!/bin/bash

echo "Current User:"
whoami

echo "Current Directory:"
pwd

echo "System Uptime:"
uptime
```

---

## Concepts Practiced

* Linux commands
* scripting
* system monitoring

---

# Challenge 9 — Backup Script

## Goal

Create a simple backup script.

---

## Script

```bash id="9bwaswo"
#!/bin/bash

cp important.txt backup.txt

echo "Backup complete"
```

---

## Concepts Practiced

* file management
* automation
* copy operations

---

# Challenge 10 — Log Monitoring

## Goal

Monitor Linux log files.

---

## Script

```bash id="10bwaswo"
#!/bin/bash

tail -f /var/log/syslog
```

---

## Concepts Practiced

* log monitoring
* troubleshooting
* Linux administration

---

# Key Bash Skills Practiced

* variables
* loops
* functions
* user input
* conditionals
* pipes
* process management
* automation
* Linux commands

---

# Why Bash Scripting Matters

Bash scripting is heavily used in:

* DevOps
* cloud engineering
* Linux administration
* automation
* CI/CD pipelines

Learning Bash improves:

* Linux confidence
* automation skills
* troubleshooting ability
* server management knowledge

---

# Final Goal

The purpose of Bash Battle Arena is to:

* build scripting confidence
* practice Linux automation
* improve problem-solving
* prepare for DevOps engineering tasks
