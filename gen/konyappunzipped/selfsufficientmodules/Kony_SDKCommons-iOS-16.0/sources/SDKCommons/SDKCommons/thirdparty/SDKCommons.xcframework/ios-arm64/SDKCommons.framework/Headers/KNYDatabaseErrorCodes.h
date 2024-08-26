//
//  KNYDatabaseErrorCodes.h
//  SDKCommons
//
//  Created by Satya Eedara on 20/04/18.
//  Copyright © 2018 kony. All rights reserved.
//

#ifndef KNYDatabaseErrorCodes_h
#define KNYDatabaseErrorCodes_h

//------------------------------------------------
// Error codes for Database Errors - (2000 - 2029)
//------------------------------------------------
static const NSInteger EC_DB_GENERIC_ERROR = 2000;
static const NSInteger EC_DB_SELECT_QUERY_FAILED = 2001;
static const NSInteger EC_DB_TRANSACTION_WITH_NO_ROLLBACK_ON_ERROR_FAILED = 2002;
static const NSInteger EC_DB_TRANSACTION_WITH_ROLLBACK_ON_ERROR_FAILED = 2003;
static const NSInteger EC_DB_SQLCIPHER_FAILED_TO_ENCRYPT_DATABASE = 2004;
static const NSInteger EC_DB_SQLCIPHER_ASSETS_COPY_FAILED = 2005;
static const NSInteger EC_DB_SQLCIPHER_FAILED_TO_OPEN_OR_CREATE_DATABASE = 2006;
static const NSInteger EC_DB_SQLCIPHER_FAILED_TO_LOAD_LIBS = 2007;
static const NSInteger EC_DB_SQLCIPHER_FIPS_SHARED_FILES_COPY_FAILED = 2008;
static const NSInteger EC_DB_SCHEMA_UPGRADE_FAILED = 2009;
static const NSInteger EC_DB_INVALID_SCHEMA_VERSION = 2010;
static const NSInteger EC_DB_UNABLE_TO_INTIALIZE_DB = 2011;

static const NSInteger EC_DATABASE_INVALID_ENCRYPTION_KEY = 2475;

//-----------------------------------------------
//Error codes for Internal Errors - (2900 - 2999)
//-----------------------------------------------
static const NSInteger EC_INTERNAL_INVALID_INPUT_ERROR_CODE = 2900;
static const NSInteger EC_INTERNAL_INVALID_ACTION_TYPE_SENT_TO_QUERYBUILDERFACTORY_ERROR_CODE = 2901;
static const NSInteger EC_INTERNAL_GENERIC_QUERY_BUILDER_ERROR_CODE = 2902;

#endif /* KNYDatabaseErrorCodes_h */
