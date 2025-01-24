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

## Database Configuration File

The configuration file (`Lab2_sect_config.in`) is used to define database parameters for the scanner. Below is the content of the file:
