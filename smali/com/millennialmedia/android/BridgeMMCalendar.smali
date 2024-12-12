.class Lcom/millennialmedia/android/BridgeMMCalendar;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMCalendar.java"


# static fields
.field private static final ADD_EVENT:Ljava/lang/String; = "addEvent"

.field private static final TAG:Ljava/lang/String;

.field private static final mraidCreateCalendarEventDateFormats:[Ljava/lang/String;

.field private static final rruleUntilDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/millennialmedia/android/BridgeMMCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZZZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZ"

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->mraidCreateCalendarEventDateFormats:[Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->rruleUntilDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 39
    return-void
.end method

.method private convertMraidDayToRRuleDay(I)Ljava/lang/String;
    .locals 1
    .param p1, "mraidDay"    # I

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_0

    .line 314
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 300
    :pswitch_0
    const-string v0, "MO"

    goto :goto_0

    .line 302
    :pswitch_1
    const-string v0, "TU"

    goto :goto_0

    .line 304
    :pswitch_2
    const-string v0, "WE"

    goto :goto_0

    .line 306
    :pswitch_3
    const-string v0, "TH"

    goto :goto_0

    .line 308
    :pswitch_4
    const-string v0, "FR"

    goto :goto_0

    .line 310
    :pswitch_5
    const-string v0, "SA"

    goto :goto_0

    .line 312
    :pswitch_6
    const-string v0, "SU"

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private convertRecurrence(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 13
    .param p1, "recurrence"    # Lorg/json/JSONObject;

    .prologue
    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v9, "rrule":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v10, "frequency"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "frequency":Ljava/lang/String;
    const-string v10, "FREQ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v5    # "frequency":Ljava/lang/String;
    :goto_0
    :try_start_1
    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->rruleUntilDateFormat:Ljava/text/SimpleDateFormat;

    const-string v11, "expires"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/millennialmedia/android/BridgeMMCalendar;->mraidCreateCalendarEventDateFormats:[Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "expires":Ljava/lang/String;
    const-string v10, "UNTIL="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 247
    .end local v4    # "expires":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string v10, "daysInWeek"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 248
    .local v8, "mraidDaysInWeek":Lorg/json/JSONArray;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v1, "daysInWeek":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 250
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/millennialmedia/android/BridgeMMCalendar;->convertMraidDayToRRuleDay(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 249
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 231
    .end local v1    # "daysInWeek":Ljava/lang/StringBuilder;
    .end local v6    # "i":I
    .end local v8    # "mraidDaysInWeek":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 232
    .local v3, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v11, "Unable to get calendar event recurrence frequency"

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 241
    .local v3, "e":Lorg/apache/http/impl/cookie/DateParseException;
    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v11, "Error parsing calendar event recurrence expiration date"

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    .end local v3    # "e":Lorg/apache/http/impl/cookie/DateParseException;
    :catch_2
    move-exception v3

    .line 243
    .local v3, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v11, "Unable to get calendar event recurrence expiration date"

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v1    # "daysInWeek":Ljava/lang/StringBuilder;
    .restart local v6    # "i":I
    .restart local v8    # "mraidDaysInWeek":Lorg/json/JSONArray;
    :cond_0
    :try_start_3
    const-string v10, "BYDAY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 261
    .end local v1    # "daysInWeek":Ljava/lang/StringBuilder;
    .end local v6    # "i":I
    .end local v8    # "mraidDaysInWeek":Lorg/json/JSONArray;
    :goto_3
    :try_start_4
    const-string v10, "daysInMonth"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\["

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\]"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "daysInMonth":Ljava/lang/String;
    const-string v10, "BYMONTHDAY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 270
    .end local v0    # "daysInMonth":Ljava/lang/String;
    :goto_4
    :try_start_5
    const-string v10, "monthsInYear:"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\["

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\]"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "monthsInYear":Ljava/lang/String;
    const-string v10, "BYMONTH="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 279
    .end local v7    # "monthsInYear":Ljava/lang/String;
    :goto_5
    :try_start_6
    const-string v10, "daysInYear"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "daysInYear":Ljava/lang/String;
    const-string v10, "BYYEARDAY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 286
    .end local v2    # "daysInYear":Ljava/lang/String;
    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 256
    :catch_3
    move-exception v3

    .line 257
    .restart local v3    # "e":Lorg/json/JSONException;
    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v11, "Unable to get days in week"

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 265
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v3

    .line 266
    .restart local v3    # "e":Lorg/json/JSONException;
    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v11, "Unable to get days in month"

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 274
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v3

    .line 275
    .restart local v3    # "e":Lorg/json/JSONException;
    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v11, "Unable to get months in year:"

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 282
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v3

    .line 283
    .restart local v3    # "e":Lorg/json/JSONException;
    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v11, "Unable to get days in year"

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public addEvent(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 24
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "addEvent parameters: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    .line 48
    if-eqz p1, :cond_b

    const-string v20, "parameters"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_b

    .line 50
    const/4 v7, 0x0

    .line 51
    .local v7, "description":Ljava/lang/String;
    const/4 v12, 0x0

    .line 52
    .local v12, "location":Ljava/lang/String;
    const/16 v16, 0x0

    .line 53
    .local v16, "start":Ljava/util/Date;
    const/4 v9, 0x0

    .line 54
    .local v9, "end":Ljava/util/Date;
    const/16 v18, 0x0

    .line 55
    .local v18, "title":Ljava/lang/String;
    const/16 v17, 0x0

    .line 56
    .local v17, "status":Ljava/lang/String;
    const/4 v15, 0x0

    .line 57
    .local v15, "reminder":Ljava/lang/String;
    const/4 v14, 0x0

    .line 58
    .local v14, "recurrenceRule":Ljava/lang/String;
    const/16 v19, 0x0

    .line 61
    .local v19, "transparency":Ljava/lang/String;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    const-string v20, "parameters"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .local v11, "jsonParameters":Lorg/json/JSONObject;
    :try_start_1
    const-string v20, "description"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .line 79
    :goto_0
    :try_start_2
    const-string v20, "summary"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 86
    :goto_1
    :try_start_3
    const-string v20, "transparency"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v19

    .line 92
    :goto_2
    :try_start_4
    const-string v20, "reminder"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v15

    .line 98
    :goto_3
    :try_start_5
    const-string v20, "location"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v12

    .line 104
    :goto_4
    :try_start_6
    const-string v20, "status"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v17

    .line 110
    :goto_5
    :try_start_7
    const-string v20, "recurrence"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 112
    .local v13, "recurrence":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/millennialmedia/android/BridgeMMCalendar;->convertRecurrence(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v14

    .line 119
    .end local v13    # "recurrence":Lorg/json/JSONObject;
    :goto_6
    :try_start_8
    const-string v20, "start"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/millennialmedia/android/BridgeMMCalendar;->mraidCreateCalendarEventDateFormats:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_8
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9

    move-result-object v16

    .line 130
    :goto_7
    :try_start_9
    const-string v20, "end"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/millennialmedia/android/BridgeMMCalendar;->mraidCreateCalendarEventDateFormats:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_9
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_b

    move-result-object v9

    .line 139
    :goto_8
    :try_start_a
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Creating calendar event: title: %s, location: %s, start: %s, end: %s, status: %s, summary: %s, rrule: %s"

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    const/16 v23, 0x1

    aput-object v12, v22, v23

    const/16 v23, 0x2

    aput-object v16, v22, v23

    const/16 v23, 0x3

    aput-object v9, v22, v23

    const/16 v23, 0x4

    aput-object v17, v22, v23

    const/16 v23, 0x5

    aput-object v7, v22, v23

    const/16 v23, 0x6

    aput-object v14, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    .line 150
    if-eqz v18, :cond_0

    if-nez v16, :cond_1

    .line 151
    :cond_0
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Description and start must be provided to create calendar event."

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v20, "Calendar Event Creation Failed.  Minimum parameters not provided"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v20

    .line 212
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "end":Ljava/util/Date;
    .end local v11    # "jsonParameters":Lorg/json/JSONObject;
    .end local v12    # "location":Ljava/lang/String;
    .end local v14    # "recurrenceRule":Ljava/lang/String;
    .end local v15    # "reminder":Ljava/lang/String;
    .end local v16    # "start":Ljava/util/Date;
    .end local v17    # "status":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "transparency":Ljava/lang/String;
    :goto_9
    return-object v20

    .line 70
    .restart local v7    # "description":Ljava/lang/String;
    .restart local v9    # "end":Ljava/util/Date;
    .restart local v11    # "jsonParameters":Lorg/json/JSONObject;
    .restart local v12    # "location":Ljava/lang/String;
    .restart local v14    # "recurrenceRule":Ljava/lang/String;
    .restart local v15    # "reminder":Ljava/lang/String;
    .restart local v16    # "start":Ljava/util/Date;
    .restart local v17    # "status":Ljava/lang/String;
    .restart local v18    # "title":Ljava/lang/String;
    .restart local v19    # "transparency":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 72
    .local v8, "e":Lorg/json/JSONException;
    :try_start_b
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to get calendar event description"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 143
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v11    # "jsonParameters":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    .line 144
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to parse calendar addEvent parameters"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v20, "Calendar Event Creation Failed.  Invalid parameters"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v20

    goto :goto_9

    .line 81
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v11    # "jsonParameters":Lorg/json/JSONObject;
    :catch_2
    move-exception v8

    .line 82
    .restart local v8    # "e":Lorg/json/JSONException;
    :try_start_c
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to get calendar event description"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 87
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v8

    .line 88
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to get calendar event transparency"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 93
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v8

    .line 94
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to get calendar event reminder"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 99
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v8

    .line 100
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to get calendar event location"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 105
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v8

    .line 106
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to get calendar event status"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 114
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_7
    move-exception v8

    .line 115
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to get calendar event recurrence"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 122
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_8
    move-exception v8

    .line 123
    .local v8, "e":Lorg/apache/http/impl/cookie/DateParseException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Error parsing calendar event start date"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 124
    .end local v8    # "e":Lorg/apache/http/impl/cookie/DateParseException;
    :catch_9
    move-exception v8

    .line 126
    .local v8, "e":Lorg/json/JSONException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to get calendar event start date"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 133
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_a
    move-exception v8

    .line 134
    .local v8, "e":Lorg/apache/http/impl/cookie/DateParseException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Error parsing calendar event end date"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 135
    .end local v8    # "e":Lorg/apache/http/impl/cookie/DateParseException;
    :catch_b
    move-exception v8

    .line 136
    .local v8, "e":Lorg/json/JSONException;
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Unable to get calendar event end date"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_8

    .line 158
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.INSERT"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v21, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v10

    .line 162
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v16, :cond_2

    .line 163
    const-string v20, "beginTime"

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 166
    :cond_2
    if-eqz v9, :cond_3

    .line 167
    const-string v20, "endTime"

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    :cond_3
    if-eqz v18, :cond_4

    .line 171
    const-string v20, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :cond_4
    if-eqz v7, :cond_5

    .line 174
    const-string v20, "description"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_5
    if-eqz v12, :cond_6

    .line 177
    const-string v20, "eventLocation"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    :cond_6
    if-eqz v14, :cond_7

    .line 180
    const-string v20, "rrule"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    :cond_7
    if-eqz v17, :cond_8

    .line 186
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Calendar addEvent does not support status"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_8
    if-eqz v19, :cond_9

    .line 189
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Calendar addEvent does not support transparency"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_9
    if-eqz v15, :cond_a

    .line 192
    sget-object v20, Lcom/millennialmedia/android/BridgeMMCalendar;->TAG:Ljava/lang/String;

    const-string v21, "Calendar addEvent does not support reminder"

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMCalendar;->contextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 197
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_b

    .line 198
    invoke-static {v6, v10}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 200
    const-string v20, "PROPERTY_EXPANDING"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/BridgeMMCalendar;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v4

    .line 202
    .local v4, "adImplId":J
    const-string v20, "calendar"

    move-object/from16 v0, v20

    invoke-static {v6, v0, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 205
    const-string v20, "Calendar Event Created"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v20

    goto/16 :goto_9

    .line 209
    .end local v4    # "adImplId":J
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "end":Ljava/util/Date;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "jsonParameters":Lorg/json/JSONObject;
    .end local v12    # "location":Ljava/lang/String;
    .end local v14    # "recurrenceRule":Ljava/lang/String;
    .end local v15    # "reminder":Ljava/lang/String;
    .end local v16    # "start":Ljava/util/Date;
    .end local v17    # "status":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "transparency":Ljava/lang/String;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 212
    :cond_c
    const-string v20, "Not supported"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v20

    goto/16 :goto_9
.end method

.method executeCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 322
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    const-string v1, "addEvent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCalendar;->addEvent(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 326
    :cond_0
    return-object v0
.end method
