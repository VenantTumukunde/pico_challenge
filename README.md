# Encoding Problem Creation Walkthrough

This guide will lead you through the steps required to set up a functional encoding problem on a cmgr challenge server.

An Encoding problem is one of the easiest problems in any CTF that is given as an encoded message that needs to be decoded to get the plain message.



## Pre-requisites:

1. You have `cmgr`.

    - Refer to the [setup section in the index](/README.md#setup)
      if this is not the case for you.



## Overview

This would be one of the easier problems in the CTF, and it would serve as proof that you 
could decode a message encoded using one of the available encoding schemes.

This is not a hard encoding as you may think, instead it is one of the general challenges in CTF.

The following walkthough has 3 parts:

1. File listing

2. Deployment

3. Testing



## Walkthrough

### File Listing

Using cmgr, the Sanity Download problem is just 2 files:

  1.  [problem.md](/example-problems/encoding/problem.md) specifies
      the name of the problem, the description, and other metadata about the
      problem. Here is the [specification](https://github.com/VenantTumukunde/pico_challenge/blob/main/problem.md)
      for this file in general.

  2.  [Makefile](/example-problems/encoding/Makefile) specifies the
      creation of the files associated with the problem,including the flag.



### Deployment

We are going to take this problem from just 2 files to actual deployment.

1. Clone this repo.
2. `$ cd start-problem-dev/example-problems`
3. Update cmgr with the encoding problem:
    - `$ cmgr update encoding/`
4. Ensure problem appears in cmgr list:
    - `$ cmgr list`
    - Expected output: `syreal/examples/encoding-download`
5. Deploy problem in playtest mode:
    - `$ cmgr playtest syreal/examples/encoding-download`
    - NOTE: this command might take a few minutes.
    - Expected output is something like: `challenge information available at: http://localhost:4242/`
6. Ensure you get the problem details by browsing to the listed host and port. It should look like this:
    - ![Successful deploy](/img/encoding-download-playtest.png)



### Testing

Testing of problems involves at least 3 things:
  * Testing that an incorrect flag is incorrect
  * Testing that a correct flag is correct
  * Testing that the correct flag can be found by using the materials given for
    the problem.

1. To test an incorrect flag, try submitting `blabla` as a flag to the problem.
    - Expected output: `That is not the correct flag`
    
2. To test the correct flag and that the correct flag can be found using the 
   given materials, download the flag from the problem and submit it
    - Expected output: `Correct`



## Conclusion

With this walkthrough, we deployed a problem from the two most required files
in a cmgr problem, creating an encoding problem that just involves downloading the
flag.

We also demonstrated some basic testing practices by proving that an incorrect
flag is incorrect, a correct flag is correct, and that the player can get the
correct flag from the materials given.

This was the first tutorial in a series designed to familiarize challenge
authors with the new cmgr format for picoCTF problems. 

[Return to the index](/README.md#walkthroughs)

