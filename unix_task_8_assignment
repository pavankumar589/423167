🧠 Core Dump Error – Dereferencing a Null Pointer

🔧 Program Code: dump.c
------------------------
#include <stdio.h>
#include <stdlib.h>

int main() {
    int* ptr = NULL;
    printf("*ptr = %d\n", *ptr);
    return 0;
}

🖥️ Compilation & Execution
--------------------------
$ gcc dump.c
$ ./a.out
Segmentation fault (core dumped)

🧪 Debugging with GDB
----------------------
$ gcc dump.c -o dump -g
$ gdb dump

GDB Session:
-------------
GNU gdb (Ubuntu 9.2-0ubuntu1~20.04.1) 9.2
...
Reading symbols from dump...
(gdb) list main
1  #include <stdio.h>
2  #include <stdlib.h>
3
4  int main() {
5      int* ptr = NULL;
6      printf("*ptr = %d\n", *ptr);
7      return 0;
8  }

Setting Breakpoints:
---------------------
(gdb) break main
Breakpoint 1 at 0x1149: file dump.c, line 4.
(gdb) break 5
Breakpoint 2 at 0x1155: file dump.c, line 5.
(gdb) break 6
Breakpoint 3 at 0x115d: file dump.c, line 6.
(gdb) break 7
Breakpoint 4 at 0x1176: file dump.c, line 7.
(gdb) break 8
Breakpoint 5 at 0x117b: file dump.c, line 8.

Listing Breakpoints:
---------------------
(gdb) info b
Num Type           Disp Enb Address            What
1   breakpoint     keep y   0x0000000000001149 in main at dump.c:4
2   breakpoint     keep y   0x0000000000001155 in main at dump.c:5
3   breakpoint     keep y   0x000000000000115d in main at dump.c:6
4   breakpoint     keep y   0x0000000000001176 in main at dump.c:7
5   breakpoint     keep y   0x000000000000117b in main at dump.c:8

Running the Program:
---------------------
(gdb) run
Starting program: /home/student/Desktop/423125/dump
Breakpoint 1, main () at dump.c:4

Inspecting Pointer Value:
--------------------------
(gdb) print ptr
$1 = (int *) 0x0

(gdb) c
Breakpoint 2, main () at dump.c:5
(gdb) print ptr
$2 = (int *) 0x0
(gdb) print *ptr
Cannot access memory at address 0x0

(gdb) c
Breakpoint 3, main () at dump.c:6
(gdb) print *ptr
Cannot access memory at address 0x0

Backtrace & Frame Inspection:
------------------------------
(gdb) bt
#0  main () at dump.c:6

(gdb) frame 0
#0  main () at dump.c:6
6   printf("*ptr = %d\n", *ptr);

Local Variables Info:
----------------------
(gdb) info locals
ptr = 0x0

