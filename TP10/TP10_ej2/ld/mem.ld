MEMORY
{
  flash (rx) : ORIGIN = 0x1a000000, LENGTH = 0x80000 /* 512K bytes */
  stack (rw) : ORIGIN = 0x10000000, LENGTH = 0x8000  /* 32K bytes */
  heap  (rw) : ORIGIN = 0x10080000, LENGTH = 0xA000  /* 40K bytes  */
}
 
__top_stack = 0x10000000 + 0x8000;
__bot_heap  = 0x10080000;
__top_heap  = 0x10080000 + 0xA000;

