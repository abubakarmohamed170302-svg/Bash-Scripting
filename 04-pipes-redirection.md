# Bash Pipes & Redirection 🔀

## What are Pipes?

Pipes allow Bash commands to work together.

Pipe symbol:

```bash id="1pjlwm"
|
```

A pipe sends output from one command into another command.

---

# Basic Pipe Example

```bash id="2pjlwm"
ls | grep ".txt"
```

### What happens?

1. `ls` lists files
2. output goes into `grep`
3. `grep` filters `.txt` files

---

# Why Pipes are Powerful

Pipes help:

* automate workflows
* filter information
* chain commands together
* process data efficiently

Pipes are heavily used in:

* Linux administration
* DevOps
* troubleshooting
* automation

---

# Standard Streams

Linux has 3 streams.

| Stream | Purpose       |
| ------ | ------------- |
| stdin  | input         |
| stdout | normal output |
| stderr | error output  |

---

# stdin

`stdin` means:

> standard input

Input sent into a command.

Example:

```bash id="3pjlwm"
cat
```

Typing text sends input into `cat`.

---

# stdout

`stdout` means:

> standard output

Normal command results.

Example:

```bash id="4pjlwm"
echo "hello"
```

---

# stderr

`stderr` means:

> standard error

Error messages are separated from normal output.

Example:

```bash id="5pjlwm"
ls fakefolder
```

Produces an error through `stderr`.

---

# Redirection

Redirection changes where output goes.

---

# Redirect Output to File

```bash id="6pjlwm"
echo "hello" > file.txt
```

This:

* creates file
* overwrites contents

---

# Append Output to File

```bash id="7pjlwm"
echo "world" >> file.txt
```

This:

* appends text
* keeps existing contents

---

# Redirect Errors

```bash id="8pjlwm"
ls fakefolder 2> errors.txt
```

Stores errors inside:

```text id="9pjlwm"
errors.txt
```

---

# Redirect stdout and stderr Together

```bash id="10pjlwm"
command > output.txt 2>&1
```

This stores:

* normal output
* errors

inside the same file.

---

# Using tee

`tee`:

* displays output
* saves output to file

### Example

```bash id="11pjlwm"
echo "hello" | tee file.txt
```

---

# Chaining Multiple Commands

Example:

```bash id="12pjlwm"
cat file.txt | grep hello | sort
```

This:

1. reads file
2. filters lines
3. sorts output

---

# Useful Pipe Commands

| Command | Purpose           |
| ------- | ----------------- |
| `grep`  | search text       |
| `sort`  | sort lines        |
| `uniq`  | remove duplicates |
| `wc`    | count lines/words |
| `head`  | show beginning    |
| `tail`  | show end          |

---

# Counting Lines

```bash id="13pjlwm"
cat file.txt | wc -l
```

Counts lines in file.

---

# Sorting Data

```bash id="14pjlwm"
sort names.txt
```

---

# Removing Duplicates

```bash id="15pjlwm"
sort names.txt | uniq
```

---

# head and tail

### head

```bash id="16pjlwm"
head file.txt
```

Shows first lines.

---

### tail

```bash id="17pjlwm"
tail file.txt
```

Shows last lines.

---

# tail -f

Monitors files live.

Example:

```bash id="18pjlwm"
tail -f /var/log/syslog
```

Useful for:

* logs
* debugging
* monitoring servers

---

# Combining Pipes and grep

```bash id="19pjlwm"
ps aux | grep nginx
```

Used to:

* search running processes
* filter services

---

# Command Chaining

## AND Operator

```bash id="20pjlwm"
mkdir test && cd test
```

Second command only runs if first succeeds.

---

## OR Operator

```bash id="21pjlwm"
command1 || command2
```

Second command runs if first fails.

---

# Useful Redirection Examples

### Save Process List

```bash id="22pjlwm"
ps aux > processes.txt
```

---

### Save Networking Ports

```bash id="23pjlwm"
ss -tulnp > ports.txt
```

---

# Key Concepts Learned

### Pipes

Pass output between commands.

### Redirection

Control where output is stored.

### stdin/stdout/stderr

Linux input and output streams.

### tee

Display and save output simultaneously.

### Command Chaining

Run multiple commands together.

### Automation

Pipes improve Linux scripting workflows.
