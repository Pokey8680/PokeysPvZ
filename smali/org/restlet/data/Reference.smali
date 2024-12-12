.class public Lorg/restlet/data/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# static fields
.field private static final charValidityMap:[Z


# instance fields
.field private volatile baseRef:Lorg/restlet/data/Reference;

.field private volatile fragmentIndex:I

.field private volatile internalRef:Ljava/lang/String;

.field private volatile queryIndex:I

.field private volatile schemeIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x7f

    .line 127
    new-array v1, v3, [Z

    sput-object v1, Lorg/restlet/data/Reference;->charValidityMap:[Z

    .line 131
    const/4 v0, 0x0

    .local v0, "character":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 132
    sget-object v2, Lorg/restlet/data/Reference;->charValidityMap:[Z

    invoke-static {v0}, Lorg/restlet/data/Reference;->isReserved(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/restlet/data/Reference;->isUnreserved(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v2, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 136
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    move-object v0, v1

    check-cast v0, Lorg/restlet/data/Reference;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uriReference"    # Ljava/lang/String;

    .prologue
    .line 632
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/data/Reference;

    invoke-direct {p0, v0, p1}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    .line 644
    if-nez p2, :cond_0

    .end local p1    # "identifier":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 645
    return-void

    .line 644
    .restart local p1    # "identifier":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "hostPort"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "fragment"    # Ljava/lang/String;

    .prologue
    .line 665
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/restlet/data/Reference;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 530
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 540
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "hostName"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-virtual {p1}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Protocol;Ljava/lang/String;I)V

    .line 554
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Ljava/lang/String;I)V
    .locals 7
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "hostPort"    # I

    .prologue
    const/4 v4, 0x0

    .line 567
    invoke-virtual {p1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Reference;)V
    .locals 2
    .param p1, "ref"    # Lorg/restlet/data/Reference;

    .prologue
    .line 577
    iget-object v0, p1, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    iget-object v1, p1, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseRef"    # Lorg/restlet/data/Reference;
    .param p2, "uriRef"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    invoke-direct {p0, p2}, Lorg/restlet/data/Reference;->encodeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 602
    iput-object p1, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    .line 603
    iput-object p2, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    .line 604
    invoke-direct {p0}, Lorg/restlet/data/Reference;->updateIndexes()V

    .line 605
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Reference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "baseRef"    # Lorg/restlet/data/Reference;
    .param p2, "relativePart"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;

    .prologue
    .line 622
    invoke-static {p2, p3, p4}, Lorg/restlet/data/Reference;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Reference;Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "baseRef"    # Lorg/restlet/data/Reference;
    .param p2, "uriReference"    # Lorg/restlet/data/Reference;

    .prologue
    .line 589
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "toDecode"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-static {p0, v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;
    .locals 5
    .param p0, "toDecode"    # Ljava/lang/String;
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 166
    sget-object v2, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v3, Lorg/restlet/engine/Edition;->GWT:Lorg/restlet/engine/Edition;

    if-ne v2, v3, :cond_0

    .line 167
    sget-object v2, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v2, p1}, Lorg/restlet/data/CharacterSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only UTF-8 URL encoding is supported under GWT"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, "result":Ljava/lang/String;
    if-nez p1, :cond_1

    move-object v0, p0

    .line 184
    :goto_0
    return-object v0

    .line 174
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to decode the string with the UTF-8 character set."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "toEncode"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x1

    sget-object v1, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-static {p0, v0, v1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;ZLorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;
    .locals 1
    .param p0, "toEncode"    # Ljava/lang/String;
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;ZLorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "toEncode"    # Ljava/lang/String;
    .param p1, "queryString"    # Z

    .prologue
    .line 213
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-static {p0, p1, v0}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;ZLorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;ZLorg/restlet/data/CharacterSet;)Ljava/lang/String;
    .locals 5
    .param p0, "toEncode"    # Ljava/lang/String;
    .param p1, "queryString"    # Z
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 233
    sget-object v2, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v3, Lorg/restlet/engine/Edition;->GWT:Lorg/restlet/engine/Edition;

    if-ne v2, v3, :cond_0

    .line 234
    sget-object v2, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v2, p2}, Lorg/restlet/data/CharacterSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only UTF-8 URL encoding is supported under GWT"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 243
    .local v0, "result":Ljava/lang/String;
    if-nez p2, :cond_2

    move-object v0, p0

    .line 253
    :goto_0
    if-eqz p1, :cond_1

    .line 254
    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    const-string v4, "%2A"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%7E"

    const-string v4, "~"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    return-object v0

    .line 243
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to encode the string with the UTF-8 character set."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private encodeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "uriRef"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x25

    .line 783
    move-object v1, p1

    .line 785
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 786
    const/4 v3, 0x1

    .line 789
    .local v3, "valid":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 790
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/restlet/data/Reference;->isValid(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 791
    const/4 v3, 0x0

    .line 792
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid character detected in URI reference at index \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\". It will be automatically encoded."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 789
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-le v0, v4, :cond_0

    .line 800
    const/4 v3, 0x0

    .line 801
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid percent encoding detected in URI reference at index \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\". It will be automatically encoded."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 808
    :cond_2
    if-nez v3, :cond_6

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 812
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/restlet/data/Reference;->isValid(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 813
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-le v0, v4, :cond_3

    .line 815
    const-string v4, "%25"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 817
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 820
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 824
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    .end local v0    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "valid":Z
    :cond_6
    return-object v1
.end method

.method private static isAlpha(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 289
    invoke-static {p0}, Lorg/restlet/data/Reference;->isUpperCase(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/restlet/data/Reference;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigit(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 300
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGenericDelimiter(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 313
    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x40

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLowerCase(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 326
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReserved(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 337
    invoke-static {p0}, Lorg/restlet/data/Reference;->isGenericDelimiter(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/restlet/data/Reference;->isSubDelimiter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSubDelimiter(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 350
    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnreserved(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 365
    invoke-static {p0}, Lorg/restlet/data/Reference;->isAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/restlet/data/Reference;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUpperCase(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 378
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValid(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 389
    if-ltz p0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/restlet/data/Reference;->charValidityMap:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeLastSegment(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "output"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, -0x1

    .line 2285
    const/4 v1, -0x1

    .line 2286
    .local v1, "min":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ne v1, v4, :cond_1

    if-ltz v0, :cond_1

    .line 2287
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 2288
    move v1, v0

    .line 2286
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2292
    :cond_1
    if-eq v1, v4, :cond_2

    .line 2294
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2300
    :goto_1
    return-void

    .line 2297
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "hostPort"    # Ljava/lang/Integer;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;

    .prologue
    .line 411
    move-object v1, p1

    .line 414
    .local v1, "host":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 415
    invoke-static {p0}, Lorg/restlet/data/Protocol;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v0

    .line 416
    .local v0, "defaultPort":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .end local v0    # "defaultPort":I
    :cond_0
    invoke-static {p0, v1, p3, p4, p5}, Lorg/restlet/data/Reference;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "relativePart"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 441
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_0
    if-eqz p1, :cond_1

    .line 446
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_1
    if-eqz p2, :cond_2

    .line 451
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 479
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_0
    if-eqz p2, :cond_1

    .line 484
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_1
    if-eqz p3, :cond_2

    .line 489
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_2
    if-eqz p4, :cond_3

    .line 494
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateIndexes()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3023
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3025
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3026
    .local v0, "firstSlashIndex":I
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iput v1, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    .line 3028
    if-eq v0, v3, :cond_0

    iget v1, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    if-le v1, v0, :cond_0

    .line 3034
    iput v3, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    .line 3037
    :cond_0
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iput v1, p0, Lorg/restlet/data/Reference;->queryIndex:I

    .line 3038
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iput v1, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    .line 3040
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/restlet/data/Reference;->queryIndex:I

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    if-le v1, v2, :cond_1

    .line 3043
    iput v3, p0, Lorg/restlet/data/Reference;->queryIndex:I

    .line 3046
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    iget v2, p0, Lorg/restlet/data/Reference;->queryIndex:I

    if-le v1, v2, :cond_2

    .line 3048
    iput v3, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    .line 3051
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    if-le v1, v2, :cond_3

    .line 3053
    iput v3, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    .line 3060
    .end local v0    # "firstSlashIndex":I
    :cond_3
    :goto_0
    return-void

    .line 3056
    :cond_4
    iput v3, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    .line 3057
    iput v3, p0, Lorg/restlet/data/Reference;->queryIndex:I

    .line 3058
    iput v3, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    goto :goto_0
.end method


# virtual methods
.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x26

    .line 691
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "query":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 694
    if-nez p2, :cond_0

    .line 695
    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    .line 707
    :goto_0
    return-object p0

    .line 697
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_1
    if-nez p2, :cond_2

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addQueryParameter(Lorg/restlet/data/Parameter;)Lorg/restlet/data/Reference;
    .locals 2
    .param p1, "parameter"    # Lorg/restlet/data/Parameter;

    .prologue
    .line 677
    invoke-virtual {p1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/restlet/data/Reference;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameters(Ljava/lang/Iterable;)Lorg/restlet/data/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)",
            "Lorg/restlet/data/Reference;"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "parameters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/restlet/data/Parameter;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/data/Parameter;

    .line 720
    .local v1, "param":Lorg/restlet/data/Parameter;
    invoke-virtual {p0, v1}, Lorg/restlet/data/Reference;->addQueryParameter(Lorg/restlet/data/Parameter;)Lorg/restlet/data/Reference;

    goto :goto_0

    .line 723
    .end local v1    # "param":Lorg/restlet/data/Parameter;
    :cond_0
    return-object p0
.end method

.method public addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 736
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "path":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 739
    if-nez v0, :cond_1

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    .line 750
    :cond_0
    :goto_0
    return-object p0

    .line 742
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->clone()Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/restlet/data/Reference;
    .locals 2

    .prologue
    .line 755
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0}, Lorg/restlet/data/Reference;-><init>()V

    .line 757
    .local v0, "newRef":Lorg/restlet/data/Reference;
    iget-object v1, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    if-nez v1, :cond_0

    .line 758
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    .line 765
    :goto_0
    iget v1, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    iput v1, v0, Lorg/restlet/data/Reference;->fragmentIndex:I

    .line 766
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iput-object v1, v0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    .line 767
    iget v1, p0, Lorg/restlet/data/Reference;->queryIndex:I

    iput v1, v0, Lorg/restlet/data/Reference;->queryIndex:I

    .line 768
    iget v1, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    iput v1, v0, Lorg/restlet/data/Reference;->schemeIndex:I

    .line 769
    return-object v0

    .line 759
    :cond_0
    iget-object v1, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    invoke-virtual {p0, v1}, Lorg/restlet/data/Reference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    iput-object v0, v0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    goto :goto_0

    .line 762
    :cond_1
    iget-object v1, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->clone()Lorg/restlet/data/Reference;

    move-result-object v1

    iput-object v1, v0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 840
    instance-of v2, p1, Lorg/restlet/data/Reference;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 841
    check-cast v0, Lorg/restlet/data/Reference;

    .line 842
    .local v0, "ref":Lorg/restlet/data/Reference;
    iget-object v2, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 843
    iget-object v2, v0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 849
    .end local v0    # "ref":Lorg/restlet/data/Reference;
    :cond_0
    :goto_0
    return v1

    .line 845
    .restart local v0    # "ref":Lorg/restlet/data/Reference;
    :cond_1
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget-object v2, v0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x2

    .line 860
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getRelativePart()Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "part":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 864
    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 866
    .local v0, "index":I
    if-eq v0, v4, :cond_1

    .line 867
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 879
    .end local v0    # "index":I
    :goto_1
    return-object v2

    .line 860
    .end local v1    # "part":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 870
    .restart local v0    # "index":I
    .restart local v1    # "part":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 871
    if-eq v0, v4, :cond_2

    .line 872
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 875
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 879
    .end local v0    # "index":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAuthority(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 892
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBaseRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getExtensions()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 917
    const/4 v3, 0x0

    .line 918
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getLastSegment()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "lastSegment":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 921
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 922
    .local v0, "extensionIndex":I
    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 924
    .local v2, "matrixIndex":I
    if-eq v0, v5, :cond_0

    .line 926
    if-eq v2, v5, :cond_1

    .line 927
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 936
    .end local v0    # "extensionIndex":I
    .end local v2    # "matrixIndex":I
    :cond_0
    :goto_0
    return-object v3

    .line 931
    .restart local v0    # "extensionIndex":I
    .restart local v2    # "matrixIndex":I
    :cond_1
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getExtensionsAsArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 946
    const/4 v1, 0x0

    .line 947
    .local v1, "result":[Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getExtensions()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "extensions":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 950
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 953
    :cond_0
    return-object v1
.end method

.method public getFragment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 963
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 967
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 980
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getFragment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHierarchicalPart()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 991
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasScheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/restlet/data/Reference;->queryIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1021
    :goto_0
    return-object v0

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1011
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1013
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->queryIndex:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1015
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1017
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1021
    :cond_4
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHierarchicalPart(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1034
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getHierarchicalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getHierarchicalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostDomain()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1047
    const/4 v4, 0x0

    .line 1048
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1053
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1054
    .local v3, "indexUI":I
    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1055
    .local v1, "indexIPV6":I
    const/16 v5, 0x3a

    if-ne v1, v6, :cond_0

    move v1, v3

    .end local v1    # "indexIPV6":I
    :cond_0
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1058
    .local v2, "indexP":I
    if-eq v3, v6, :cond_3

    .line 1060
    if-eq v2, v6, :cond_2

    .line 1062
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1079
    .end local v2    # "indexP":I
    .end local v3    # "indexUI":I
    :cond_1
    :goto_0
    return-object v4

    .line 1065
    .restart local v2    # "indexP":I
    .restart local v3    # "indexUI":I
    :cond_2
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1069
    :cond_3
    if-eq v2, v6, :cond_4

    .line 1071
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1074
    :cond_4
    move-object v4, v0

    goto :goto_0
.end method

.method public getHostDomain(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1092
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getHostDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getHostDomain()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1104
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHostIdentifier(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1118
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostPort()I
    .locals 10

    .prologue
    const/4 v7, -0x1

    .line 1129
    const/4 v5, -0x1

    .line 1130
    .local v5, "result":I
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1135
    const/16 v6, 0x40

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1136
    .local v3, "indexUI":I
    const/16 v6, 0x5d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1137
    .local v2, "indexIPV6":I
    const/16 v6, 0x3a

    if-ne v2, v7, :cond_1

    .end local v3    # "indexUI":I
    :goto_0
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1140
    .local v1, "index":I
    if-eq v1, v7, :cond_0

    .line 1142
    add-int/lit8 v6, v1, 0x1

    :try_start_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1153
    .end local v1    # "index":I
    .end local v2    # "indexIPV6":I
    :cond_0
    :goto_1
    return v5

    .restart local v2    # "indexIPV6":I
    .restart local v3    # "indexUI":I
    :cond_1
    move v3, v2

    .line 1137
    goto :goto_0

    .line 1143
    .end local v3    # "indexUI":I
    .restart local v1    # "index":I
    :catch_0
    move-exception v4

    .line 1144
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t parse hostPort : [hostRef,requestUri]=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1163
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1169
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIdentifier(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1182
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastSegment()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1194
    const/4 v2, 0x0

    .line 1195
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1198
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1199
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1202
    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1204
    .local v0, "lastSlash":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1205
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1209
    .end local v0    # "lastSlash":I
    :cond_1
    return-object v2
.end method

.method public getLastSegment(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/data/Reference;->getLastSegment(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSegment(ZZ)Ljava/lang/String;
    .locals 3
    .param p1, "decode"    # Z
    .param p2, "excludeMatrix"    # Z

    .prologue
    .line 1236
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getLastSegment()Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, "result":Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 1239
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1241
    .local v0, "matrixIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1242
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1246
    .end local v0    # "matrixIndex":I
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v1}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getMatrix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1259
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "lastSegment":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1262
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1264
    .local v1, "matrixIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1265
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1270
    .end local v1    # "matrixIndex":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMatrix(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1283
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getMatrix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getMatrix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMatrixAsForm()Lorg/restlet/data/Form;
    .locals 3

    .prologue
    .line 1292
    new-instance v0, Lorg/restlet/data/Form;

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getMatrix()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;C)V

    return-object v0
.end method

.method public getMatrixAsForm(Lorg/restlet/data/CharacterSet;)Lorg/restlet/data/Form;
    .locals 3
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 1303
    new-instance v0, Lorg/restlet/data/Form;

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getMatrix()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-direct {v0, v1, p1, v2}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;C)V

    return-object v0
.end method

.method public getParentRef()Lorg/restlet/data/Reference;
    .locals 7

    .prologue
    const/16 v6, 0x2f

    const/4 v5, 0x0

    .line 1313
    const/4 v2, 0x0

    .line 1315
    .local v2, "result":Lorg/restlet/data/Reference;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isHierarchical()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1316
    const/4 v0, 0x0

    .line 1317
    .local v0, "parentRef":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, "path":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1320
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1321
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1324
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1334
    :goto_0
    new-instance v2, Lorg/restlet/data/Reference;

    .end local v2    # "result":Lorg/restlet/data/Reference;
    invoke-direct {v2, v0}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 1337
    .end local v0    # "parentRef":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    .restart local v2    # "result":Lorg/restlet/data/Reference;
    :cond_1
    return-object v2

    .line 1328
    .restart local v0    # "parentRef":Ljava/lang/String;
    .restart local v1    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1331
    :cond_3
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/4 v7, -0x1

    .line 1348
    const/4 v4, 0x0

    .line 1349
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getRelativePart()Ljava/lang/String;

    move-result-object v3

    .line 1352
    .local v3, "part":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 1353
    const-string v5, "//"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1355
    const/16 v5, 0x2f

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1357
    .local v1, "index1":I
    if-eq v1, v7, :cond_0

    .line 1359
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1361
    .local v2, "index2":I
    if-eq v2, v7, :cond_2

    .line 1363
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1386
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :cond_0
    :goto_1
    return-object v4

    .line 1349
    .end local v3    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1367
    .restart local v1    # "index1":I
    .restart local v2    # "index2":I
    .restart local v3    # "part":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1374
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :cond_3
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1376
    .local v0, "index":I
    if-eq v0, v7, :cond_4

    .line 1378
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1381
    :cond_4
    move-object v4, v3

    goto :goto_1
.end method

.method public getPath(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1400
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1410
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1412
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1413
    iget v1, p0, Lorg/restlet/data/Reference;->queryIndex:I

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    if-ge v1, v2, :cond_0

    .line 1415
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->queryIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1427
    :cond_0
    :goto_0
    return-object v0

    .line 1423
    :cond_1
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->queryIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuery(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1440
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQueryAsForm()Lorg/restlet/data/Form;
    .locals 2

    .prologue
    .line 1449
    new-instance v0, Lorg/restlet/data/Form;

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getQueryAsForm(Lorg/restlet/data/CharacterSet;)Lorg/restlet/data/Form;
    .locals 2
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 1472
    new-instance v0, Lorg/restlet/data/Form;

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)V

    return-object v0
.end method

.method public getQueryAsForm(Z)Lorg/restlet/data/Form;
    .locals 2
    .param p1, "decode"    # Z

    .prologue
    .line 1461
    new-instance v0, Lorg/restlet/data/Form;

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getRelativePart()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1483
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRelativePart(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1496
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getRelativePart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getRelativePart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRelativeRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 1509
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/data/Reference;->getRelativeRef(Lorg/restlet/data/Reference;)Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeRef(Lorg/restlet/data/Reference;)Lorg/restlet/data/Reference;
    .locals 19
    .param p1, "base"    # Lorg/restlet/data/Reference;

    .prologue
    .line 1525
    const/4 v14, 0x0

    .line 1527
    .local v14, "result":Lorg/restlet/data/Reference;
    if-nez p1, :cond_1

    .line 1528
    move-object/from16 v14, p0

    .line 1687
    :cond_0
    :goto_0
    return-object v14

    .line 1529
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Reference;->isAbsolute()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Reference;->isHierarchical()Z

    move-result v17

    if-nez v17, :cond_3

    .line 1530
    :cond_2
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "The reference must have an absolute hierarchical path component"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1532
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/Reference;->isAbsolute()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/Reference;->isHierarchical()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1533
    :cond_4
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "The base reference must have an absolute hierarchical path component"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1535
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1536
    move-object/from16 v14, p0

    goto :goto_0

    .line 1538
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1539
    .local v10, "localPath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1540
    .local v2, "basePath":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1542
    .local v13, "relativePath":Ljava/lang/String;
    if-eqz v2, :cond_7

    if-nez v10, :cond_c

    .line 1543
    :cond_7
    move-object v13, v10

    .line 1667
    :cond_8
    :goto_1
    new-instance v14, Lorg/restlet/data/Reference;

    .end local v14    # "result":Lorg/restlet/data/Reference;
    invoke-direct {v14}, Lorg/restlet/data/Reference;-><init>()V

    .line 1668
    .restart local v14    # "result":Lorg/restlet/data/Reference;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v12

    .line 1669
    .local v12, "query":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Reference;->getFragment()Ljava/lang/String;

    move-result-object v5

    .line 1670
    .local v5, "fragment":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1672
    .local v11, "modified":Z
    if-eqz v12, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 1673
    invoke-virtual {v14, v12}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    .line 1674
    const/4 v11, 0x1

    .line 1677
    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/Reference;->getFragment()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 1678
    invoke-virtual {v14, v5}, Lorg/restlet/data/Reference;->setFragment(Ljava/lang/String;)V

    .line 1679
    const/4 v11, 0x1

    .line 1682
    :cond_a
    if-eqz v11, :cond_b

    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1683
    :cond_b
    invoke-virtual {v14, v13}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1546
    .end local v5    # "fragment":Ljava/lang/String;
    .end local v11    # "modified":Z
    .end local v12    # "query":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    .line 1547
    .local v4, "diffFound":Z
    const/4 v9, -0x1

    .line 1548
    .local v9, "lastSlashIndex":I
    const/4 v6, 0x0

    .line 1551
    .local v6, "i":I
    :goto_2
    if-nez v4, :cond_f

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_f

    .line 1552
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1554
    .local v3, "current":C
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    if-eq v3, v0, :cond_d

    .line 1555
    const/4 v4, 0x1

    goto :goto_2

    .line 1557
    :cond_d
    const/16 v17, 0x2f

    move/from16 v0, v17

    if-ne v3, v0, :cond_e

    .line 1558
    move v9, v6

    .line 1560
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1564
    .end local v3    # "current":C
    :cond_f
    if-nez v4, :cond_1c

    .line 1565
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1567
    const-string v13, "."

    goto/16 :goto_1

    .line 1568
    :cond_10
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ne v6, v0, :cond_18

    .line 1570
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 1571
    add-int/lit8 v17, v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1573
    const-string v13, "."

    goto/16 :goto_1

    .line 1579
    :cond_11
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1582
    .local v15, "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 1583
    .local v16, "segments":I
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .local v7, "j":I
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_12

    .line 1585
    add-int/lit8 v16, v16, 0x1

    .line 1583
    const/16 v17, 0x2f

    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    goto :goto_3

    .line 1588
    :cond_12
    const/4 v7, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v7, v0, :cond_13

    .line 1589
    const-string v17, "../"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1591
    :cond_13
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1592
    .local v8, "lastLocalSlash":I
    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1596
    goto/16 :goto_1

    .line 1602
    .end local v7    # "j":I
    .end local v8    # "lastLocalSlash":I
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "segments":I
    :cond_14
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1605
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 1606
    .restart local v16    # "segments":I
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .restart local v7    # "j":I
    :goto_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_15

    .line 1608
    add-int/lit8 v16, v16, 0x1

    .line 1606
    const/16 v17, 0x2f

    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    goto :goto_5

    .line 1611
    :cond_15
    const/4 v7, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v7, v0, :cond_17

    .line 1612
    if-lez v7, :cond_16

    .line 1613
    const-string v17, "/.."

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1615
    :cond_16
    const-string v17, ".."

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1617
    :cond_17
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1619
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1620
    const-string v13, "."

    goto/16 :goto_1

    .line 1623
    .end local v7    # "j":I
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "segments":I
    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ne v6, v0, :cond_8

    .line 1624
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 1625
    add-int/lit8 v17, v6, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 1627
    const-string v13, "."

    goto/16 :goto_1

    .line 1631
    :cond_19
    add-int/lit8 v17, v6, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 1634
    :cond_1a
    add-int/lit8 v17, v6, -0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_1b

    .line 1637
    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 1639
    :cond_1b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ".."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 1648
    :cond_1c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1651
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 1652
    .restart local v16    # "segments":I
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .restart local v7    # "j":I
    :goto_8
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_1d

    .line 1654
    add-int/lit8 v16, v16, 0x1

    .line 1652
    const/16 v17, 0x2f

    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    goto :goto_8

    .line 1657
    :cond_1d
    const/4 v7, 0x0

    :goto_9
    move/from16 v0, v16

    if-ge v7, v0, :cond_1e

    .line 1658
    const-string v17, "../"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1660
    :cond_1e
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1
.end method

.method public getRemainingPart()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1706
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/restlet/data/Reference;->getRemainingPart(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemainingPart(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1719
    invoke-virtual {p0, v0, v0}, Lorg/restlet/data/Reference;->getRemainingPart(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemainingPart(ZZ)Ljava/lang/String;
    .locals 5
    .param p1, "decode"    # Z
    .param p2, "query"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1735
    const/4 v2, 0x0

    .line 1736
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0, p2, v4}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1738
    .local v0, "all":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1739
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v3

    invoke-virtual {v3, p2, v4}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1741
    .local v1, "base":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1742
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1748
    .end local v1    # "base":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v2}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 1745
    .restart local v2    # "result":Ljava/lang/String;
    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1758
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasScheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1764
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScheme(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1777
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSchemeProtocol()Lorg/restlet/data/Protocol;
    .locals 1

    .prologue
    .line 1786
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Protocol;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1796
    const/4 v0, 0x0

    .line 1798
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasScheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1800
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1802
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1810
    :cond_0
    :goto_0
    return-object v0

    .line 1806
    :cond_1
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSchemeSpecificPart(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 1823
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSegments()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x2

    .line 1835
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1837
    .local v2, "path":Ljava/lang/String;
    const/4 v4, -0x2

    .line 1840
    .local v4, "start":I
    if-eqz v2, :cond_4

    .line 1841
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1842
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1844
    .local v0, "current":C
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_2

    .line 1845
    if-ne v4, v6, :cond_1

    .line 1848
    move v4, v1

    .line 1841
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1851
    :cond_1
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1852
    move v4, v1

    goto :goto_1

    .line 1855
    :cond_2
    if-ne v4, v6, :cond_0

    .line 1857
    const/4 v4, -0x1

    goto :goto_1

    .line 1864
    .end local v0    # "current":C
    :cond_3
    if-eq v4, v6, :cond_4

    .line 1866
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1870
    .end local v1    # "i":I
    :cond_4
    return-object v3
.end method

.method public getSegments(Z)Ljava/util/List;
    .locals 3
    .param p1, "decode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1883
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getSegments()Ljava/util/List;

    move-result-object v1

    .line 1885
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1886
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1887
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1891
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public getTargetRef()Lorg/restlet/data/Reference;
    .locals 12

    .prologue
    .line 1907
    const/4 v8, 0x0

    .line 1910
    .local v8, "result":Lorg/restlet/data/Reference;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    if-eqz v9, :cond_a

    .line 1911
    const/4 v2, 0x0

    .line 1913
    .local v2, "baseReference":Lorg/restlet/data/Reference;
    iget-object v9, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    invoke-virtual {v9}, Lorg/restlet/data/Reference;->isAbsolute()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1914
    iget-object v2, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    .line 1919
    :goto_0
    invoke-virtual {v2}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1920
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The base reference must have an absolute hierarchical path component"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1916
    :cond_0
    iget-object v9, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    invoke-virtual {v9}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v2

    goto :goto_0

    .line 1925
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1926
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1927
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v7

    .line 1928
    .local v7, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getFragment()Ljava/lang/String;

    move-result-object v3

    .line 1931
    .local v3, "fragment":Ljava/lang/String;
    new-instance v8, Lorg/restlet/data/Reference;

    .end local v8    # "result":Lorg/restlet/data/Reference;
    invoke-direct {v8}, Lorg/restlet/data/Reference;-><init>()V

    .line 1932
    .restart local v8    # "result":Lorg/restlet/data/Reference;
    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/restlet/data/Reference;->setScheme(Ljava/lang/String;)V

    .line 1934
    if-eqz v0, :cond_2

    .line 1935
    invoke-virtual {v8, v0}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {v8, v6}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v8, v7}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    .line 1978
    :goto_1
    invoke-virtual {v8, v3}, Lorg/restlet/data/Reference;->setFragment(Ljava/lang/String;)V

    .line 1989
    .end local v0    # "authority":Ljava/lang/String;
    .end local v2    # "baseReference":Lorg/restlet/data/Reference;
    .end local v3    # "fragment":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "query":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Lorg/restlet/data/Reference;->normalize()Lorg/restlet/data/Reference;

    .line 1991
    return-object v8

    .line 1939
    .restart local v0    # "authority":Ljava/lang/String;
    .restart local v2    # "baseReference":Lorg/restlet/data/Reference;
    .restart local v3    # "fragment":Ljava/lang/String;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "query":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    .line 1941
    if-eqz v6, :cond_3

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1942
    :cond_3
    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    .line 1944
    if-eqz v7, :cond_4

    .line 1945
    invoke-virtual {v8, v7}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    goto :goto_1

    .line 1947
    :cond_4
    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    goto :goto_1

    .line 1950
    :cond_5
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1951
    invoke-virtual {v8, v6}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    .line 1974
    :goto_3
    invoke-virtual {v8, v7}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    goto :goto_1

    .line 1953
    :cond_6
    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1954
    .local v1, "basePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1956
    .local v5, "mergedPath":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    if-eqz v1, :cond_7

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1958
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1971
    :goto_4
    invoke-virtual {v8, v5}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    goto :goto_3

    .line 1962
    :cond_8
    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1963
    .local v4, "lastSlash":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_9

    .line 1964
    move-object v5, v6

    goto :goto_4

    .line 1966
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 1979
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "basePath":Ljava/lang/String;
    .end local v2    # "baseReference":Lorg/restlet/data/Reference;
    .end local v3    # "fragment":Ljava/lang/String;
    .end local v4    # "lastSlash":I
    .end local v5    # "mergedPath":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "query":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1981
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Relative references are only usable when a base reference is set."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1985
    :cond_b
    new-instance v8, Lorg/restlet/data/Reference;

    .end local v8    # "result":Lorg/restlet/data/Reference;
    iget-object v9, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .restart local v8    # "result":Lorg/restlet/data/Reference;
    goto/16 :goto_2
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2003
    const/4 v2, 0x0

    .line 2004
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2007
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2009
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2010
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2014
    .end local v1    # "index":I
    :cond_0
    return-object v2
.end method

.method public getUserInfo(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 2027
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasExtensions()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 2038
    const/4 v4, 0x0

    .line 2041
    .local v4, "result":Z
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2042
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2043
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getLastSegment()Ljava/lang/String;

    move-result-object v1

    .line 2045
    .local v1, "lastSegment":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2046
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2047
    .local v0, "extensionsIndex":I
    const/16 v5, 0x3b

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2048
    .local v2, "matrixIndex":I
    if-eq v0, v6, :cond_3

    if-eq v2, v6, :cond_1

    if-ge v0, v2, :cond_3

    :cond_1
    const/4 v4, 0x1

    .line 2053
    .end local v0    # "extensionsIndex":I
    .end local v1    # "lastSegment":Ljava/lang/String;
    .end local v2    # "matrixIndex":I
    :cond_2
    :goto_0
    return v4

    .line 2048
    .restart local v0    # "extensionsIndex":I
    .restart local v1    # "lastSegment":Ljava/lang/String;
    .restart local v2    # "matrixIndex":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hasFragment()Z
    .locals 2

    .prologue
    .line 2062
    iget v0, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMatrix()Z
    .locals 2

    .prologue
    .line 2082
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 2091
    iget v0, p0, Lorg/restlet/data/Reference;->queryIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScheme()Z
    .locals 2

    .prologue
    .line 2100
    iget v0, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 2109
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEquivalentTo(Lorg/restlet/data/Reference;)Z
    .locals 2
    .param p1, "ref"    # Lorg/restlet/data/Reference;

    .prologue
    .line 2121
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Reference;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHierarchical()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2130
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isOpaque()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2139
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isParent(Lorg/restlet/data/Reference;)Z
    .locals 3
    .param p1, "childRef"    # Lorg/restlet/data/Reference;

    .prologue
    const/4 v2, 0x0

    .line 2152
    const/4 v0, 0x0

    .line 2154
    .local v0, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/data/Reference;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2155
    invoke-virtual {p1, v2, v2}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v2}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 2159
    :cond_0
    return v0
.end method

.method public isRelative()Z
    .locals 1

    .prologue
    .line 2168
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public normalize()Lorg/restlet/data/Reference;
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 2180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2181
    .local v5, "output":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2182
    .local v3, "input":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 2184
    .local v6, "path":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2185
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_c

    .line 2192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lt v7, v11, :cond_1

    invoke-virtual {v3, v9, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "../"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2193
    invoke-virtual {v3, v9, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2194
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lt v7, v10, :cond_2

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "./"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2196
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2202
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lt v7, v11, :cond_3

    invoke-virtual {v3, v9, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/./"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2204
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2205
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v7, v10, :cond_4

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2207
    invoke-virtual {v3, v12, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2214
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_5

    const/4 v7, 0x4

    invoke-virtual {v3, v9, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/../"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2216
    invoke-virtual {v3, v9, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2217
    invoke-direct {p0, v5}, Lorg/restlet/data/Reference;->removeLastSegment(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 2218
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v7, v11, :cond_6

    invoke-virtual {v3, v9, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/.."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2220
    invoke-virtual {v3, v12, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2221
    invoke-direct {p0, v5}, Lorg/restlet/data/Reference;->removeLastSegment(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 2226
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v7, v12, :cond_7

    invoke-virtual {v3, v9, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2227
    invoke-virtual {v3, v9, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2228
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v7, v10, :cond_8

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2230
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2238
    :cond_8
    const/4 v4, -0x1

    .line 2239
    .local v4, "max":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ne v4, v13, :cond_a

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_a

    .line 2240
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_9

    .line 2241
    move v4, v2

    .line 2239
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2245
    :cond_a
    if-eq v4, v13, :cond_b

    .line 2247
    invoke-virtual {v3, v9, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    invoke-virtual {v3, v9, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2251
    :cond_b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2252
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v3, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2258
    .end local v2    # "i":I
    .end local v4    # "max":I
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/restlet/data/Reference;->setScheme(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getHostDomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/restlet/data/Reference;->setHostDomain(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getHostPort()I

    move-result v1

    .line 2267
    .local v1, "hostPort":I
    if-eq v1, v13, :cond_d

    .line 2268
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/restlet/data/Protocol;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v0

    .line 2270
    .local v0, "defaultPort":I
    if-ne v1, v0, :cond_d

    .line 2271
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/restlet/data/Reference;->setHostPort(Ljava/lang/Integer;)V

    .line 2275
    .end local v0    # "defaultPort":I
    :cond_d
    return-object p0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 7
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 2309
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getRelativePart()Ljava/lang/String;

    move-result-object v3

    .line 2312
    .local v3, "oldPart":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    .line 2314
    .local v1, "newAuthority":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_2

    .line 2315
    move-object v2, v1

    .line 2333
    .local v2, "newPart":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2334
    invoke-virtual {p0, v2}, Lorg/restlet/data/Reference;->setSchemeSpecificPart(Ljava/lang/String;)V

    .line 2338
    :goto_3
    return-void

    .line 2309
    .end local v1    # "newAuthority":Ljava/lang/String;
    .end local v2    # "newPart":Ljava/lang/String;
    .end local v3    # "oldPart":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2312
    .restart local v3    # "oldPart":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2316
    .restart local v1    # "newAuthority":Ljava/lang/String;
    :cond_2
    const-string v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2317
    const/16 v4, 0x2f

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2319
    .local v0, "index":I
    if-eq v0, v6, :cond_3

    .line 2320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "newPart":Ljava/lang/String;
    goto :goto_2

    .line 2322
    .end local v2    # "newPart":Ljava/lang/String;
    :cond_3
    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2323
    if-eq v0, v6, :cond_4

    .line 2324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "newPart":Ljava/lang/String;
    goto :goto_2

    .line 2326
    .end local v2    # "newPart":Ljava/lang/String;
    :cond_4
    move-object v2, v1

    .restart local v2    # "newPart":Ljava/lang/String;
    goto :goto_2

    .line 2330
    .end local v0    # "index":I
    .end local v2    # "newPart":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "newPart":Ljava/lang/String;
    goto :goto_2

    .line 2336
    :cond_6
    invoke-virtual {p0, v2}, Lorg/restlet/data/Reference;->setRelativePart(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setBaseRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 2357
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/data/Reference;->setBaseRef(Lorg/restlet/data/Reference;)V

    .line 2358
    return-void
.end method

.method public setBaseRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "baseRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 2347
    iput-object p1, p0, Lorg/restlet/data/Reference;->baseRef:Lorg/restlet/data/Reference;

    .line 2348
    return-void
.end method

.method public setExtensions(Ljava/lang/String;)V
    .locals 8
    .param p1, "extensions"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x2e

    .line 2376
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getLastSegment()Ljava/lang/String;

    move-result-object v1

    .line 2378
    .local v1, "lastSegment":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 2379
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2380
    .local v0, "extensionIndex":I
    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2381
    .local v2, "matrixIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2383
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eq v0, v6, :cond_2

    .line 2385
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2387
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 2388
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2391
    :cond_0
    if-eq v2, v6, :cond_1

    .line 2392
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/restlet/data/Reference;->setLastSegment(Ljava/lang/String;)V

    .line 2418
    .end local v0    # "extensionIndex":I
    .end local v2    # "matrixIndex":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 2396
    .restart local v0    # "extensionIndex":I
    .restart local v2    # "matrixIndex":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 2397
    if-eq v2, v6, :cond_3

    .line 2400
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2405
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2409
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2416
    .end local v0    # "extensionIndex":I
    .end local v2    # "matrixIndex":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/restlet/data/Reference;->setLastSegment(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setExtensions([Ljava/lang/String;)V
    .locals 4
    .param p1, "extensions"    # [Ljava/lang/String;

    .prologue
    .line 2430
    const/4 v0, 0x0

    .line 2432
    .local v0, "exts":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 2433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2435
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 2436
    if-lez v1, :cond_0

    .line 2437
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2440
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2443
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2446
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p0, v0}, Lorg/restlet/data/Reference;->setExtensions(Ljava/lang/String;)V

    .line 2447
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x23

    .line 2459
    invoke-direct {p0, p1}, Lorg/restlet/data/Reference;->encodeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2461
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal \'#\' character detected in parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2466
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2468
    if-eqz p1, :cond_2

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    .line 2488
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/restlet/data/Reference;->updateIndexes()V

    .line 2489
    return-void

    .line 2472
    :cond_2
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0

    .line 2477
    :cond_3
    if-eqz p1, :cond_1

    .line 2478
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0

    .line 2481
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHostDomain(Ljava/lang/String;)V
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2498
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2500
    .local v0, "authority":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2501
    invoke-virtual {p0, p1}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    .line 2539
    :goto_0
    return-void

    .line 2503
    :cond_0
    if-nez p1, :cond_2

    .line 2504
    const-string p1, ""

    .line 2513
    :goto_1
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2514
    .local v3, "indexUI":I
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2515
    .local v1, "indexIPV6":I
    const/16 v4, 0x3a

    if-ne v1, v5, :cond_1

    move v1, v3

    .end local v1    # "indexIPV6":I
    :cond_1
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2518
    .local v2, "indexP":I
    if-eq v3, v5, :cond_4

    .line 2520
    if-eq v2, v5, :cond_3

    .line 2522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    goto :goto_0

    .line 2508
    .end local v2    # "indexP":I
    .end local v3    # "indexUI":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2526
    .restart local v2    # "indexP":I
    .restart local v3    # "indexUI":I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    goto :goto_0

    .line 2530
    :cond_4
    if-eq v2, v5, :cond_5

    .line 2532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    goto :goto_0

    .line 2535
    :cond_5
    invoke-virtual {p0, p1}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHostPort(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "port"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, -0x1

    .line 2551
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2553
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2556
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2557
    .local v3, "indexUI":I
    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2558
    .local v2, "indexIPV6":I
    const/16 v5, 0x3a

    if-ne v2, v7, :cond_0

    .end local v3    # "indexUI":I
    :goto_0
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 2560
    .local v1, "index":I
    if-nez p1, :cond_1

    const-string v4, ""

    .line 2562
    .local v4, "newPort":Ljava/lang/String;
    :goto_1
    if-eq v1, v7, :cond_2

    .line 2563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    .line 2571
    :goto_2
    return-void

    .end local v1    # "index":I
    .end local v4    # "newPort":Ljava/lang/String;
    .restart local v3    # "indexUI":I
    :cond_0
    move v3, v2

    .line 2558
    goto :goto_0

    .line 2560
    .end local v3    # "indexUI":I
    .restart local v1    # "index":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2565
    .restart local v4    # "newPort":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    goto :goto_2

    .line 2568
    .end local v1    # "index":I
    .end local v2    # "indexIPV6":I
    .end local v4    # "newPort":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "No authority defined, please define a host name first"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 2583
    invoke-direct {p0, p1}, Lorg/restlet/data/Reference;->encodeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2585
    if-nez p1, :cond_0

    .line 2586
    const-string p1, ""

    .line 2589
    :cond_0
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal \'#\' character detected in parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2594
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    .line 2603
    :goto_0
    invoke-direct {p0}, Lorg/restlet/data/Reference;->updateIndexes()V

    .line 2604
    return-void

    .line 2600
    :cond_2
    iput-object p1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLastSegment(Ljava/lang/String;)V
    .locals 5
    .param p1, "lastSegment"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    .line 2615
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2617
    .local v1, "path":Ljava/lang/String;
    const/4 v0, -0x1

    .line 2619
    .local v0, "lastSlashIndex":I
    if-eqz v1, :cond_0

    .line 2620
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2623
    :cond_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    .line 2628
    :goto_0
    return-void

    .line 2626
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3f

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 2637
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getRelativePart()Ljava/lang/String;

    move-result-object v4

    .line 2639
    .local v4, "oldPart":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 2641
    .local v3, "newPart":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 2642
    if-nez p1, :cond_0

    .line 2643
    const-string p1, ""

    .line 2646
    :cond_0
    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2648
    const/16 v5, 0x2f

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 2650
    .local v1, "index1":I
    if-eq v1, v7, :cond_3

    .line 2652
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2654
    .local v2, "index2":I
    if-eq v2, v7, :cond_2

    .line 2656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2691
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :goto_1
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2692
    invoke-virtual {p0, v3}, Lorg/restlet/data/Reference;->setSchemeSpecificPart(Ljava/lang/String;)V

    .line 2696
    :goto_2
    return-void

    .line 2637
    .end local v3    # "newPart":Ljava/lang/String;
    .end local v4    # "oldPart":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2660
    .restart local v1    # "index1":I
    .restart local v2    # "index2":I
    .restart local v3    # "newPart":Ljava/lang/String;
    .restart local v4    # "oldPart":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2664
    .end local v2    # "index2":I
    :cond_3
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2666
    .restart local v2    # "index2":I
    if-eq v2, v7, :cond_4

    .line 2668
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2672
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2677
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :cond_5
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2679
    .local v0, "index":I
    if-eq v0, v7, :cond_6

    .line 2681
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2684
    :cond_6
    move-object v3, p1

    goto :goto_1

    .line 2688
    .end local v0    # "index":I
    :cond_7
    move-object v3, p1

    goto :goto_1

    .line 2694
    :cond_8
    invoke-virtual {p0, v3}, Lorg/restlet/data/Reference;->setRelativePart(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setProtocol(Lorg/restlet/data/Protocol;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 2705
    invoke-virtual {p1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/data/Reference;->setScheme(Ljava/lang/String;)V

    .line 2706
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3f

    const/4 v1, 0x0

    .line 2715
    invoke-direct {p0, p1}, Lorg/restlet/data/Reference;->encodeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2716
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2718
    .local v0, "emptyQueryString":Z
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2720
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2722
    if-nez v0, :cond_3

    .line 2723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v4, p0, Lorg/restlet/data/Reference;->queryIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v3, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    .line 2769
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/restlet/data/Reference;->updateIndexes()V

    .line 2770
    return-void

    .end local v0    # "emptyQueryString":Z
    :cond_2
    move v0, v1

    .line 2716
    goto :goto_0

    .line 2728
    .restart local v0    # "emptyQueryString":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v4, p0, Lorg/restlet/data/Reference;->queryIndex:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v3, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_1

    .line 2734
    :cond_4
    if-nez v0, :cond_5

    .line 2735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v4, p0, Lorg/restlet/data/Reference;->queryIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_1

    .line 2738
    :cond_5
    iget-object v2, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v3, p0, Lorg/restlet/data/Reference;->queryIndex:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_1

    .line 2744
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2746
    if-nez v0, :cond_1

    .line 2747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v4, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v3, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto/16 :goto_1

    .line 2757
    :cond_7
    if-nez v0, :cond_1

    .line 2758
    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 2759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto/16 :goto_1

    .line 2761
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public setRelativePart(Ljava/lang/String;)V
    .locals 3
    .param p1, "relativePart"    # Ljava/lang/String;

    .prologue
    .line 2779
    invoke-direct {p0, p1}, Lorg/restlet/data/Reference;->encodeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2781
    if-nez p1, :cond_0

    .line 2782
    const-string p1, ""

    .line 2785
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasScheme()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2787
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->queryIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    .line 2801
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/restlet/data/Reference;->updateIndexes()V

    .line 2802
    return-void

    .line 2791
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0

    .line 2797
    :cond_3
    iput-object p1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3a

    .line 2811
    invoke-direct {p0, p1}, Lorg/restlet/data/Reference;->encodeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2813
    if-eqz p1, :cond_0

    .line 2816
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2819
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasScheme()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2821
    if-eqz p1, :cond_2

    .line 2822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    .line 2839
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/restlet/data/Reference;->updateIndexes()V

    .line 2840
    return-void

    .line 2825
    :cond_2
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0

    .line 2830
    :cond_3
    if-eqz p1, :cond_1

    .line 2831
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 2832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0

    .line 2834
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSchemeSpecificPart(Ljava/lang/String;)V
    .locals 4
    .param p1, "schemeSpecificPart"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2849
    invoke-direct {p0, p1}, Lorg/restlet/data/Reference;->encodeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2851
    if-nez p1, :cond_0

    .line 2852
    const-string p1, ""

    .line 2855
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasScheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2857
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    .line 2880
    :goto_0
    invoke-direct {p0}, Lorg/restlet/data/Reference;->updateIndexes()V

    .line 2881
    return-void

    .line 2865
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->schemeIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0

    .line 2870
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0

    .line 2876
    :cond_3
    iput-object p1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSegments(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2891
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2893
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2894
    .local v2, "segment":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2897
    .end local v2    # "segment":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/data/Reference;->setPath(Ljava/lang/String;)V

    .line 2898
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "userInfo"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x40

    .line 2910
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2912
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2913
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2914
    .local v1, "index":I
    if-nez p1, :cond_0

    const-string v2, ""

    .line 2916
    .local v2, "newUserInfo":Ljava/lang/String;
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    .line 2925
    :goto_1
    return-void

    .line 2914
    .end local v2    # "newUserInfo":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2919
    .restart local v2    # "newUserInfo":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/data/Reference;->setAuthority(Ljava/lang/String;)V

    goto :goto_1

    .line 2922
    .end local v1    # "index":I
    .end local v2    # "newUserInfo":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No authority defined, please define a host name first"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    return-object v0
.end method

.method public toString(ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Z
    .param p2, "fragment"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2947
    if-eqz p1, :cond_2

    .line 2948
    if-eqz p2, :cond_0

    .line 2949
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    .line 2986
    :goto_0
    return-object v0

    .line 2952
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2953
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2955
    :cond_1
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0

    .line 2958
    :cond_2
    if-eqz p2, :cond_5

    .line 2960
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2962
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/data/Reference;->queryIndex:I

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2969
    :cond_3
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->queryIndex:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2973
    :cond_4
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0

    .line 2977
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2979
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->queryIndex:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2981
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2983
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    iget v1, p0, Lorg/restlet/data/Reference;->fragmentIndex:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2986
    :cond_7
    iget-object v0, p0, Lorg/restlet/data/Reference;->internalRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 2997
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toUrl()Ljava/net/URL;
    .locals 4

    .prologue
    .line 3008
    const/4 v1, 0x0

    .line 3011
    .local v1, "result":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .end local v1    # "result":Ljava/net/URL;
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3016
    .restart local v1    # "result":Ljava/net/URL;
    return-object v1

    .line 3012
    .end local v1    # "result":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 3013
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed URL exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
