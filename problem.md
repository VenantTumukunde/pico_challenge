# encoding

- Namespace: picoctf/examples
- Type: static-make
- Category: General Skills
- Points: 100
- Templatable: no

## Description

Test your encoding/decoding skills

## Details
Download the flag {{https://github.com/VenantTumukunde/pico_challenge/blob/main/flag.txt, "here")}}.

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

Apply ascii code in encoding / decoding

## Tags

- example

## Attributes

- author: Venant
- organization: Cylab
- event: picoCTF Problem Developer Training
