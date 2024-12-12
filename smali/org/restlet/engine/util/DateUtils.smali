.class public final Lorg/restlet/engine/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final FORMAT_ASC_TIME:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_ISO_8601:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_RFC_1036:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_RFC_1123:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_RFC_3339:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_RFC_822:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMEZONE_GMT:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "EEE MMM dd HH:mm:ss yyyy"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/restlet/engine/util/DateUtils;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_ASC_TIME:Ljava/util/List;

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/restlet/engine/util/DateUtils;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1036:Ljava/util/List;

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/restlet/engine/util/DateUtils;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssz"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/restlet/engine/util/DateUtils;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_3339:Ljava/util/List;

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/restlet/engine/util/DateUtils;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_ISO_8601:Ljava/util/List;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v1, v0, v2

    const-string v1, "EEE, dd MMM yy HH:mm z"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dd MMM yy HH:mm z"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/restlet/engine/util/DateUtils;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_822:Ljava/util/List;

    .line 81
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/util/DateUtils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method

.method public static after(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 8
    .param p0, "baseDate"    # Ljava/util/Date;
    .param p1, "afterDate"    # Ljava/util/Date;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 94
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 95
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t compare the dates, at least one of them is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 100
    .local v2, "baseTime":J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 101
    .local v0, "afterTime":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static before(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 8
    .param p0, "baseDate"    # Ljava/util/Date;
    .param p1, "beforeDate"    # Ljava/util/Date;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 114
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t compare the dates, at least one of them is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 120
    .local v0, "baseTime":J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 121
    .local v2, "beforeTime":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 8
    .param p0, "baseDate"    # Ljava/util/Date;
    .param p1, "otherDate"    # Ljava/util/Date;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 134
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 135
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t compare the dates, at least one of them is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 140
    .local v0, "baseTime":J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 141
    .local v2, "otherTime":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 152
    sget-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Date is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "formatter":Ljava/text/DateFormat;
    sget-object v1, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_3339:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    new-instance v0, Lorg/restlet/engine/util/InternetDateFormat;

    .end local v0    # "formatter":Ljava/text/DateFormat;
    sget-object v1, Lorg/restlet/engine/util/DateUtils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(Ljava/util/TimeZone;)V

    .line 192
    .restart local v0    # "formatter":Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "formatter":Ljava/text/DateFormat;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 189
    .restart local v0    # "formatter":Ljava/text/DateFormat;
    sget-object v1, Lorg/restlet/engine/util/DateUtils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public static format(Ljava/util/Date;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 204
    sget-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Date;
    .locals 7
    .param p0, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 219
    .local v4, "result":Ljava/util/Date;
    if-nez p0, :cond_0

    .line 220
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Date is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 224
    .local v0, "format":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 226
    .local v1, "formatsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-nez v4, :cond_2

    if-ge v2, v1, :cond_2

    .line 227
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "format":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 228
    .restart local v0    # "format":Ljava/lang/String;
    const/4 v3, 0x0

    .line 230
    .local v3, "parser":Ljava/text/DateFormat;
    sget-object v5, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_3339:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    new-instance v3, Lorg/restlet/engine/util/InternetDateFormat;

    .end local v3    # "parser":Ljava/text/DateFormat;
    sget-object v5, Lorg/restlet/engine/util/DateUtils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-direct {v3, v5}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(Ljava/util/TimeZone;)V

    .line 238
    .restart local v3    # "parser":Ljava/text/DateFormat;
    :goto_1
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 226
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "parser":Ljava/text/DateFormat;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 235
    .restart local v3    # "parser":Ljava/text/DateFormat;
    sget-object v5, Lorg/restlet/engine/util/DateUtils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    .line 239
    :catch_0
    move-exception v5

    goto :goto_2

    .line 244
    .end local v3    # "parser":Ljava/text/DateFormat;
    :cond_2
    return-object v4
.end method

.method public static unmodifiable(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 255
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/restlet/engine/util/ImmutableDate;

    invoke-direct {v0, p0}, Lorg/restlet/engine/util/ImmutableDate;-><init>(Ljava/util/Date;)V

    goto :goto_0
.end method

.method private static varargs unmodifiableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
