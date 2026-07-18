# Bash Scripting

This repository documents my Bash scripting learning and practical automation exercises from the CoderCo DevOps Academy.

The notes cover Bash fundamentals, variables, conditionals, loops, functions, user input, pipes and redirection. The repository also contains practical Bash Battle Arena challenges.

---

## Repository Contents

### 1. Bash Basics

Introduction to Bash scripting, including:

- What Bash is
- Shell scripts
- Shebangs
- Running scripts
- Variables
- Environment variables
- Script arguments
- User input
- Basic arithmetic

[View Bash Basics](./01-bash-basics.md)

---

### 2. Conditionals and Loops

Using Bash to make decisions and repeat actions, including:

- `if` statements
- `elif` and `else`
- Comparison operators
- File tests
- `case` statements
- `for` loops
- `while` loops
- Loop control
- Automation logic

[View Conditionals and Loops](./02-conditionals-loops.md)

---

### 3. Functions and User Input

Creating reusable and interactive scripts, including:

- Defining functions
- Calling functions
- Function parameters
- Return codes
- Reading user input
- Positional parameters
- Script arguments
- Reusable automation

[View Functions and User Input](./03-functions-input.md)

---

### 4. Pipes and Redirection

Connecting commands and controlling their input and output, including:

- Standard input
- Standard output
- Standard error
- Pipes
- Output redirection
- Input redirection
- Appending to files
- Command chaining
- Filtering command output

[View Pipes and Redirection](./04-pipes-redirection.md)

---

### 5. Bash Battle Arena

Practical scripting exercises covering:

- Variables
- User input
- Conditionals
- Loops
- Functions
- File handling
- Process management
- Automation
- Linux administration
- Problem-solving

[View Bash Battle Arena](./bash-battle-arena.md)

---

## Learning Workflow

```text
Understand the requirement
          |
          v
Break it into smaller steps
          |
          v
Write the Bash script
          |
          v
Run and test it
          |
          v
Investigate errors
          |
          v
Improve and document it
```

---

## Core Bash Skills

| Category | Skills |
|---|---|
| Fundamentals | Shebangs, permissions and script execution |
| Variables | Shell variables, environment variables and parameters |
| Logic | Conditionals, comparisons and `case` statements |
| Repetition | `for` loops and `while` loops |
| Functions | Reusable blocks of scripting logic |
| Input and output | User input, streams, pipes and redirection |
| File handling | Creating, reading and checking files |
| Automation | Combining Linux commands into repeatable workflows |
| Debugging | Exit codes, command output and systematic testing |

---

## Basic Script Example

```bash
#!/usr/bin/env bash

name="${1:-User}"

greet_user() {
    echo "Hello, $1!"
}

greet_user "$name"
```

Run the script with:

```bash
chmod +x greeting.sh
./greeting.sh Abubakar
```

Expected output:

```text
Hello, Abubakar!
```

---

## Practical Exercises

The Bash Battle Arena exercises helped me practise scripting through practical challenges.

These exercises required me to:

- Accept and validate user input
- Make decisions with conditionals
- Repeat actions with loops
- Organise code using functions
- Work with files and directories
- Monitor processes
- Combine Linux commands
- Automate repetitive tasks
- Troubleshoot script errors

---

## Why Bash Matters in DevOps

Bash is commonly used in DevOps for:

- Server administration
- Deployment scripts
- CI/CD pipelines
- Environment setup
- File and log processing
- Scheduled tasks
- System checks
- Cloud automation
- Container entrypoint scripts
- Troubleshooting

Bash makes it possible to convert repeated terminal commands into consistent and reusable scripts.

---

## Skills Developed

- Writing executable Bash scripts
- Working with variables and arguments
- Reading user input
- Creating conditions and loops
- Writing reusable functions
- Using pipes and redirection
- Processing command output
- Working with files and directories
- Understanding exit codes
- Automating Linux tasks
- Testing and debugging scripts
- Documenting scripting solutions

---

## Author

**Abubakar Mohamed**

Aspiring DevOps Engineer currently completing the CoderCo DevOps Academy.

[Connect with me on LinkedIn](https://www.linkedin.com/in/abubakar-mohamed-3047a5211/)
