# Bash Conditionals & Loops 🔁

## What are Conditionals?

Conditionals allow Bash scripts to make decisions.

Example:

* if a file exists
* if a user entered correct input
* if a process is running

---

# If Statements

Basic syntax:

```bash id="1mjlwm"
if [ condition ]
then
    command
fi
```

---

## Simple If Example

```bash id="2mjlwm"
age=18

if [ $age -ge 18 ]
then
    echo "Adult"
fi
```

---

## Comparison Operators

| Operator | Meaning          |
| -------- | ---------------- |
| `-eq`    | equal            |
| `-ne`    | not equal        |
| `-gt`    | greater than     |
| `-lt`    | less than        |
| `-ge`    | greater or equal |
| `-le`    | less or equal    |

---

## If Else Statement

```bash id="3mjlwm"
age=15

if [ $age -ge 18 ]
then
    echo "Adult"
else
    echo "Minor"
fi
```

---

## Else If (elif)

```bash id="4mjlwm"
score=75

if [ $score -ge 90 ]
then
    echo "Excellent"
elif [ $score -ge 70 ]
then
    echo "Good"
else
    echo "Needs Improvement"
fi
```

---

# String Comparisons

```bash id="5mjlwm"
name="abu"

if [ "$name" = "abu" ]
then
    echo "Correct User"
fi
```

---

# Checking Files

## File Exists

```bash id="6mjlwm"
if [ -f file.txt ]
then
    echo "File exists"
fi
```

---

## Directory Exists

```bash id="7mjlwm"
if [ -d test ]
then
    echo "Directory exists"
fi
```

---

# Logical Operators

| Operator | Meaning |   |    |
| -------- | ------- | - | -- |
| `&&`     | AND     |   |    |
| `        |         | ` | OR |
| `!`      | NOT     |   |    |

---

## Example

```bash id="8mjlwm"
if [ $age -ge 18 ] && [ $age -lt 30 ]
then
    echo "Young Adult"
fi
```

---

# Case Statements

Used for multiple options.

Example:

```bash id="9mjlwm"
read choice

case $choice in
    1)
        echo "Option 1"
        ;;
    2)
        echo "Option 2"
        ;;
    *)
        echo "Invalid option"
        ;;
esac
```

---

# Loops

Loops repeat commands automatically.

Types:

* for loops
* while loops

---

# For Loops

Used when repeating over a list.

## Example

```bash id="10mjlwm"
for fruit in apple banana orange
do
    echo $fruit
done
```

---

## Number Loop

```bash id="11mjlwm"
for i in {1..5}
do
    echo $i
done
```

---

# While Loops

Runs while condition is true.

## Example

```bash id="12mjlwm"
counter=1

while [ $counter -le 5 ]
do
    echo $counter
    counter=$((counter + 1))
done
```

---

# Infinite Loops

```bash id="13mjlwm"
while true
do
    echo "Running..."
done
```

Stop using:

```bash id="14mjlwm"
Ctrl + C
```

---

# Break Statement

Stops a loop early.

## Example

```bash id="15mjlwm"
for i in {1..10}
do
    if [ $i -eq 5 ]
    then
        break
    fi

    echo $i
done
```

---

# Continue Statement

Skips current loop iteration.

## Example

```bash id="16mjlwm"
for i in {1..5}
do
    if [ $i -eq 3 ]
    then
        continue
    fi

    echo $i
done
```

---

# Nested Loops

Loops inside loops.

## Example

```bash id="17mjlwm"
for i in {1..3}
do
    for j in {1..2}
    do
        echo "$i $j"
    done
done
```

---

# Useful Conditional Checks

| Check | Meaning          |
| ----- | ---------------- |
| `-f`  | file exists      |
| `-d`  | directory exists |
| `-z`  | string empty     |
| `-n`  | string not empty |

---

# User Input with Conditions

```bash id="18mjlwm"
read age

if [ $age -ge 18 ]
then
    echo "Access granted"
else
    echo "Access denied"
fi
```

---

# Key Concepts Learned

### Conditionals

Allow scripts to make decisions.

### Loops

Repeat commands automatically.

### Comparison Operators

Compare numbers and strings.

### Case Statements

Handle multiple conditions cleanly.

### Break & Continue

Control loop execution.

### Automation

Loops and conditions help automate Linux tasks.
