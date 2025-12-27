# pipex
42 cursus — pipex project (Unix pipes, processes, execve)

Program name -- pipex
Turn in files -- Makefile, *.h, *.c
Makefile -- NAME, all, clean, fclean, re
Arguments -- file1 cmd1 cmd2 file2

⸻

Allowed Functions

The following system calls and functions are allowed for this project and are used to manage files, processes, pipes, memory, and error handling.

⸻

File descriptors and I/O
	•	open
Opens a file and returns a file descriptor.
Used to open infile and outfile.
	•	close
Closes a file descriptor.
Essential to avoid file descriptor leaks and pipe deadlocks.
	•	read
Reads data from a file descriptor.
Mainly used for here_doc (bonus), not required for mandatory execution.
	•	write
Writes data to a file descriptor.
Used to print error messages to stderr.

⸻

Memory management
	•	malloc
Allocates memory dynamically.
Used for command parsing, PATH handling, and string manipulation.
	•	free
Frees dynamically allocated memory.
Prevents memory leaks.

⸻

Error handling
	•	perror
Prints an error message based on the current errno.
Useful for system call failures.
	•	strerror
Returns a string describing an error code.
Used for custom error messages.

⸻

Command and access checking
	•	access
Checks file existence and permissions.
Used to verify executable commands in the PATH.

⸻

File descriptor duplication
	•	dup
Duplicates a file descriptor.
Sometimes used to temporarily save standard input/output.
	•	dup2
Redirects one file descriptor to another.
Core function for input/output redirection in pipes.

⸻

Process execution
	•	execve
Replaces the current process with a new program.
Used to execute commands.
	•	exit
Terminates the current process with a status code.

⸻

Process control
	•	fork
Creates a new child process.
Each command in pipex runs in its own process.
	•	pipe
Creates a unidirectional communication channel between processes.
Used to connect the output of one command to the input of another.
	•	wait / waitpid
Waits for child processes to terminate.
Prevents zombie processes and ensures proper synchronization.

⸻

File removal (bonus)
	•	unlink
Deletes a file from the filesystem.
Commonly used for temporary files in here_doc.

⸻

ft_printf
	•	ft_printf
Custom formatted output function from Libft.
May be used for debugging purposes, but error messages are typically written to stderr.

⸻



Description -- This project focuses on handling pipes.

https://www.youtube.com/watch?v=QD9YKSg3wCc&list=PLK4FY1IoDcHG-jUt93Cl7n7XLQDZ0q7Tv&index=1 - The fork call visualized
https://www.youtube.com/watch?v=94URLRsjqMQ&list=PLK4FY1IoDcHG-jUt93Cl7n7XLQDZ0q7Tv&index=2 - Calling fork multiple times
