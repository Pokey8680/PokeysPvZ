.class public final Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;
.super Ljava/lang/Object;
.source "AnalyticsDatabaseManager.java"


# static fields
.field private static c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "eventid"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "sid"

    aput-object v1, v0, v6

    const-string v1, "ts"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ssts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "am"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->d:[Ljava/lang/String;

    .line 31
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "levelid"

    aput-object v1, v0, v4

    const-string v1, "levelname"

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->e:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "levelid"

    aput-object v1, v0, v4

    const-string v1, "levelname"

    aput-object v1, v0, v5

    const-string v1, "levelstatus"

    aput-object v1, v0, v6

    const-string v1, "timetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "attemptcount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "attempttime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->f:[Ljava/lang/String;

    .line 41
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "eventname"

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->g:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "levelid"

    aput-object v1, v0, v4

    const-string v1, "begintime"

    aput-object v1, v0, v5

    const-string v1, "totalcount"

    aput-object v1, v0, v6

    const-string v1, "totaltime"

    aput-object v1, v0, v7

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->h:[Ljava/lang/String;

    .line 48
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "itemName"

    aput-object v1, v0, v4

    const-string v1, "itemType"

    aput-object v1, v0, v5

    const-string v1, "itemCount"

    aput-object v1, v0, v6

    const-string v1, "itemDescription"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "itemPrice"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "currencyCode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "productId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "transactionId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "transactionStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->i:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 300
    new-instance v8, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionId(Ljava/lang/String;)V

    .line 302
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventId(J)V

    .line 303
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTimeStamp(J)V

    .line 304
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionTimeStamp(J)V

    .line 305
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventAttributeMap(Ljava/lang/String;)V

    .line 306
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 307
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 309
    const-string v2, "[InMobi]-[Analytics]-4.4.3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMAppDatabaseManager->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 314
    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "levelbegin"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->e:[Ljava/lang/String;

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 319
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 320
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelId(Ljava/lang/String;)V

    .line 321
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelName(Ljava/lang/String;)V

    .line 362
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 363
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_1
    return-object v8

    .line 322
    :cond_2
    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "le"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "levelend"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->f:[Ljava/lang/String;

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 327
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelId(Ljava/lang/String;)V

    .line 329
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelName(Ljava/lang/String;)V

    .line 330
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelStatus(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x4

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTimeTaken(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x5

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventAttemptCount(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x6

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventAttemptTime(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_3
    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "customevent"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->g:[Ljava/lang/String;

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 340
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 341
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventCustomName(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_4
    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactiondetail"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->i:[Ljava/lang/String;

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 349
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 351
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemName(Ljava/lang/String;)V

    .line 352
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemType(I)V

    .line 353
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemCount(I)V

    .line 354
    const/4 v0, 0x4

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemDescription(Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x5

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemPrice(D)V

    .line 356
    const/4 v0, 0x6

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionCurrencyCode(Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x7

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionProductId(Ljava/lang/String;)V

    .line 358
    const/16 v0, 0x8

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionId(Ljava/lang/String;)V

    .line 359
    const/16 v0, 0x9

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionStatus(I)V

    goto/16 :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    return-void
.end method

.method private a(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;J)V
    .locals 18

    .prologue
    .line 119
    const-string v2, "[InMobi]-[Analytics]-4.4.3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMAppDatabaseManager->insertEvents-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxdbcount()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gez v2, :cond_9

    .line 125
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 126
    const-wide/16 v2, -0x1

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventTimeStamp()J

    move-result-wide v16

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 131
    const-string v3, "begintime"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "attemptdata"

    const-string v5, "levelid = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 137
    if-gtz v3, :cond_0

    .line 138
    const-string v3, "levelid"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v3, "totalcount"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v3, "totaltime"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "attemptdata"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 148
    :cond_0
    const-string v2, "levelid"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "levelname"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "levelbegin"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 234
    :cond_1
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 235
    const-string v5, "eventid"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string v2, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v2, "sid"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v2, "ts"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    const-string v2, "ssts"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventSessionTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    const-string v2, "am"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventAttributeMap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "eventlist"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 253
    :goto_1
    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getStartHandle()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 254
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->setStartHandle(Z)V

    .line 255
    invoke-static {}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getTimeinterval()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 258
    :cond_2
    return-void

    .line 154
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "le"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    const-string v13, "0"

    const-string v12, "0"

    const-string v11, "0"

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attemptdata"

    sget-object v4, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->h:[Ljava/lang/String;

    const-string v5, "levelid = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 164
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 165
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    const/4 v2, 0x2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long v2, v16, v2

    .line 168
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 169
    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 171
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 172
    const/4 v3, 0x3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 177
    const-string v7, "totalcount"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v7, "totaltime"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "attemptdata"

    const-string v9, "levelid = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 188
    const-string v5, "levelid"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v5, "levelstatus"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v5, "levelname"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v5, "timetaken"

    invoke-virtual {v14, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "attemptcount"

    invoke-virtual {v14, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "attempttime"

    invoke-virtual {v14, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "levelend"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_0

    .line 199
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 202
    const-string v2, "itemName"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemType()I

    move-result v2

    .line 205
    sget-object v3, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->getValue()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 207
    const-string v3, "itemType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemCount()I

    move-result v2

    .line 211
    if-lez v2, :cond_6

    .line 212
    const-string v3, "itemCount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    :cond_6
    const-string v2, "itemDescription"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "itemPrice"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 215
    const-string v2, "currencyCode"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "productId"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "transactionId"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionStatus()I

    move-result v2

    .line 219
    sget-object v3, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v3

    if-eq v3, v2, :cond_7

    .line 221
    const-string v3, "transactionStatus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "transactiondetail"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_0

    .line 226
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ce"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    const-string v2, "eventname"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventCustomName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "customevent"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_0

    .line 249
    :cond_9
    const-string v2, "[InMobi]-[Analytics]-4.4.3"

    const-string v3, "Database full"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    goto/16 :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    const-string v0, "[InMobi]-[Analytics]-4.4.3"

    const-string v1, "IMAppDatabaseManager->deleteEvents"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 386
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    .line 388
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlist"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->d:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 392
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 396
    const-string v1, "lb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "levelbegin"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 415
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 416
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlist"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_1
    const-string v1, "le"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "levelend"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 404
    :cond_2
    const-string v1, "ce"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "customevent"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 409
    :cond_3
    const-string v1, "pi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "transactiondetail"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 421
    :cond_4
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;->close()V

    .line 100
    return-void
.end method

.method private c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/analytics/db/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 275
    const-string v0, "[InMobi]-[Analytics]-4.4.3"

    const-string v1, "IMAppDatabaseManager->getEvents"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const-string v0, "[InMobi]-[Analytics]-4.4.3"

    const-string v1, "IMAppDatabaseManager->getEvents()-database is not open"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 296
    :goto_0
    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlist"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->d:[Ljava/lang/String;

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxevents()Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 288
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a(Landroid/database/Cursor;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    move-result-object v1

    .line 290
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTableId(J)V

    .line 291
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 294
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 296
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;
    .locals 4

    .prologue
    .line 77
    const-class v1, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    .line 80
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "appengage.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ltvp.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 84
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->updatedFromOldSDK(Landroid/content/Context;)V

    .line 87
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    new-instance v2, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    .line 91
    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized deleteEvents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a()V

    .line 372
    invoke-direct {p0, p1}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a(Ljava/util/List;)V

    .line 373
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :goto_0
    monitor-exit p0

    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    :try_start_1
    const-string v0, "[InMobi]-[Analytics]-4.4.3"

    const-string v1, "Error deleting from DB."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/analytics/db/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a()V

    .line 263
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c()Ljava/util/List;

    move-result-object v0

    .line 264
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :goto_0
    monitor-exit p0

    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    :try_start_1
    const-string v0, "[InMobi]-[Analytics]-4.4.3"

    const-string v1, "Error reading events from DB."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertEvents(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V
    .locals 3

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a()V

    .line 105
    const-string v0, "SELECT COUNT(*) FROM eventlist"

    .line 107
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;J)V

    .line 109
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_1
    const-string v1, "[InMobi]-[Analytics]-4.4.3"

    const-string v2, "Error in inserting into DB."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
