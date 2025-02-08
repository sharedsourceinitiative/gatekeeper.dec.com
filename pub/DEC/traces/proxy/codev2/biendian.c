
/*      proxytrace2txt.c

	    take binary input file and produce ASCII space separated fields
        with automatic endian-ness detection and conversion
*/

/*
       Copyright 1996 Digital Equipment Corporation
                        All Rights Reserved

Permission to use, copy, and modify this software and its documentation is
hereby granted only under the following terms and conditions.  Both the
above copyright notice and this permission notice must appear in all copies
of the software, derivative works or modified versions, and any portions
thereof, and both notices must appear in supporting documentation.

Users of this software agree to the terms and conditions set forth herein,
and hereby grant back to Digital a non-exclusive, unrestricted, royalty-
free right and license under any changes, enhancements or extensions 
made to the core functions of the software, including but not limited to 
those affording compatibility with other hardware or software 
environments, but excluding applications which incorporate this software.
Users further agree to use their best efforts to return to Digital any
such changes, enhancements or extensions that they make and inform Digital
of noteworthy uses of this software.  Correspondence should be provided
to Digital at:

                      Director of Licensing
                      Western Research Laboratory
                      Digital Equipment Corporation
                      250 University Avenue
                      Palo Alto, California  94301

This software may not be distributed to third parties.

THE SOFTWARE IS PROVIDED "AS IS" AND DIGITAL EQUIPMENT CORP. DISCLAIMS ALL
WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS.   IN NO EVENT SHALL DIGITAL EQUIPMENT
CORPORATION BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR
PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
SOFTWARE.

 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include "proxytrace2txt_v2.h"
 
#ifdef PC
#include <io.h>
#endif


char *ProtocolStr[] =
{
    "NONE",
    "http",
    "ftp",
    "gopher",
    "wais",
    "cache_object",
    "TOTAL"
    "BAD#"
};

#define MAX_PROTOCOLS (sizeof(ProtocolStr)/sizeof(*ProtocolStr)-1)

char *RequestMethodStr[] =
{
    "NONE",
    "GET",
    "POST",
    "HEAD",
    "CONNECT"
    "BAD#"
};

#define MAX_METHODS (sizeof(RequestMethodStr)/sizeof(*RequestMethodStr)-1)

char *   extension_names[] = /* text names for output */
{
	"NONE",
    "html",
    "gif",
    "cgi",  /* 3 */
	"data",
	"class",
	"map",  /* 6 */
    "jpeg",
    "mpeg",
	"OTHER",
    "BAD#"
};
  
/* MAX_EXTENSIONS was hard coded in proxytrace2txt_v2.h */
#undef  MAX_EXTENSIONS
#define MAX_EXTENSIONS (sizeof(extension_names)/sizeof(*extension_names)-1)


typedef unsigned short u_2bytes;

/* rotates 2 bytes */
unsigned short swap2(u_2bytes In) {
	u_2bytes Out;

	((char*)&(Out))[0] = ((char*)&(In))[1];
	((char*)&(Out))[1] = ((char*)&(In))[0];

	return Out;
}

/* rotates 4 bytes */
u_4bytes rotate4(u_4bytes In) {
	u_4bytes Out;

	((u_2bytes*)&Out)[0] = swap2(((u_2bytes*)&In)[1]);
	((u_2bytes*)&Out)[1] = swap2(((u_2bytes*)&In)[0]);

	return Out;
}

/* detects endian-ness
 * Note:   will not work if sizeof(unsigned long)==1
 */
int is_little_endian(void) {
	static const unsigned long long_number = 1;
	return *(const unsigned char *)&long_number;
}

void ToOtherEndian(TEntry_v2 *e) {

	/* unroll this loop if you want to enumerate u_4bytes members of TEntry_v2 */
	u_4bytes *p;
	for (p = &(e -> event_duration); p <= &(e -> url); p++)
		*p = rotate4(*p);

	e -> status = swap2(e -> status);
	
	if (sizeof(method_t) == 2)
		e -> method = swap2(e -> method);
	else
	if (sizeof(method_t) == 4)
		e -> method = rotate4(e -> method);

	if (sizeof(protocol_t) == 2)
		e -> protocol = swap2(e -> protocol);
	else
	if (sizeof(protocol_t) == 4)
		e -> protocol = rotate4(e -> protocol);
}

