.class public Lorg/restlet/engine/header/CookieSettingReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "CookieSettingReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/CookieSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final NAME_SET_ACCESS_RESTRICTED:Ljava/lang/String; = "httpOnly"

.field private static final NAME_SET_COMMENT:Ljava/lang/String; = "comment"

.field private static final NAME_SET_COMMENT_URL:Ljava/lang/String; = "commentURL"

.field private static final NAME_SET_DISCARD:Ljava/lang/String; = "discard"

.field private static final NAME_SET_DOMAIN:Ljava/lang/String; = "domain"

.field private static final NAME_SET_EXPIRES:Ljava/lang/String; = "expires"

.field private static final NAME_SET_MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final NAME_SET_PATH:Ljava/lang/String; = "path"

.field private static final NAME_SET_PORT:Ljava/lang/String; = "port"

.field private static final NAME_SET_SECURE:Ljava/lang/String; = "secure"

.field private static final NAME_SET_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private volatile cachedPair:Lorg/restlet/data/Parameter;

.field private volatile globalVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/engine/header/CookieSettingReader;->cachedPair:Lorg/restlet/data/Parameter;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lorg/restlet/engine/header/CookieSettingReader;->globalVersion:I

    .line 110
    return-void
.end method

.method public static read(Ljava/lang/String;)Lorg/restlet/data/CookieSetting;
    .locals 4
    .param p0, "cookieSetting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lorg/restlet/engine/header/CookieSettingReader;

    invoke-direct {v0, p0}, Lorg/restlet/engine/header/CookieSettingReader;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "cr":Lorg/restlet/engine/header/CookieSettingReader;
    :try_start_0
    invoke-virtual {v0}, Lorg/restlet/engine/header/CookieSettingReader;->readValue()Lorg/restlet/data/CookieSetting;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not read the cookie setting"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readPair()Lorg/restlet/data/Parameter;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x3b

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 119
    const/4 v4, 0x0

    .line 121
    .local v4, "result":Lorg/restlet/data/Parameter;
    iget-object v6, p0, Lorg/restlet/engine/header/CookieSettingReader;->cachedPair:Lorg/restlet/data/Parameter;

    if-eqz v6, :cond_1

    .line 122
    iget-object v4, p0, Lorg/restlet/engine/header/CookieSettingReader;->cachedPair:Lorg/restlet/data/Parameter;

    .line 123
    iput-object v10, p0, Lorg/restlet/engine/header/CookieSettingReader;->cachedPair:Lorg/restlet/data/Parameter;

    .line 181
    :cond_0
    return-object v4

    .line 125
    :cond_1
    const/4 v2, 0x1

    .line 126
    .local v2, "readingName":Z
    const/4 v3, 0x0

    .line 127
    .local v3, "readingValue":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "nameBuffer":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v5, "valueBuffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 131
    .local v1, "nextChar":I
    :cond_2
    :goto_0
    if-nez v4, :cond_0

    if-eq v1, v7, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/restlet/engine/header/CookieSettingReader;->read()I

    move-result v1

    .line 134
    if-eqz v2, :cond_a

    .line 135
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    :cond_3
    if-eq v1, v7, :cond_4

    if-eq v1, v9, :cond_4

    const/16 v6, 0x2c

    if-ne v1, v6, :cond_6

    .line 140
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 142
    invoke-static {v0, v10}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v4

    goto :goto_0

    .line 143
    :cond_5
    if-eq v1, v7, :cond_2

    .line 146
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Empty cookie name detected. Please check your cookies"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 149
    :cond_6
    const/16 v6, 0x3d

    if-ne v1, v6, :cond_7

    .line 150
    const/4 v2, 0x0

    .line 151
    const/4 v3, 0x1

    goto :goto_0

    .line 152
    :cond_7
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v6

    if-nez v6, :cond_8

    iget v6, p0, Lorg/restlet/engine/header/CookieSettingReader;->globalVersion:I

    if-ge v6, v8, :cond_9

    .line 154
    :cond_8
    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    :cond_9
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Separator and control characters are not allowed within a token. Please check your cookie header"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 159
    :cond_a
    if-eqz v3, :cond_2

    .line 160
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 163
    :cond_b
    if-eq v1, v7, :cond_c

    if-ne v1, v9, :cond_d

    .line 165
    :cond_c
    invoke-static {v0, v5}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v4

    goto :goto_0

    .line 166
    :cond_d
    const/16 v6, 0x22

    if-ne v1, v6, :cond_e

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_e

    .line 168
    invoke-virtual {p0}, Lorg/restlet/engine/header/CookieSettingReader;->unread()V

    .line 169
    invoke-virtual {p0}, Lorg/restlet/engine/header/CookieSettingReader;->readQuotedString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :cond_e
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v6

    if-nez v6, :cond_f

    iget v6, p0, Lorg/restlet/engine/header/CookieSettingReader;->globalVersion:I

    if-ge v6, v8, :cond_10

    .line 172
    :cond_f
    int-to-char v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 174
    :cond_10
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Separator and control characters are not allowed within a token. Please check your cookie header"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public bridge synthetic readValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/restlet/engine/header/CookieSettingReader;->readValue()Lorg/restlet/data/CookieSetting;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/CookieSetting;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "result":Lorg/restlet/data/CookieSetting;
    invoke-direct {p0}, Lorg/restlet/engine/header/CookieSettingReader;->readPair()Lorg/restlet/data/Parameter;

    move-result-object v2

    .line 189
    .local v2, "pair":Lorg/restlet/data/Parameter;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_0

    .line 193
    invoke-direct {p0}, Lorg/restlet/engine/header/CookieSettingReader;->readPair()Lorg/restlet/data/Parameter;

    move-result-object v2

    goto :goto_0

    .line 196
    :cond_0
    if-eqz v2, :cond_1

    .line 198
    new-instance v3, Lorg/restlet/data/CookieSetting;

    .end local v3    # "result":Lorg/restlet/data/CookieSetting;
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/restlet/data/CookieSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .restart local v3    # "result":Lorg/restlet/data/CookieSetting;
    invoke-direct {p0}, Lorg/restlet/engine/header/CookieSettingReader;->readPair()Lorg/restlet/data/Parameter;

    move-result-object v2

    .line 202
    :cond_1
    :goto_1
    if-eqz v2, :cond_11

    .line 203
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/CookieSetting;->setPath(Ljava/lang/String;)V

    .line 265
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/restlet/engine/header/CookieSettingReader;->readPair()Lorg/restlet/data/Parameter;

    move-result-object v2

    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/CookieSetting;->setDomain(Ljava/lang/String;)V

    goto :goto_2

    .line 207
    :cond_4
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "comment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 208
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/CookieSetting;->setComment(Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_5
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "commentURL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "discard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 212
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/restlet/data/CookieSetting;->setMaxAge(I)V

    goto :goto_2

    .line 213
    :cond_6
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "expires"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 214
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 215
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1036:Ljava/util/List;

    invoke-static {v4, v5}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Date;

    move-result-object v1

    .line 218
    .local v1, "expires":Ljava/util/Date;
    if-nez v1, :cond_7

    .line 219
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    invoke-static {v4, v5}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Date;

    move-result-object v1

    .line 223
    :cond_7
    if-nez v1, :cond_8

    .line 224
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/restlet/engine/util/DateUtils;->FORMAT_ASC_TIME:Ljava/util/List;

    invoke-static {v4, v5}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Date;

    move-result-object v1

    .line 228
    :cond_8
    if-eqz v1, :cond_a

    .line 229
    invoke-static {v0, v1}, Lorg/restlet/engine/util/DateUtils;->after(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 230
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/CookieSetting;->setMaxAge(I)V

    goto/16 :goto_2

    .line 233
    :cond_9
    invoke-virtual {v3, v8}, Lorg/restlet/data/CookieSetting;->setMaxAge(I)V

    goto/16 :goto_2

    .line 237
    :cond_a
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring cookie setting expiration date. Unable to parse the date: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 242
    .end local v0    # "current":Ljava/util/Date;
    .end local v1    # "expires":Ljava/util/Date;
    :cond_b
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "max-age"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 243
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/CookieSetting;->setMaxAge(I)V

    goto/16 :goto_2

    .line 244
    :cond_c
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "port"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 246
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "secure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 247
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 249
    :cond_d
    invoke-virtual {v3, v9}, Lorg/restlet/data/CookieSetting;->setSecure(Z)V

    goto/16 :goto_2

    .line 251
    :cond_e
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "httpOnly"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 253
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 255
    :cond_f
    invoke-virtual {v3, v9}, Lorg/restlet/data/CookieSetting;->setAccessRestricted(Z)V

    goto/16 :goto_2

    .line 257
    :cond_10
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/CookieSetting;->setVersion(I)V

    goto/16 :goto_2

    .line 268
    :cond_11
    return-object v3
.end method