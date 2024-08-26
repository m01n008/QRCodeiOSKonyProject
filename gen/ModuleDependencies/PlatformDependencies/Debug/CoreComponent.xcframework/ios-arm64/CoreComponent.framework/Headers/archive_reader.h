//
//  archive_reader.h
//  VM
//
//  Created by Amba on 31/05/14.
//
//

#import "Foundation/Foundation.h"

#ifndef VM_archive_reader_h
#define VM_archive_reader_h

// callback status codes for open and close callbacks
#define	ARCHIVE_CALLBACK_STATUS_EOF	  1	/* Found end of archive. */
#define	ARCHIVE_CALLBACK_STATUS_OK	  0	/* Operation was successful. */
#define	ARCHIVE_CALLBACK_STATUS_RETRY	(-10)	/* Retry might succeed. */
#define	ARCHIVE_CALLBACK_STATUS_WARN	(-20)	/* Partial success. */
/* For example, if write_header "fails", then you can't push data. */
#define	ARCHIVE_CALLBACK_STATUS_FAILED	(-25)	/* Current operation cannot complete. */
/* But if write_header is "fatal," then this archive is dead and useless. */
#define	ARCHIVE_CALLBACK_STATUS_FATAL	(-30)	/* No more operations are possible. */

typedef int (^openCallback)(void *);
typedef int (^closeCallback)(void *);
typedef size_t (^readCallback)(void *,const void **);
typedef void (^unarchivedCallback)(const char *file_name, const void *data, size_t length);

bool unarchive(void *client_data_context, \
               const char *name, \
               openCallback open_callback, \
               readCallback read_callback, \
               closeCallback close_callback, \
               unarchivedCallback unarchived_file_callback);

#endif