/*
 *    main processing routine
 *	goes through entries in event lists
 */

int main (int argc, char* argv[]) {

 int            lines_read=0, bytesread, totalread=0, pipe;
 char			*input_file;
 FILE			*in_file;
 char			line [BUFFER_SIZE]; 
 
 TEntry_v2		entry;
 char			buffer [BUFFER_SIZE];


/*
 *	 parse command line
 *
 */
 if (argc !=  2)  {
	 fprintf(stderr," usage:  proxytrace2txt  inputfile\n");
	 exit(-1);
 }
 input_file = argv [1]; 

 /*
  *		open input file
  *
  */
if (!strncmp (".gz",  input_file+strlen( input_file)-3, 3) )  { 
	  sprintf(line,"gunzip -c %s",  input_file);
	  pipe = 1;

#ifdef PC
	  in_file = _popen ( line, "r");
#else 
	  in_file = popen ( line, "r");
#endif

 }  else {
	  pipe = 0;
	in_file = fopen(  input_file,"r");
 }

 if( in_file ==  NULL  ) {
     perror( "Open failed on input file" );
	 exit (-1);
 }

 fprintf(stderr, "proxytrace2txt: reading file %s record size %d\n",
	 input_file, sizeof (TEntry_v2));
 

 /*
  *		 go through each line of input changing selected token
  *
  */

 fprintf(stdout, "           time   event    server client   ");
 fprintf(stdout, " size last mod status  meth. prot.   server  port   type  flags   path  query  url #\n");
 
 bytesread=fread( buffer, sizeof ( char),BUFFER_SIZE,in_file);
  if ( bytesread!= BUFFER_SIZE )  {      /*   */
	   fprintf(stderr, " PROXYTRACES2TXT -ERROR unable to read header of size %d\n",
		   BUFFER_SIZE);
	    perror ("bytes read");
	    exit (-1);
  }

 bytesread=fread(&entry,sizeof (entry),1,in_file);
 while  ( bytesread !=  0)   {
	 if (  bytesread <0)  {      /*   */
         perror( "PROXYTRACES2TXT: read failed" );
		 exit (-1);
	 }
	 if ( bytesread!=1 )  {      /*   */
		 fprintf(stderr, "proxytrace2txt: ERROR-read fell short %d\n",
			  bytesread);
		  totalread  += sizeof ( TEntry_v2); 
	 }

	 if (!is_little_endian())
		 ToOtherEndian(&entry);

	 /*  traps for bad values  */
     if (entry.type > MAX_EXTENSIONS )
          entry.type = MAX_EXTENSIONS + 1;
     if (entry.method > MAX_METHODS )
          entry.type = MAX_METHODS + 1;
     if (entry.protocol > MAX_PROTOCOLS )
          entry.type = MAX_PROTOCOLS + 1;

	 fprintf(stdout, "%9d%06u %8d %8d %5d %7d %9d %6d %6s %6s %6d %6d %6s %6d %6d %6d %6d\n",
		 entry.time_sec, entry.time_usec, 
		 entry.event_duration, entry.server_duration,
		 entry.client, entry.size,  entry.last_mod, 
		 entry.status,  RequestMethodStr[entry.method], 
                 ProtocolStr[entry.protocol],
		 entry.server, entry.port,extension_names [entry.type],
                 entry.flags,
		 entry.path, entry.query, entry.url);

	 totalread  += bytesread; 
     bytesread=fread(&entry,sizeof (entry),1,in_file);
	 lines_read++;
 }
 fprintf(stderr, "proxytrace2txt: complete- %d  entries %d bytes\n",
	 lines_read, totalread);
 
if ( pipe== 0 )  {      /*  do normal close if not pipe  */
		 fclose ( in_file); 
	 }  else {

#ifdef PC
		   _pclose ( in_file);
#else 
		   pclose (in_file );
#endif
	 }

 return(0);
}
