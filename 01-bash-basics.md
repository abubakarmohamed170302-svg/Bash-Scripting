# Bash Basics 🖥️

## What is Bash?

Bash stands for:

> Bourne Again Shell

Bash is:

* a shell
* a scripting language
* the default shell on many Linux systems

It allows users to:

* run commands
* automate tasks
* create scripts
* manage Linux systems

---

## Why Bash is Important

Bash is heavily used in:

* Linux administration
* DevOps
* cloud engineering
* automation
* server management

Many DevOps tasks rely on Bash scripting.

---

## Running Bash Commands

Example:

```bash id="pwjlwm"
echo "Hello World"
```

Output:

```text id="vcjlwm"
Hello World
```

---

## Creating a Bash Script

Create file:

```bash id="jlwm01"
touch script.sh
```

Open with:

```bash id="jlwm02"
vim script.sh
```

---

## The Shebang

Most Bash scripts begin with:

```bash id="jlwm03"
#!/bin/bash
```

This tells Linux:

* which interpreter to use
* how to execute the script

---

## Simple Bash Script

Example:

```bash id="jlwm04"
#!/bin/bash

echo "Hello from Bash"
```

---

## Making Scripts Executable

Give execute permissions:

```bash id="jlwm05"
chmod +x script.sh
```

Run script:

```bash id="jlwm06"
./script.sh
```

---

## Variables

Variables store data.

### Example

```bash id="jlwm07"
name="Abubakar"

echo $name
```

Output:

```text id="jlwm08"
Abubakar
```

---

## Variable Rules

### Correct

```bash id="jlwm09"
username="abu"
```

### Incorrect

```bash id="jlwm10"
user name="abu"
```

Spaces are not allowed in variable names.

---

## Environment Variables

Linux includes built-in variables.

### Example

```bash id="jlwm11"
echo $HOME
```

Shows:

* current home directory

---

### Common Environment Variables

| Variable | Purpose              |
| -------- | -------------------- |
| `$HOME`  | home directory       |
| `$USER`  | current user         |
| `$PATH`  | command search paths |
| `$SHELL` | current shell        |

---

## Comments in Bash

Comments are ignored by Bash.

### Example

```bash id="jlwm12"
# this is a comment
```

Used for:

* explanations
* notes
* readability

---

## User Input

Use `read` to accept input.

### Example

```bash id="jlwm13"
read name

echo $name
```

---

## Prompting User Input

Example:

```bash id="’wini14"
echo "Enter your name:"
read name

echo "Hello $name"
```

---

## Command Substitution

Stores command output inside variables.

### Example

```bash id="’wini15"
current_user=$(whoami)

echo $current_user
```

---

## Arithmetic Operations

Use double brackets:

```bash id="’wini16"
num1=5
num2=3

echo $((num1 + num2))
```

---

## Exit Codes

Linux commands return exit codes.

| Code     | Meaning |
| -------- | ------- |
| 0        | success |
| non-zero | error   |

Check exit code:

```bash id="’wini17"
echo $?
```

---

## Script Arguments

Scripts can accept arguments.

### Example Script

```bash id="’wini18"
#!/bin/bash

echo $1
```

Run:

```bash id="’wini19"
./script.sh hello
```

Output:

```text id="’wini20"
hello
```

---

## Useful Bash Commands

| Command  | Purpose            |
| -------- | ------------------ |
| `echo`   | print text         |
| `read`   | user input         |
| `chmod`  | change permissions |
| `pwd`    | current directory  |
| `whoami` | current user       |
| `clear`  | clear terminal     |

---

## Debugging Bash Scripts

Run script in debug mode:

```bash id="’wini21"
bash -x script.sh
```

Helpful for:

* finding errors
* troubleshooting scripts
* understanding execution flow

---

## Key Concepts Learned

### Bash

Linux shell and scripting language.

### Shebang

Defines script interpreter.

### Variables

Store reusable values.

### Environment Variables

Built-in Linux variables.

### Script Permissions

Allow execution of scripts.

### User Input

Interact with users dynamically.
