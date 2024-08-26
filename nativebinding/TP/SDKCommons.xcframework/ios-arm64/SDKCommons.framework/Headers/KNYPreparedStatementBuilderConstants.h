//
//  KNYPreparedStatementBuilderConstants.h
//  KonySyncV2
//
//  Created by Archana Narahari on 09/06/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#ifndef KNYPreparedStatementBuilderConstants_h
#define KNYPreparedStatementBuilderConstants_h

typedef enum {
    KNYPreparedStatementBuilderTypeCreate = 0,
    KNYPreparedStatementBuilderTypeRead = 1,
    KNYPreparedStatementBuilderTypeUpdate = 2,
    KNYPreparedStatementBuilderTypePartialUpdate = 3,
    KNYPreparedStatementBuilderTypeDelete = 4,
    KNYPreparedStatementBuilderTypeInsertOrReplace = 5,
    KNYPreparedStatementBuilderTypeReadDistinct = 6
}KNYPreparedStatementBuilderType;

#endif /* KSPreparedStatementBuilderConstants_h */
