# lex-pattern-scanner-using-c

# Description

This repository contains examples of `lex` patterns and a demonstration of creating a custom scanner using `lex`/`flex`. Below is an explanation of the patterns, configuration, and implementation details.

---

## Lex Patterns

Here are some examples of lex patterns and their matching behavior:

| **Pattern**   | **Description**                                                                 |
|---------------|---------------------------------------------------------------------------------|
| `abc`         | Match the string `"abc"`.                                                      |
| `[a-zA-Z]`    | Match any lower or uppercase letter.                                           |
| `dog.*cat`    | Match any string starting with `dog` and ending with `cat`.                   |
| `(ab)+`       | Match one or more occurrences of `"ab"` concatenated.                         |
| `[^a-z]+`     | Match any string of one or more characters that do not include lowercase `a-z`.|

---
---

## Custom Scanner Header File

The custom header file (`Lab2_sect_my_scanner.h`) defines the token types that the scanner will recognize:


#define TYPE 1
#define NAME 2
#define TABLE_PREFIX 3
#define PORT 4
#define COLON 5
#define IDENTIFIER 6
#define INTEGER 7

---
## Database Configuration File

The configuration file (`Lab2_sect_config.in`) is used to define database parameters for the scanner. Below is the content of the file:
---

# Compilation and Execution

Follow these steps to compile and execute the scanner:

#### Step 1: Generate the scanner

+  Run the lex file to generate the scanner:

+ lex Lab2_sect_my_scanner.l

#### Step 2: Compile the scanner

+ Compile the generated scanner file (lex.yy.c) and your C file:

+ gcc lex.yy.c Lab2_sect_my_scanner.c -o myscanner

#### Step 3: Execute the scanner

+ Run the compiled program:

+ ./myscanner < Lab2_sect_config.in


---

## Output Example

When you run the program, you will see token types and their corresponding text from the input file. For example:
```bash
Token: 1, Text: db_type
Token: 5, Text: :
Token: 6, Text: mysql
...


---
