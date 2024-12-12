.class public final Lorg/codegist/common/net/Urls;
.super Ljava/lang/Object;
.source "Urls.java"


# static fields
.field private static final EQUAL:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codegist/common/net/Urls;->EQUAL:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "encoded":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 54
    .local v1, "focus":C
    const/16 v4, 0x2a

    if-ne v1, v4, :cond_0

    .line 55
    const-string v4, "%2A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    .line 57
    const-string v4, "%20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    :cond_1
    const/16 v4, 0x25

    if-ne v1, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_2

    .line 59
    const/16 v4, 0x7e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 65
    .end local v1    # "focus":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getQueryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 126
    .local v0, "len":I
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 127
    .local v1, "query":I
    if-eqz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 128
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasQueryString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 157
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static normalizeSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    move-object v3, p0

    .line 168
    .local v3, "pUrl":Ljava/lang/String;
    const/4 v6, 0x0

    .line 169
    .local v6, "queryString":Ljava/lang/String;
    invoke-static {v3}, Lorg/codegist/common/net/Urls;->hasQueryString(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 170
    const/16 v12, 0x3f

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 171
    .local v7, "questionMark":I
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 174
    .end local v7    # "questionMark":I
    :cond_0
    const-string v12, "://"

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 175
    .local v8, "sepP":I
    add-int/lit8 v9, v8, 0x3

    .line 176
    .local v9, "sepPEnd":I
    const/16 v12, 0x2f

    invoke-virtual {v3, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 178
    .local v1, "firstSlash":I
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "protocol":Ljava/lang/String;
    const/4 v12, -0x1

    if-le v1, v12, :cond_3

    .line 180
    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, "server":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 187
    .local v11, "urlsb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    .line 188
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 189
    .local v4, "pre":C
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v2, v12, :cond_5

    .line 191
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 192
    .local v0, "c":C
    const/16 v12, 0x2f

    if-ne v4, v12, :cond_1

    const/16 v12, 0x2f

    if-eq v0, v12, :cond_2

    .line 193
    :cond_1
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :cond_2
    move v4, v0

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v4    # "pre":C
    .end local v10    # "server":Ljava/lang/String;
    .end local v11    # "urlsb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 184
    .restart local v10    # "server":Ljava/lang/String;
    const-string v3, ""

    goto :goto_0

    .line 198
    .restart local v11    # "urlsb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 199
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_5
    if-eqz v6, :cond_6

    .line 203
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 205
    :goto_2
    return-object v12

    :cond_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2
.end method

.method public static parseQueryString(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/codegist/common/net/Urls;->parseQueryString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parseQueryString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/Map;
    .locals 8
    .param p0, "queryString"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 108
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v3

    .line 110
    .local v3, "scanner":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    sget-object v5, Lorg/codegist/common/net/Urls;->EQUAL:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "nameValue":[Ljava/lang/String;
    array-length v5, v1

    if-eqz v5, :cond_0

    array-length v5, v1

    if-le v5, v7, :cond_1

    .line 113
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid parameter!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5, p1}, Lorg/codegist/common/net/Urls;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 117
    .local v4, "value":Ljava/lang/String;
    array-length v5, v1

    if-ne v5, v7, :cond_2

    .line 118
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5, p1}, Lorg/codegist/common/net/Urls;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 119
    :cond_2
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameValue":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public static parseQueryString(Ljava/net/URI;)Ljava/util/Map;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/codegist/common/net/Urls;->parseQueryString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parseQueryString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/util/Map;
    .locals 3
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lorg/codegist/common/lang/Objects;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "qs":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/codegist/common/net/Urls;->parseQueryString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method
