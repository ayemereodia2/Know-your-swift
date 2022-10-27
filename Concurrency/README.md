# Swift Concurrency 
## In swift the main ways of managing Tasks on Threads is through the use of Grand Central Dispatch and Objective C Operation Queue.
** GCD makes use of Dispatch Queues that can either be serial or concurrent. Enabling it to either dispatch Tasks to threads in a FIFO order or run task concurrently.

** Operation queues uses other factors like the execution dependency of task which can be set when creating your Task.

## There is also the cleaner async/await option that was introduced with Swift 5.5
