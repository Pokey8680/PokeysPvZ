.class public Lorg/restlet/engine/util/InternetDateFormat;
.super Ljava/text/DateFormat;
.source "InternetDateFormat.java"


# static fields
.field public static final UTC:Ljava/util/TimeZone;

.field private static volatile df2:Ljava/text/DecimalFormat; = null

.field private static volatile df4:Ljava/text/DecimalFormat; = null

.field private static volatile pattern:Ljava/util/regex/Pattern; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cal:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 72
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df2:Ljava/text/DecimalFormat;

    .line 74
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0000"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df4:Ljava/text/DecimalFormat;

    .line 84
    new-instance v4, Ljava/util/SimpleTimeZone;

    const/4 v5, 0x0

    const-string v6, "Z"

    invoke-direct {v4, v5, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/restlet/engine/util/InternetDateFormat;->UTC:Ljava/util/TimeZone;

    .line 87
    const-string v1, "(\\d{4})-(\\d{2})-(\\d{2})"

    .line 88
    .local v1, "reDate":Ljava/lang/String;
    const-string v2, "(\\d{2}):(\\d{2}):(\\d{2})(\\.\\d+)?"

    .line 89
    .local v2, "reTime":Ljava/lang/String;
    const-string v3, "(?:([zZ])|(?:(\\+|\\-)(\\d{2}):(\\d{2})))"

    .line 90
    .local v3, "reZone":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[tT\\s]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "re":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lorg/restlet/engine/util/InternetDateFormat;->pattern:Ljava/util/regex/Pattern;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lorg/restlet/engine/util/InternetDateFormat;->UTC:Ljava/util/TimeZone;

    invoke-direct {p0, v0}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(Ljava/util/TimeZone;)V

    .line 381
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 429
    sget-object v0, Lorg/restlet/engine/util/InternetDateFormat;->UTC:Ljava/util/TimeZone;

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(JLjava/util/TimeZone;)V

    .line 430
    return-void
.end method

.method public constructor <init>(JLjava/util/TimeZone;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 442
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    .line 443
    iget-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 444
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 456
    invoke-static {p1}, Lorg/restlet/engine/util/InternetDateFormat;->parseCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    .line 457
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 393
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    .line 394
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 404
    sget-object v0, Lorg/restlet/engine/util/InternetDateFormat;->UTC:Ljava/util/TimeZone;

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    .line 405
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 417
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    .line 418
    iget-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 419
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 467
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    .line 468
    return-void
.end method

.method public static now()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/restlet/engine/util/InternetDateFormat;->UTC:Ljava/util/TimeZone;

    invoke-static {v0}, Lorg/restlet/engine/util/InternetDateFormat;->now(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/restlet/engine/util/InternetDateFormat;->toString(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    const/16 v11, 0xb

    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 128
    sget-object v7, Lorg/restlet/engine/util/InternetDateFormat;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 129
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_0

    .line 130
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid date/time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 133
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 134
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 137
    const/16 v7, 0xc

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 138
    const/16 v7, 0xd

    const/4 v8, 0x6

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 139
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 140
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 141
    .local v0, "fraction":F
    const/16 v7, 0xe

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-virtual {p1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 143
    .end local v0    # "fraction":F
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 144
    new-instance v7, Ljava/util/SimpleTimeZone;

    const/4 v8, 0x0

    const-string v9, "Z"

    invoke-direct {v7, v8, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_2
    const/16 v7, 0x9

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, -0x1

    .line 148
    .local v4, "sign":I
    :cond_3
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 149
    .local v5, "tzhour":I
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 150
    .local v6, "tzminute":I
    mul-int/lit8 v7, v5, 0x3c

    add-int/2addr v7, v6

    mul-int v3, v4, v7

    .line 151
    .local v3, "offset":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "id":Ljava/lang/String;
    new-instance v7, Ljava/util/SimpleTimeZone;

    const v8, 0xea60

    mul-int/2addr v8, v3

    invoke-direct {v7, v8, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public static parseCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 167
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {p0, v0}, Lorg/restlet/engine/util/InternetDateFormat;->parse(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 168
    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 182
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {p0, v0}, Lorg/restlet/engine/util/InternetDateFormat;->parse(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 183
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static parseTime(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 197
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {p0, v0}, Lorg/restlet/engine/util/InternetDateFormat;->parse(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 198
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 286
    sget-object v0, Lorg/restlet/engine/util/InternetDateFormat;->UTC:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lorg/restlet/engine/util/InternetDateFormat;->toString(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JLjava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 300
    new-instance v0, Lorg/restlet/engine/util/InternetDateFormat;

    invoke-direct {v0, p0, p1, p2}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(JLjava/util/TimeZone;)V

    .line 301
    .local v0, "dt":Lorg/restlet/engine/util/InternetDateFormat;
    invoke-virtual {v0}, Lorg/restlet/engine/util/InternetDateFormat;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "buf":Ljava/lang/StringBuilder;
    sget-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df4:Ljava/text/DecimalFormat;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    sget-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df2:Ljava/text/DecimalFormat;

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    sget-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df2:Ljava/text/DecimalFormat;

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v4, "T"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    sget-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df2:Ljava/text/DecimalFormat;

    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    sget-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df2:Ljava/text/DecimalFormat;

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    sget-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df2:Ljava/text/DecimalFormat;

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 226
    .local v1, "ms":I
    if-eqz v1, :cond_0

    .line 227
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-float v5, v1

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0xea60

    div-int v3, v4, v5

    .line 232
    .local v3, "tzminute":I
    if-nez v3, :cond_1

    .line 233
    const-string v4, "Z"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 235
    :cond_1
    if-gez v3, :cond_2

    .line 236
    neg-int v3, v3

    .line 237
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :goto_1
    div-int/lit8 v2, v3, 0x3c

    .line 242
    .local v2, "tzhour":I
    mul-int/lit8 v4, v2, 0x3c

    sub-int/2addr v3, v4

    .line 243
    sget-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df2:Ljava/text/DecimalFormat;

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    sget-object v4, Lorg/restlet/engine/util/InternetDateFormat;->df2:Ljava/text/DecimalFormat;

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 239
    .end local v2    # "tzhour":I
    :cond_2
    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static toString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 259
    sget-object v0, Lorg/restlet/engine/util/InternetDateFormat;->UTC:Ljava/util/TimeZone;

    invoke-static {p0, v0}, Lorg/restlet/engine/util/InternetDateFormat;->toString(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 273
    new-instance v0, Lorg/restlet/engine/util/InternetDateFormat;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    .line 274
    .local v0, "dt":Lorg/restlet/engine/util/InternetDateFormat;
    invoke-virtual {v0}, Lorg/restlet/engine/util/InternetDateFormat;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(J)Lorg/restlet/engine/util/InternetDateFormat;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 339
    new-instance v0, Lorg/restlet/engine/util/InternetDateFormat;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(JLjava/util/TimeZone;)Lorg/restlet/engine/util/InternetDateFormat;
    .locals 2
    .param p0, "time"    # J
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 353
    new-instance v0, Lorg/restlet/engine/util/InternetDateFormat;

    invoke-direct {v0, p0, p1, p2}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(JLjava/util/TimeZone;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/engine/util/InternetDateFormat;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Lorg/restlet/engine/util/InternetDateFormat;

    invoke-direct {v0, p0}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/util/Date;)Lorg/restlet/engine/util/InternetDateFormat;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 313
    new-instance v0, Lorg/restlet/engine/util/InternetDateFormat;

    invoke-direct {v0, p0}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static valueOf(Ljava/util/Date;Ljava/util/TimeZone;)Lorg/restlet/engine/util/InternetDateFormat;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 327
    new-instance v0, Lorg/restlet/engine/util/InternetDateFormat;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/util/InternetDateFormat;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 473
    invoke-static {p1}, Lorg/restlet/engine/util/InternetDateFormat;->valueOf(Ljava/util/Date;)Lorg/restlet/engine/util/InternetDateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 506
    const/4 v0, 0x0

    check-cast v0, Ljava/text/ParsePosition;

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/util/InternetDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 511
    invoke-static {p1}, Lorg/restlet/engine/util/InternetDateFormat;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/restlet/engine/util/InternetDateFormat;->cal:Ljava/util/Calendar;

    invoke-static {v0}, Lorg/restlet/engine/util/InternetDateFormat;->toString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
