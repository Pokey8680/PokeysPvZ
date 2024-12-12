.class public Lorg/restlet/engine/header/CookieReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "CookieReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/Cookie;",
        ">;"
    }
.end annotation


# static fields
.field private static final NAME_DOMAIN:Ljava/lang/String; = "$Domain"

.field private static final NAME_PATH:Ljava/lang/String; = "$Path"

.field private static final NAME_VERSION:Ljava/lang/String; = "$Version"


# instance fields
.field private volatile globalVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lorg/restlet/engine/header/CookieReader;->globalVersion:I

    .line 84
    return-void
.end method

.method public static read(Ljava/lang/String;)Lorg/restlet/data/Cookie;
    .locals 4
    .param p0, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lorg/restlet/engine/header/CookieReader;

    invoke-direct {v0, p0}, Lorg/restlet/engine/header/CookieReader;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "cr":Lorg/restlet/engine/header/CookieReader;
    :try_start_0
    invoke-virtual {v0}, Lorg/restlet/engine/header/CookieReader;->readValue()Lorg/restlet/data/Cookie;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not read the cookie"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readPair(Z)Lorg/restlet/data/Parameter;
    .locals 10
    .param p1, "readAttribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3b

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 95
    const/4 v4, 0x0

    .line 97
    .local v4, "result":Lorg/restlet/data/Parameter;
    const/4 v2, 0x1

    .line 98
    .local v2, "readingName":Z
    const/4 v3, 0x0

    .line 99
    .local v3, "readingValue":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "nameBuffer":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v5, "valueBuffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 103
    .local v1, "nextChar":I
    :cond_0
    :goto_0
    if-nez v4, :cond_10

    if-eq v1, v7, :cond_10

    .line 104
    invoke-virtual {p0}, Lorg/restlet/engine/header/CookieReader;->read()I

    move-result v1

    .line 106
    if-eqz v2, :cond_9

    .line 107
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    :cond_1
    if-eq v1, v7, :cond_2

    if-eq v1, v9, :cond_2

    const/16 v6, 0x2c

    if-ne v1, v6, :cond_4

    .line 112
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 114
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v4

    goto :goto_0

    .line 115
    :cond_3
    if-eq v1, v7, :cond_0

    .line 118
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Empty cookie name detected. Please check your cookies"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 121
    :cond_4
    const/16 v6, 0x3d

    if-ne v1, v6, :cond_5

    .line 122
    const/4 v2, 0x0

    .line 123
    const/4 v3, 0x1

    goto :goto_0

    .line 124
    :cond_5
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, p0, Lorg/restlet/engine/header/CookieReader;->globalVersion:I

    if-ge v6, v8, :cond_8

    .line 126
    :cond_6
    if-eqz p1, :cond_7

    const/16 v6, 0x24

    if-eq v1, v6, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 128
    invoke-virtual {p0}, Lorg/restlet/engine/header/CookieReader;->unread()V

    .line 129
    const/4 v1, -0x1

    goto :goto_0

    .line 131
    :cond_7
    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    :cond_8
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Separator and control characters are not allowed within a token. Please check your cookie header"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 137
    :cond_9
    if-eqz v3, :cond_0

    .line 138
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    :cond_a
    if-eq v1, v7, :cond_b

    if-ne v1, v9, :cond_c

    .line 143
    :cond_b
    invoke-static {v0, v5}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v4

    goto :goto_0

    .line 144
    :cond_c
    const/16 v6, 0x22

    if-ne v1, v6, :cond_d

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_d

    .line 146
    invoke-virtual {p0}, Lorg/restlet/engine/header/CookieReader;->unread()V

    .line 147
    invoke-virtual {p0}, Lorg/restlet/engine/header/CookieReader;->readQuotedString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 148
    :cond_d
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v6

    if-nez v6, :cond_e

    iget v6, p0, Lorg/restlet/engine/header/CookieReader;->globalVersion:I

    if-ge v6, v8, :cond_f

    .line 150
    :cond_e
    int-to-char v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 152
    :cond_f
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Separator and control characters are not allowed within a token. Please check your cookie header"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 158
    :cond_10
    return-object v4
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
    .line 46
    invoke-virtual {p0}, Lorg/restlet/engine/header/CookieReader;->readValue()Lorg/restlet/data/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/Cookie;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x24

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "result":Lorg/restlet/data/Cookie;
    invoke-direct {p0, v5}, Lorg/restlet/engine/header/CookieReader;->readPair(Z)Lorg/restlet/data/Parameter;

    move-result-object v0

    .line 166
    .local v0, "pair":Lorg/restlet/data/Parameter;
    iget v2, p0, Lorg/restlet/engine/header/CookieReader;->globalVersion:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 168
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$Version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/restlet/engine/header/CookieReader;->globalVersion:I

    .line 181
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_3

    .line 185
    invoke-direct {p0, v5}, Lorg/restlet/engine/header/CookieReader;->readPair(Z)Lorg/restlet/data/Parameter;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Empty cookies version attribute detected. Please check your cookie header"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_2
    iput v5, p0, Lorg/restlet/engine/header/CookieReader;->globalVersion:I

    goto :goto_0

    .line 188
    :cond_3
    if-eqz v0, :cond_4

    .line 190
    new-instance v1, Lorg/restlet/data/Cookie;

    .end local v1    # "result":Lorg/restlet/data/Cookie;
    iget v2, p0, Lorg/restlet/engine/header/CookieReader;->globalVersion:I

    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/Cookie;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    .restart local v1    # "result":Lorg/restlet/data/Cookie;
    invoke-direct {p0, v6}, Lorg/restlet/engine/header/CookieReader;->readPair(Z)Lorg/restlet/data/Parameter;

    move-result-object v0

    .line 195
    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_7

    .line 196
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$Path"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 197
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/Cookie;->setPath(Ljava/lang/String;)V

    .line 206
    :cond_5
    :goto_2
    invoke-direct {p0, v6}, Lorg/restlet/engine/header/CookieReader;->readPair(Z)Lorg/restlet/data/Parameter;

    move-result-object v0

    goto :goto_1

    .line 198
    :cond_6
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$Domain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/Cookie;->setDomain(Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_7
    return-object v1
.end method
