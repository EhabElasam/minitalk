# Minitalk
## Project Overview

Minitalk is a compact communication application utilizing UNIX signals. This C-based project uses a client-server model where the client sends strings to a server via the server's PID. The server, upon receiving these strings, displays them. The communication is handled through UNIX’s SIGUSR1 and SIGUSR2 signals, showcasing a fundamental use of inter-process communication (IPC).

## Repository Contents
  client.c - Implements the client-side logic to send messages to the server.
  
  server.c - Implements the server-side logic to receive and display messages.
  
  minitalk.h - Header file containing declarations and necessary library imports.
  
  Makefile - Manages compilation and linking of the project files.

### Prerequisites
  GCC compiler
  Linux operating system
    
### Compilation and Execution

  Compile the Project:
  Use the following Makefile command to compile both the client and server applications:
  
    make all

Launch the Server:
Run the server using:

    ./server

Note the server's PID as displayed.

Execute the Client:
To send a string to the server, use:

    ./client <Server_PID> "Your message here"

  Replace <Server_PID> with the actual PID noted from the server's output.

### Usage Examples
Send a Hello World message:

    ./client 12345 "Hello World"

Assuming the server's PID is 12345.

