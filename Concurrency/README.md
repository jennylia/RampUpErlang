##Notes on concurrency

-Based on actor model
-Concurrency refers to the idea of having many actors running independently, but not necessarily all at the same time
- Parallelism is hacing actors running exactly at the same time

###Scalability
- process, small, start and die quickly, switch fast light weight
- avoid process pools (a fixed amount of processes you plit the work in between)
- bypass hardware's limitations
- reliability - cleanest way is forbid process from sharing memory
- shared memory - inconsistent state after crash... should communicate by sending messages where all the data is copied (slower but safe)

###Fault-tolerance
-Always failure, design fo filure
-Make crash the same way as a clean shutdown
	- avoid locks
	- shared nothing and single assignment
-Have your program running on more than one computer at once
-no communication channel outside message passing
-asynchronous message passisng
- messags ae stored in a mailbox

###Key notes
- Your parallel program only goes as fast as its slowest sequential part
- Eralang VM distribute the load accross cores and giving every process its share of time

###Process
- a process is just a function 
