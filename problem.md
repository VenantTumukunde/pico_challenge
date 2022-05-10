# encoding

- Namespace: picoctf/examples
- Type: static-make
- Category: General Skills
- Points: 100
- Templatable: no

## Description

Test your internet connection!

## Details
Download the flag {{url_for("flag.txt", "here")}}.

## Hints

- fr decode

## Solution Overview

Download `flag.txt` and decrypt it from ascii to text

## Challenge Options

```yaml
cpus: 0.5
memory: 128m
pidslimit: 20
ulimits:
  - nofile=128:128
diskquota: 64m
init: true
```

## Learning Objective

Test and verify your connectivity to our CTF

## Tags

- example

## Attributes

- author: Venant
- organization: Cylab
- event: picoCTF Problem Developer Training
