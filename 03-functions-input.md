# 03-functions-input.md

# Bash Functions & User Input ⚙️

## What are Functions?

Functions allow Bash scripts to reuse code.

Benefits:

* cleaner scripts
* reusable logic
* easier maintenance
* better organization

---

# Basic Function Syntax

```bash id="1fjlwm"
function_name() {
    commands
}
```

---

# Simple Function Example

```bash id="2fjlwm"
hello() {
    echo "Hello World"
}

hello
```

---

# Function with Parameters

Functions can accept arguments.

## Example

```bash id="3fjlwm"
greet() {
    echo "Hello $1"
}

greet Abubakar
```

Output:

```text id="4fjlwm"
Hello Abubakar
```

---

# Multiple Parameters

```bash id="5fjlwm"
userinfo() {
    echo "Name: $1"
    echo "Age: $2"
}

userinfo Abu 20
```

---

# Return Values

Bash functions use exit codes.

## Example

```bash id="6fjlwm"
check() {
    return 0
}

check

echo $?
```

---

# Variable Scope

Variables inside functions can affect the entire script.

Use `local` for function-only variables.

## Example

```bash id="7fjlwm"
test_function() {
    local name="Abu"
    echo $name
}
```

---

# User Input

Use `read` to accept input from users.

## Example

```bash id="8fjlwm"
read username

echo $username
```

---

# Prompting User Input

```bash id="9fjlwm"
echo "Enter your name:"
read name

echo "Hello $name"
```

---

# Reading Multiple Inputs

```bash id="10fjlwm"
read firstname lastname

echo $firstname
echo $lastname
```

---

# Silent Input

Useful for passwords.

## Example

```bash id="11fjlwm"
read -s password
```

`-s` hides terminal input.

---

# Input Validation

Scripts should validate user input.

## Example

```bash id="12fjlwm"
read age

if [ $age -ge 18 ]
then
    echo "Access granted"
else
    echo "Access denied"
fi
```

---

# Command-Line Arguments

Scripts can accept arguments directly.

## Example Script

```bash id="13fjlwm"
#!/bin/bash

echo $1
echo $2
```

Run script:

```bash id="14fjlwm"
./script.sh hello world
```

Output:

```text id="15fjlwm"
hello
world
```

---

# Important Special Variables

| Variable | Meaning             |
| -------- | ------------------- |
| `$0`     | script name         |
| `$1-$9`  | arguments           |
| `$#`     | number of arguments |
| `$@`     | all arguments       |
| `$?`     | last exit code      |

---

# Using Functions with Input

## Example

```bash id="16fjlwm"
greet() {
    echo "Hello $1"
}

read name

greet $name
```

---

# Menus with Case Statements

```bash id="17fjlwm"
echo "1. Start"
echo "2. Stop"

read option

case $option in
    1)
        echo "Starting..."
        ;;
    2)
        echo "Stopping..."
        ;;
    *)
        echo "Invalid option"
        ;;
esac
```

---

# Error Handling

Check if commands succeed.

## Example

```bash id="18fjlwm"
mkdir test

if [ $? -eq 0 ]
then
    echo "Directory created"
else
    echo "Error creating directory"
fi
```

---

# Functions for Automation

Functions help automate repetitive tasks.

Example uses:

* backups
* updates
* monitoring
* deployments
* user management

---

# Useful Input Commands

| Command  | Purpose              |
| -------- | -------------------- |
| `read`   | user input           |
| `echo`   | display text         |
| `case`   | multiple choices     |
| `return` | function exit status |

---

# Key Concepts Learned

### Functions

Reusable blocks of Bash code.

### Parameters

Pass values into functions and scripts.

### User Input

Allow scripts to interact with users.

### Validation

Check input before processing.

### Exit Codes

Determine command success or failure.

### Automation

Functions improve reusable Linux scripting.
