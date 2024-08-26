/*
 *  KonyHeader.h   
 *  VM
 *
 *  Created by Aravind Perumal on 7/10/08.
 *  Copyright 2008 Konylabs. All rights reserved.
 *
 */

/* TODO: Check for licensing got the code snippet from cssmconfig.h */

//Use this file to include common header files


#ifndef _UINT32
typedef uint32_t uint32;
#define _UINT32
#endif
#ifndef _UINT16
typedef uint16_t uint16;
#define _UINT16
#endif
#ifndef _UINT8
typedef uint8_t uint8;
#define _UINT8
#endif

//Kony Net Error@"

#define  KONYNETERROR_UNKNOWNERROR				1000
#define  STR_KONYNETERROR_UNKNOWNERROR			@"Unknown error when making a network connection"

#define  KONYNETERROR_SERVICEUNAVAILABLE		1001
#define  STR_KONYNETERROR_SERVICEUNAVAILABLE	@"Service unavailable. Please try later"

#define  KONYNETERROR_READINGINPUTSTREAM		1002
#define  STR_KONYNETERROR_READINGINPUTSTREAM	@"Error reading the inputstream. Please try later"

#define  KONYNETERROR_PERMISSION				1003
#define  STR_KONYNETERROR_PERMISSION			@"Do not have enough permission to connect"

#define  KONYNETERROR_INVALID_INPUT				1004
#define  STR_KONYNETERROR_INVALID_INPUT			@"Invalid input parameters to the fetchurl API"

#define  KONYNETERROR_INVALID_URL				1005
#define  STR_KONYNETERROR_INVALID_URL			@"Invalid input url"

#define  KONYNETERROR_INVALID_PARAMETER			1006
#define  STR_KONYNETERROR_INVALID_PARAMETER		@"Invalid input variables provided"

#define  KONYNETERROR_INVALID_METHOD			1007
#define  STR_KONYNETERROR_INVALID_METHOD		@"Invalid method provided"

#define  KONYNETERROR_INVALID_XPATH				1009
#define  STR_KONYNETERROR_INVALID_XPATH			@"Invalid xpath parameter type"

#define  KONYNETERROR_INVALID_REPATH			1010
#define	 STR_KONYNETERROR_INVALID_REPATH		@"Invalid repath parameter type"

#define  KONYNETERROR_NETWORKNOTREACHABLE		1011
#define	 STR_KONYNETERROR_NETWORKNOTREACHABLE	@"Device has no wifi or mobile connectivity. Please try the operation after establishing connectivity."

#define  KONYNETERROR_REQUESTFAILED				1012
#define  STR_KONYNETERROR_REQUESTFAILED			@"Request Failed"

#define  KONYNETERROR_MALFORMEDJSONDATA			1013
#define  STR_KONYNETERROR_MALFORMEDJSONDATA		@"Middleware returned invalid JSON string"

#define  KONYNETERROR_REQUEST_TIMEDOUT			1014
#define  STR_KONYNETERROR_REQUEST_TIMEDOUT		@"Request Timed Out"

#define KONYNETERROR_CANNOTFINDHOST				1015
#define STR_KONYNETERROR_CANNOTFINDHOST			@"Cannot find the host"

#define KONYNETERROR_CANNOTCONNECTTOHOST		1016
#define STR_KONYNETERROR_CANNOTCONNECTTOHOST	@"Cannot connect the host"

#define  KONYNETERROR_REQUEST_DATAENCODINGERROR	1017
#define  STR_KONYNETERROR_REQUEST_DATAENCODINGERROR	@"Request Data Encoding Error"

#define KONYNETERROR_REQUEST_ALREADYINPROGRESS  1018
#define STR_KONYNETERROR_REQUEST_ALREADYINPROGRESS @"Request already in progress"

#define KONYNETERROR_WRITING_INTO_STREAM		1019

#define KONYNETERROR_STREAM_TERMINATED_WITH_ERRORS   1020

#define KONYNETERROR_STREAM_TERMINATED_NORMALLY 1021

#define  KONYNETERROR_USERCANCELLED				1022
#define  STR_KONYNETERROR_USER_CANCELLED		@"User Cancelled"

/*

 100 – network call initiated successfully – resultset will not be available and it is nil.
 200 – network is in progress (when you start receiving the 1st byte) - resultset will not be available and it is nil.
 300 – network call cancelled - resultset will not be available and it is nil.
 400 – network call is finished ( gets called in both success and failure scenarios – actual state can be queried using opstatus in resultset
 
 */
typedef enum {
	
	NETSTATUS_CALL_SUCCESS = 0,
	NETSTATUS_CALL_ERROR = 1,
	NETSTATUS_CALL_INIT_SUCCESSFULL = 100,
	NETSTATUS_CALL_IN_PROGRESS = 200,
	NETSTATUS_CALL_CANCELLED = 300,
	NETSTATUS_CALL_FINISHED =400
	
} NETWORK_STATUS;


#define STREAMING_SUCCESS 0

typedef enum {
	
	STREAMING_NO_INPUT_ERROR = 0,
	STREAMING_INVALID_INPUT_PARAMS = 100,
	STREAMING_INTERNAL_ERROR = 101
	
} STREAMING_STATUS;

typedef enum {
	
	DEREGISTER_STREAMING_SUCCESS = 0,
	DEREGISTER_STREAMING_ID_NOT_EXIST = 100,
	DEREGISTER_STREAMING_INTERNAL_ERROR = 101
	
} DEREGISTER_STREAMING_STATUS;

typedef enum {
	
	STREAMING_SETCALLBACK_SUCCESS = 0,
	STREAMING_SETCALLBACK_INVALID_ARGUMENTS = 100,
	STREAMING_SETCALLBACK_ID_DOES_NOT_EXIST = 101

} STREAMING_SETCALLBACK_STATUS;

typedef enum {
	
	TIMER_SETCALLBACK_SUCCESS = 0,
	TIMER_SETCALLBACK_INVALID_ARGUMENTS = 100,
	TIMER_SETCALLBACK_ID_DOES_NOT_EXIST = 101
	
} TIMER_SETCALLBACK_STATUS;


typedef enum {
	
	STREAMINGDEREGISTER_SUCCESSFULLY_DERIGESTER = 0,
	STREAMINGDEREGISTER_ID_DOES_NOT_EXIST = 100,
	STREAMINGDEREGISTER_INTERNAL_ERROR = 101
	
} STREAMINGDEREGISTER_STATUS;




