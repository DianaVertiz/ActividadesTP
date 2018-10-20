#include <stdint.h>
#include <stdlib.h>
#include  <unistd.h>
#include "sysUtils.h"
#include "chip.h"
#include <malloc.h>
#include  <sys/stat.h>
#include  <errno.h>
//char *__env [1] = { 0 };
//char **  environ = __env;

/* ya esta en sysUtils
 * void _exit (int errCode)
{
	exit(errCode);
}

*/
extern  int  errno;
int  _execve(char *name , char **argv , char **env) {
	errno = ENOMEM;
	return  -1;
}
int  _fork(void)
{
	errno = EAGAIN;
	return  -1;
}

/* ya estan  en sysUtils
 * int  _getpid(void)
{
return  1;
}

int  _kill(int pid , int  sig)
{
	errno = EINVAL;
	return  -1;
}*/


int  wait(int *status)
{
	errno = ECHILD;
	return  -1;
}

/*struct  stat
{
	dev_t  st_dev;
	ino_t  st_ino;
	mode_t  st_mode;
	nlink_t  st_nlink;
	uid_t  st_uid;
	gid_t  st_gid;
	dev_t  st_rdev;
	off_t  st_size;
#if  defined(__rtems__)
	struct  timespec  st_atim;
	struct  timespec  st_mtim;
	struct  timespec  st_ctim;
	blksize_t      st_blksize;
	blkcnt_t  st_blocks;
#else
#if  defined(__svr4__) && !defined(__PPC__)
	&& !defined(__sun__)
	time_t  st_atime;
	time_t  st_mtime;
	time_t  st_ctime;
#else
	time_t  st_atime;
	long  st_spare1;
	time_t  st_mtime;
	long  st_spare2;
	time_t  st_ctime;
	long  st_spare3;
	blksize_t  st_blksize;
	blkcnt_t  st_blocks;
	long  st_spare4 [2];
#endif
#endif
};

*/
int  _fstat(int file , struct  stat *st)
{
	st->st_mode = S_IFCHR;
	return  0;
}
int _stat(char * file , struct  stat *st)
{
	st->st_mode = S_IFCHR;
	return  0;
}

int  _isatty(int  file)
{
	return  1;
}
int  _link(char *old , char *new)
{
	errno = EMLINK;
	return  -1;
}
/*
int _unlink(char *name)
{
	errno = ENOENT;
	return  -1;
}*/


typedef struct mallinfo_t {
               int arena;     /* Non-mmapped space allocated (bytes) */
               int ordblks;   /* Number of free chunks */
               int smblks;    /* Number of free fastbin blocks */
               int hblks;     /* Number of mmapped regions */
               int hblkhd;    /* Space allocated in mmapped regions (bytes) */
               int usmblks;   /* Maximum total allocated space (bytes) */
               int fsmblks;   /* Space in freed fastbin blocks (bytes) */
               int uordblks;  /* Total allocated space (bytes) */
               int fordblks;  /* Total free space (bytes) */
               int keepcost;  /* Top-most, releasable space (bytes) */
} mi;

int  open(const  char *name , int flags , int  mode)
{
	return  -1;
}

int _read(int file , char *ptr , int  len)
{
	uint8_t  newLine [2] = { '\r', '\n' };
	int  readed = 0;
	bool  endLine = false;
	if (file ==  STDIN_FILENO )
	{
		while(( readed < len) && (! endLine )){
			Chip_UART_ReadBlocking(LPC_USART2 ,	ptr + readed , 1);
			endLine = (*(ptr+readed) == '\n') || (*( ptr+readed) == '\r');
			if(endLine)
				Chip_UART_SendBlocking(LPC_USART2 ,newLine , 2);
			else
				Chip_UART_SendBlocking(LPC_USART2 ,ptr + readed , 1);
			readed ++;
			}
		len = readed;
	}
	else
		len = 0;
	return  len;
}


int _write(int file , char *ptr , int  len) {

	if((file ==  STDOUT_FILENO) || 	(file ==  STDERR_FILENO ))
		Chip_UART_SendBlocking(LPC_USART2, 	ptr , len);
	else
		len = 0;
	return  len;
}

int  close(int  file)
{
	return  -1;
}

int  _close(int  file)
{
	return  -1;
}
struct  tms {
	clock_t  tms_utime; 	/* user  time    */
	clock_t  tms_stime; 	/* system  time  */
	clock_t  tms_cutime; 	/* user  time  of  children  */
	clock_t  tms_cstime; 	/* system  time  of  children */
};

int  _times(struct  tms *buf)
{
	return  -1;
}

/*struct  timeval
{
	time_t        tv_sec;
	/*  sec. Unix  Epoch */
	//suseconds_t  tv_usec;
	/*  microseconds    */
//};*/
struct  timezone
{
	int  tz_minuteswest;
	/*  minutes  west  of  Greenwich  */
	int  tz_dsttime;
	/*  type  of  DST  correction  */
};
int _lseek(int file , int  offset , int  whence)
{
	return  0;
};

int  _gettimeofday(struct  timeval *tv , struct  timezone *tz)
{
	return  -1;
}



int main(void)
{
	sysInit();
	printf("el valor de pi es %f\r\n", 3.1415961); /*debe llevar fin de carro y nueva línea para que vuelque el buffer*/
	while(1);
	return 0;
}
