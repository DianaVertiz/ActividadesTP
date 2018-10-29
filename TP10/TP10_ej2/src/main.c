#include <stdint.h>
#include <stdlib.h>
#include  <unistd.h>
#include "sysUtils.h"
#include "chip.h"
#include <malloc.h>
#include  <sys/stat.h>
#include  <errno.h>
#include  <ff.h>
#include  <ffconf.h>

//char *__env [1] = { 0 };
//char **  environ = __env;

struct  tms {
	clock_t  tms_utime; 	/* user  time    */
	clock_t  tms_stime; 	/* system  time  */
	clock_t  tms_cutime; 	/* user  time  of  children  */
	clock_t  tms_cstime; 	/* system  time  of  children */
};

struct  timezone
{
	int  tz_minuteswest;
	/*  minutes  west  of  Greenwich  */
	int  tz_dsttime;
	/*  type  of  DST  correction  */
};

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

int  wait(int *status)
{
	errno = ECHILD;
	return  -1;
}

int  close(int  file)
{
	return  -1;
}

int  _fstat(int file , struct  stat *st)
{
	st->st_mode = S_IFCHR;
	return  0;
}

int  _isatty(int  file)
{
	return  1;
}

int _lseek(int file , int  offset , int  whence)
{
	return  0;
};

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

int _stat(char * file , struct  stat *st)
{
	st->st_mode = S_IFCHR;
	return  0;
}

int  _link(char *old , char *new)
{
	errno = EMLINK;
	return  -1;
}

int  open(const  char *name , int flags , int  mode)
{
	return  -1;
}

int  _close(int  file)
{
	return  -1;
}

int  _times(struct  tms *buf)
{
	return  -1;
}

int  _gettimeofday(struct  timeval *tv , struct  timezone *tz)
{
	return  -1;
}


int main ( void )
{
	systemInit ();
	FIL fil ;
	char line [100];
	DIR *dp;
	FATFS FatFs ;
	FIL Fil ;
	FILINFO fno ;
	char fSize [20];
	if ( FR_OK != f_mount (&FatFs , "", 1))
		error ("Error montando driver \r\n");
	f_opendir (&dp , "/" );
	while (( f_readdir (&dp , &fno) == FR_OK )	&& ( fno.fname [0]))
	{
		print ("/");
		print (fno.fname );
		if(fno.fattrib &AM_DIR )
		{
			print ("\t\t<DIR >");
		}
		else
		{
			uint10ToStr ( fno.fsize , fSize );
			print ("\t\t");
			print ( fSize );
		}
		print ("\r\n");
	}
	f_closedir (&dp );
	print ("Lectura desde el archivo : \r\n");
	f_open (&fil , "miArchivo.txt ", FA_READ );
	while ( f_gets (line , sizeof ( line ), &fil ))
		print ( line );
	f_close (&fil );
	while (1);
	return 0;
}
