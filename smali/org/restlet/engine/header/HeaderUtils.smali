.class public Lorg/restlet/engine/header/HeaderUtils;
.super Ljava/lang/Object;
.source "HeaderUtils.java"


# static fields
.field private static final STANDARD_HEADERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSUPPORTED_STANDARD_HEADERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    new-instance v0, Lorg/restlet/engine/util/CaseInsensitiveHashSet;

    const/16 v1, 0x2f

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Accept"

    aput-object v2, v1, v4

    const-string v2, "Accept-Charset"

    aput-object v2, v1, v5

    const-string v2, "Accept-Encoding"

    aput-object v2, v1, v6

    const-string v2, "Accept-Language"

    aput-object v2, v1, v7

    const-string v2, "Accept-Ranges"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "Age"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Allow"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Authentication-Info"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Authorization"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Cache-Control"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Connection"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Content-Disposition"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Content-Encoding"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Content-Language"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Content-Length"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "Content-Location"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Content-MD5"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "Content-Range"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Content-Type"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "Cookie"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "Date"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ETag"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "Expect"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "Expires"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "From"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "Host"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "If-Match"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "If-Modified-Since"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "If-None-Match"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "If-Range"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "If-Unmodified-Since"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "Last-Modified"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "Location"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "Max-Forwards"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "Proxy-Authenticate"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "Proxy-Authorization"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "Range"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "Referer"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "Retry-After"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "Server"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "Set-Cookie"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "Set-Cookie2"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "User-Agent"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "Vary"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "Via"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "Warning"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "WWW-Authenticate"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/engine/util/CaseInsensitiveHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/header/HeaderUtils;->STANDARD_HEADERS:Ljava/util/Set;

    .line 128
    new-instance v0, Lorg/restlet/engine/util/CaseInsensitiveHashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Pragma"

    aput-object v2, v1, v4

    const-string v2, "Trailer"

    aput-object v2, v1, v5

    const-string v2, "Transfer-Encoding"

    aput-object v2, v1, v6

    const-string v2, "TE"

    aput-object v2, v1, v7

    const-string v2, "Upgrade"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/engine/util/CaseInsensitiveHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/header/HeaderUtils;->UNSUPPORTED_STANDARD_HEADERS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    return-void
.end method

.method public static addEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V
    .locals 4
    .param p0, "entity"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/representation/Representation;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 148
    :cond_0
    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 154
    :cond_1
    :goto_0
    if-eqz p0, :cond_9

    .line 155
    const-string v0, "Content-Encoding"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/EncodingWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 157
    const-string v0, "Content-Language"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/LanguageWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 160
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    const-string v0, "Content-Location"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 165
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getDigest()Lorg/restlet/data/Digest;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "MD5"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getDigest()Lorg/restlet/data/Digest;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Digest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    const-string v0, "Content-MD5"

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getDigest()Lorg/restlet/data/Digest;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Digest;->getValue()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/restlet/engine/util/Base64;->encode([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 174
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 175
    const-string v0, "Content-Range"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/restlet/engine/header/RangeWriter;->write(Lorg/restlet/data/Range;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 180
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 181
    const-string v0, "Content-Type"

    invoke-static {p0}, Lorg/restlet/engine/header/ContentType;->writeHeader(Lorg/restlet/representation/Representation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 185
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 186
    const-string v0, "Expires"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/DateWriter;->write(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 190
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 191
    const-string v0, "Last-Modified"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getModificationDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/DateWriter;->write(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 195
    :cond_7
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getTag()Lorg/restlet/data/Tag;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 196
    const-string v0, "ETag"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getTag()Lorg/restlet/data/Tag;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/TagWriter;->write(Lorg/restlet/data/Tag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 200
    :cond_8
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getDisposition()Lorg/restlet/data/Disposition;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "none"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getDisposition()Lorg/restlet/data/Disposition;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Disposition;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 203
    const-string v0, "Content-Disposition"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getDisposition()Lorg/restlet/data/Disposition;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/DispositionWriter;->write(Lorg/restlet/data/Disposition;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 208
    :cond_9
    return-void

    .line 149
    :cond_a
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "Content-Length"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    goto/16 :goto_0
.end method

.method public static addExtensionHeaders(Lorg/restlet/util/Series;Lorg/restlet/util/Series;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "existingHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    .local p1, "additionalHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-eqz p1, :cond_2

    .line 221
    invoke-virtual {p1}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/header/Header;

    .line 222
    .local v1, "param":Lorg/restlet/engine/header/Header;
    sget-object v2, Lorg/restlet/engine/header/HeaderUtils;->STANDARD_HEADERS:Ljava/util/Set;

    invoke-virtual {v1}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Addition of the standard header \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not allowed. Please use the equivalent property in the Restlet API."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    sget-object v2, Lorg/restlet/engine/header/HeaderUtils;->UNSUPPORTED_STANDARD_HEADERS:Ljava/util/Set;

    invoke-virtual {v1}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Addition of the standard header \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is discouraged as a future version of the Restlet API will directly support it."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "param":Lorg/restlet/engine/header/Header;
    :cond_2
    return-void
.end method

.method public static addGeneralHeaders(Lorg/restlet/Message;Lorg/restlet/util/Series;)V
    .locals 2
    .param p0, "message"    # Lorg/restlet/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Message;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const-string v0, "Cache-Control"

    invoke-virtual {p0}, Lorg/restlet/Message;->getCacheDirectives()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/CacheDirectiveWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 257
    invoke-virtual {p0}, Lorg/restlet/Message;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/restlet/Message;->setDate(Ljava/util/Date;)V

    .line 261
    :cond_0
    const-string v0, "Date"

    invoke-virtual {p0}, Lorg/restlet/Message;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/DateWriter;->write(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 264
    const-string v0, "Via"

    invoke-virtual {p0}, Lorg/restlet/Message;->getRecipientsInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/RecipientInfoWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 267
    const-string v0, "Warning"

    invoke-virtual {p0}, Lorg/restlet/Message;->getWarnings()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/WarningWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 269
    return-void
.end method

.method public static addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V
    .locals 5
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "headerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 286
    :try_start_0
    invoke-virtual {p2, p0, p1}, Lorg/restlet/util/Series;->add(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to format the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " header"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static addNotModifiedEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V
    .locals 2
    .param p0, "entity"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/representation/Representation;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-eqz p0, :cond_1

    .line 306
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getTag()Lorg/restlet/data/Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "ETag"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getTag()Lorg/restlet/data/Tag;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/TagWriter;->write(Lorg/restlet/data/Tag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    const-string v0, "Content-Location"

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 317
    :cond_1
    return-void
.end method

.method public static addRequestHeaders(Lorg/restlet/Request;Lorg/restlet/util/Series;)V
    .locals 13
    .param p0, "request"    # Lorg/restlet/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Request;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const/4 v12, -0x1

    .line 330
    invoke-virtual {p0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v3

    .line 332
    .local v3, "clientInfo":Lorg/restlet/data/ClientInfo;
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    .line 333
    const-string v9, "Accept"

    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/PreferenceWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 341
    :goto_0
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 342
    const-string v9, "Accept-Charset"

    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/PreferenceWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 347
    :cond_0
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 348
    const-string v9, "Accept-Encoding"

    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/PreferenceWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 353
    :cond_1
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 354
    const-string v9, "Accept-Language"

    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/PreferenceWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 359
    :cond_2
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getExpectations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 360
    const-string v9, "Expect"

    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getExpectations()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/ExpectationWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 365
    :cond_3
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getFrom()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 366
    const-string v9, "From"

    invoke-virtual {p0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/data/ClientInfo;->getFrom()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 372
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v6

    .line 375
    .local v6, "hostRef":Lorg/restlet/data/Reference;
    :goto_1
    invoke-virtual {v6}, Lorg/restlet/data/Reference;->getHostDomain()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 376
    invoke-virtual {v6}, Lorg/restlet/data/Reference;->getHostDomain()Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "host":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/restlet/data/Reference;->getHostPort()I

    move-result v7

    .line 379
    .local v7, "hostRefPortValue":I
    if-eq v7, v12, :cond_5

    invoke-virtual {p0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v9

    if-eq v7, v9, :cond_5

    .line 382
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 385
    :cond_5
    const-string v9, "Host"

    invoke-static {v9, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 388
    .end local v5    # "host":Ljava/lang/String;
    .end local v7    # "hostRefPortValue":I
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v4

    .line 389
    .local v4, "conditions":Lorg/restlet/data/Conditions;
    const-string v9, "If-Match"

    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getMatch()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/TagWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 391
    const-string v9, "If-None-Match"

    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getNoneMatch()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/TagWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 394
    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getModifiedSince()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 395
    const-string v9, "If-Modified-Since"

    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getModifiedSince()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/DateWriter;->write(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 399
    :cond_7
    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getRangeTag()Lorg/restlet/data/Tag;

    move-result-object v9

    if-eqz v9, :cond_13

    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getRangeDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 401
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "Unable to format the HTTP If-Range header due to the presence of both entity tag and modification date."

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 412
    :cond_8
    :goto_2
    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getUnmodifiedSince()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 413
    const-string v9, "If-Unmodified-Since"

    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getUnmodifiedSince()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/DateWriter;->write(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 417
    :cond_9
    invoke-virtual {p0}, Lorg/restlet/Request;->getMaxForwards()I

    move-result v9

    if-le v9, v12, :cond_a

    .line 418
    const-string v9, "Max-Forwards"

    invoke-virtual {p0}, Lorg/restlet/Request;->getMaxForwards()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 422
    :cond_a
    invoke-virtual {p0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 423
    const-string v9, "Range"

    invoke-virtual {p0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/RangeWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 427
    :cond_b
    invoke-virtual {p0}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 428
    const-string v9, "Referer"

    invoke-virtual {p0}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 432
    :cond_c
    invoke-virtual {p0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/data/ClientInfo;->getAgent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 433
    const-string v9, "User-Agent"

    invoke-virtual {p0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/data/ClientInfo;->getAgent()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 440
    :goto_3
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getExpectations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_d

    .line 441
    const-string v9, "Accept-Encoding"

    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/PreferenceWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 450
    :cond_d
    invoke-virtual {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/util/Series;->size()I

    move-result v9

    if-lez v9, :cond_e

    .line 451
    const-string v9, "Cookie"

    invoke-virtual {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/CookieWriter;->write(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 458
    :cond_e
    invoke-virtual {p0}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    const-string v10, "org.restlet.http.headers"

    invoke-interface {v9, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/util/Series;

    .line 460
    .local v0, "additionalHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-static {p1, v0}, Lorg/restlet/engine/header/HeaderUtils;->addExtensionHeaders(Lorg/restlet/util/Series;Lorg/restlet/util/Series;)V

    .line 468
    invoke-virtual {p0}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v2

    .line 470
    .local v2, "challengeResponse":Lorg/restlet/data/ChallengeResponse;
    if-eqz v2, :cond_f

    .line 471
    invoke-static {v2, p0, p1}, Lorg/restlet/engine/security/AuthenticatorUtils;->formatResponse(Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/util/Series;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "authHeader":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 475
    const-string v9, "Authorization"

    invoke-static {v9, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 480
    .end local v1    # "authHeader":Ljava/lang/String;
    :cond_f
    invoke-virtual {p0}, Lorg/restlet/Request;->getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v8

    .line 483
    .local v8, "proxyChallengeResponse":Lorg/restlet/data/ChallengeResponse;
    if-eqz v8, :cond_10

    .line 484
    invoke-static {v8, p0, p1}, Lorg/restlet/engine/security/AuthenticatorUtils;->formatResponse(Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/util/Series;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .restart local v1    # "authHeader":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 488
    const-string v9, "Proxy-Authorization"

    invoke-static {v9, v1, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 492
    .end local v1    # "authHeader":Ljava/lang/String;
    :cond_10
    return-void

    .line 337
    .end local v0    # "additionalHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    .end local v2    # "challengeResponse":Lorg/restlet/data/ChallengeResponse;
    .end local v4    # "conditions":Lorg/restlet/data/Conditions;
    .end local v6    # "hostRef":Lorg/restlet/data/Reference;
    .end local v8    # "proxyChallengeResponse":Lorg/restlet/data/ChallengeResponse;
    :cond_11
    const-string v9, "Accept"

    sget-object v10, Lorg/restlet/data/MediaType;->ALL:Lorg/restlet/data/MediaType;

    invoke-virtual {v10}, Lorg/restlet/data/MediaType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    goto/16 :goto_0

    .line 372
    :cond_12
    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v6

    goto/16 :goto_1

    .line 404
    .restart local v4    # "conditions":Lorg/restlet/data/Conditions;
    .restart local v6    # "hostRef":Lorg/restlet/data/Reference;
    :cond_13
    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getRangeTag()Lorg/restlet/data/Tag;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 405
    const-string v9, "If-Range"

    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getRangeTag()Lorg/restlet/data/Tag;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/TagWriter;->write(Lorg/restlet/data/Tag;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    goto/16 :goto_2

    .line 407
    :cond_14
    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getRangeDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 408
    const-string v9, "If-Range"

    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->getRangeDate()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lorg/restlet/engine/header/DateWriter;->write(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    goto/16 :goto_2

    .line 436
    :cond_15
    const-string v9, "User-Agent"

    const-string v10, "Restlet-Framework/2.1.6"

    invoke-static {v9, v10, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    goto/16 :goto_3
.end method

.method public static addResponseHeaders(Lorg/restlet/Response;Lorg/restlet/util/Series;)V
    .locals 6
    .param p0, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Response;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p0}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ServerInfo;->isAcceptingRanges()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    const-string v4, "Accept-Ranges"

    const-string v5, "bytes"

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Response;->getAge()I

    move-result v4

    if-lez v4, :cond_1

    .line 511
    const-string v4, "Age"

    invoke-virtual {p0}, Lorg/restlet/Response;->getAge()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 515
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v4

    sget-object v5, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {v4, v5}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 517
    :cond_2
    const-string v4, "Allow"

    invoke-virtual {p0}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lorg/restlet/engine/header/MethodWriter;->write(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 521
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/Response;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 523
    const-string v4, "Location"

    invoke-virtual {p0}, Lorg/restlet/Response;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 527
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/Response;->getProxyChallengeRequests()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 528
    invoke-virtual {p0}, Lorg/restlet/Response;->getProxyChallengeRequests()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/data/ChallengeRequest;

    .line 530
    .local v1, "challengeRequest":Lorg/restlet/data/ChallengeRequest;
    const-string v4, "Proxy-Authenticate"

    invoke-static {v1, p0, p1}, Lorg/restlet/engine/security/AuthenticatorUtils;->formatRequest(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Lorg/restlet/util/Series;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    goto :goto_0

    .line 537
    .end local v1    # "challengeRequest":Lorg/restlet/data/ChallengeRequest;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/Response;->getRetryAfter()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 538
    const-string v4, "Retry-After"

    invoke-virtual {p0}, Lorg/restlet/Response;->getRetryAfter()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/restlet/engine/header/DateWriter;->write(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 542
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ServerInfo;->getAgent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 544
    const-string v4, "Server"

    invoke-virtual {p0}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/ServerInfo;->getAgent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 553
    :goto_1
    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ClientInfo;->getAgent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ClientInfo;->getAgent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MSIE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 556
    :cond_7
    const-string v4, "Vary"

    invoke-virtual {p0}, Lorg/restlet/Response;->getDimensions()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lorg/restlet/engine/header/DimensionWriter;->write(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 561
    :cond_8
    invoke-virtual {p0}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 562
    invoke-virtual {p0}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/data/ChallengeRequest;

    .line 564
    .restart local v1    # "challengeRequest":Lorg/restlet/data/ChallengeRequest;
    const-string v4, "WWW-Authenticate"

    invoke-static {v1, p0, p1}, Lorg/restlet/engine/security/AuthenticatorUtils;->formatRequest(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Lorg/restlet/util/Series;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    goto :goto_2

    .line 547
    .end local v1    # "challengeRequest":Lorg/restlet/data/ChallengeRequest;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v4, "Server"

    const-string v5, "Restlet-Framework/2.1.6"

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    goto :goto_1

    .line 576
    :cond_a
    invoke-virtual {p0}, Lorg/restlet/Response;->getAuthenticationInfo()Lorg/restlet/data/AuthenticationInfo;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 577
    const-string v4, "Authentication-Info"

    invoke-virtual {p0}, Lorg/restlet/Response;->getAuthenticationInfo()Lorg/restlet/data/AuthenticationInfo;

    move-result-object v5

    invoke-static {v5}, Lorg/restlet/engine/security/AuthenticatorUtils;->formatAuthenticationInfo(Lorg/restlet/data/AuthenticationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 585
    :cond_b
    invoke-virtual {p0}, Lorg/restlet/Response;->getCookieSettings()Lorg/restlet/util/Series;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/CookieSetting;

    .line 586
    .local v2, "cookieSetting":Lorg/restlet/data/CookieSetting;
    const-string v4, "Set-Cookie"

    invoke-static {v2}, Lorg/restlet/engine/header/CookieSettingWriter;->write(Lorg/restlet/data/CookieSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/restlet/engine/header/HeaderUtils;->addHeader(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/util/Series;)V

    goto :goto_3

    .line 594
    .end local v2    # "cookieSetting":Lorg/restlet/data/CookieSetting;
    :cond_c
    invoke-virtual {p0}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    const-string v5, "org.restlet.http.headers"

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/util/Series;

    .line 596
    .local v0, "additionalHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-static {p1, v0}, Lorg/restlet/engine/header/HeaderUtils;->addExtensionHeaders(Lorg/restlet/util/Series;Lorg/restlet/util/Series;)V

    .line 597
    return-void
.end method

.method public static copyExtensionHeaders(Lorg/restlet/util/Series;Lorg/restlet/Response;)V
    .locals 5
    .param p1, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;",
            "Lorg/restlet/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-eqz p0, :cond_2

    .line 611
    invoke-virtual {p1}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    const-string v4, "org.restlet.http.headers"

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/util/Series;

    .line 613
    .local v0, "extensionHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-nez v0, :cond_0

    .line 614
    new-instance v0, Lorg/restlet/util/Series;

    .end local v0    # "extensionHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const-class v3, Lorg/restlet/engine/header/Header;

    invoke-direct {v0, v3}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .line 615
    .restart local v0    # "extensionHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p1}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    const-string v4, "org.restlet.http.headers"

    invoke-interface {v3, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/header/Header;

    .line 619
    .local v1, "header":Lorg/restlet/engine/header/Header;
    sget-object v3, Lorg/restlet/engine/header/HeaderUtils;->STANDARD_HEADERS:Ljava/util/Set;

    invoke-virtual {v1}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 620
    invoke-virtual {v0, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    .end local v0    # "extensionHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    .end local v1    # "header":Lorg/restlet/engine/header/Header;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public static copyResponseTransportHeaders(Lorg/restlet/util/Series;Lorg/restlet/Response;)V
    .locals 18
    .param p1, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;",
            "Lorg/restlet/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-eqz p0, :cond_12

    .line 637
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/restlet/engine/header/Header;

    .line 638
    .local v8, "header":Lorg/restlet/engine/header/Header;
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Location"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 640
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/restlet/Response;->setLocationRef(Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_1
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Age"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 644
    :try_start_0
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/restlet/Response;->setAge(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v10

    .line 646
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error during Age header parsing. Header: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 651
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Date"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 653
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 655
    .local v6, "date":Ljava/util/Date;
    if-nez v6, :cond_3

    .line 656
    new-instance v6, Ljava/util/Date;

    .end local v6    # "date":Ljava/util/Date;
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 659
    .restart local v6    # "date":Ljava/util/Date;
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/restlet/Response;->setDate(Ljava/util/Date;)V

    goto :goto_0

    .line 660
    .end local v6    # "date":Ljava/util/Date;
    :cond_4
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Retry-After"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 662
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 664
    .local v11, "retryAfter":Ljava/util/Date;
    if-nez v11, :cond_5

    .line 667
    :try_start_1
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 669
    .local v12, "retryAfterSecs":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 671
    .local v3, "calendar":Ljava/util/Calendar;
    const/16 v14, 0xd

    invoke-virtual {v3, v14, v12}, Ljava/util/Calendar;->add(II)V

    .line 673
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 682
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v12    # "retryAfterSecs":I
    :cond_5
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/restlet/Response;->setRetryAfter(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 674
    :catch_1
    move-exception v10

    .line 675
    .restart local v10    # "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error during Retry-After header parsing. Header: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 683
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    .end local v11    # "retryAfter":Ljava/util/Date;
    :cond_6
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Set-Cookie"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Set-Cookie2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 688
    :cond_7
    :try_start_2
    new-instance v4, Lorg/restlet/engine/header/CookieSettingReader;

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Lorg/restlet/engine/header/CookieSettingReader;-><init>(Ljava/lang/String;)V

    .line 690
    .local v4, "cr":Lorg/restlet/engine/header/CookieSettingReader;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getCookieSettings()Lorg/restlet/util/Series;

    move-result-object v14

    invoke-virtual {v4}, Lorg/restlet/engine/header/CookieSettingReader;->readValue()Lorg/restlet/data/CookieSetting;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 691
    .end local v4    # "cr":Lorg/restlet/engine/header/CookieSettingReader;
    :catch_2
    move-exception v7

    .line 692
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error during cookie setting parsing. Header: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 697
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "WWW-Authenticate"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 699
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v14, v1}, Lorg/restlet/engine/security/AuthenticatorUtils;->parseRequest(Lorg/restlet/Response;Ljava/lang/String;Lorg/restlet/util/Series;)Ljava/util/List;

    move-result-object v5

    .line 701
    .local v5, "crs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 702
    .end local v5    # "crs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    :cond_9
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Proxy-Authenticate"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 704
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v14, v1}, Lorg/restlet/engine/security/AuthenticatorUtils;->parseRequest(Lorg/restlet/Response;Ljava/lang/String;Lorg/restlet/util/Series;)Ljava/util/List;

    move-result-object v5

    .line 706
    .restart local v5    # "crs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getProxyChallengeRequests()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 707
    .end local v5    # "crs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    :cond_a
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Authentication-Info"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 709
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/restlet/engine/security/AuthenticatorUtils;->parseAuthenticationInfo(Ljava/lang/String;)Lorg/restlet/data/AuthenticationInfo;

    move-result-object v2

    .line 711
    .local v2, "authenticationInfo":Lorg/restlet/data/AuthenticationInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/restlet/Response;->setAuthenticationInfo(Lorg/restlet/data/AuthenticationInfo;)V

    goto/16 :goto_0

    .line 712
    .end local v2    # "authenticationInfo":Lorg/restlet/data/AuthenticationInfo;
    :cond_b
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Server"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 714
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v14

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/restlet/data/ServerInfo;->setAgent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 715
    :cond_c
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Allow"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 717
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v14

    invoke-static {v8, v14}, Lorg/restlet/engine/header/MethodReader;->addValues(Lorg/restlet/engine/header/Header;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 719
    :cond_d
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Vary"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 721
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getDimensions()Ljava/util/Set;

    move-result-object v14

    invoke-static {v8, v14}, Lorg/restlet/engine/header/DimensionReader;->addValues(Lorg/restlet/engine/header/Header;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 722
    :cond_e
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Via"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 724
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getRecipientsInfo()Ljava/util/List;

    move-result-object v14

    invoke-static {v8, v14}, Lorg/restlet/engine/header/RecipientInfoReader;->addValues(Lorg/restlet/engine/header/Header;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 726
    :cond_f
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Warning"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 728
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getWarnings()Ljava/util/List;

    move-result-object v14

    invoke-static {v8, v14}, Lorg/restlet/engine/header/WarningReader;->addValues(Lorg/restlet/engine/header/Header;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 729
    :cond_10
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Cache-Control"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 731
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getCacheDirectives()Ljava/util/List;

    move-result-object v14

    invoke-static {v8, v14}, Lorg/restlet/engine/header/CacheDirectiveReader;->addValues(Lorg/restlet/engine/header/Header;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 733
    :cond_11
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Accept-Ranges"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 735
    new-instance v13, Lorg/restlet/engine/header/TokenReader;

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/restlet/engine/header/TokenReader;-><init>(Ljava/lang/String;)V

    .line 736
    .local v13, "tr":Lorg/restlet/engine/header/TokenReader;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v14

    invoke-virtual {v13}, Lorg/restlet/engine/header/TokenReader;->readValues()Ljava/util/List;

    move-result-object v15

    const-string v16, "bytes"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v14, v15}, Lorg/restlet/data/ServerInfo;->setAcceptingRanges(Z)V

    goto/16 :goto_0

    .line 741
    .end local v8    # "header":Lorg/restlet/engine/header/Header;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "tr":Lorg/restlet/engine/header/TokenReader;
    :cond_12
    return-void
.end method

.method public static extractEntityHeaders(Ljava/lang/Iterable;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 12
    .param p1, "representation"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;",
            "Lorg/restlet/representation/Representation;",
            ")",
            "Lorg/restlet/representation/Representation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/restlet/engine/header/Header;>;"
    const/4 v11, 0x0

    .line 757
    if-nez p1, :cond_3

    new-instance v6, Lorg/restlet/representation/EmptyRepresentation;

    invoke-direct {v6}, Lorg/restlet/representation/EmptyRepresentation;-><init>()V

    .line 759
    .local v6, "result":Lorg/restlet/representation/Representation;
    :goto_0
    const/4 v2, 0x0

    .line 761
    .local v2, "entityHeaderFound":Z
    if-eqz p0, :cond_f

    .line 762
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/engine/header/Header;

    .line 763
    .local v3, "header":Lorg/restlet/engine/header/Header;
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 765
    new-instance v1, Lorg/restlet/engine/header/ContentType;

    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/restlet/engine/header/ContentType;-><init>(Ljava/lang/String;)V

    .line 766
    .local v1, "contentType":Lorg/restlet/engine/header/ContentType;
    invoke-virtual {v1}, Lorg/restlet/engine/header/ContentType;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 768
    invoke-virtual {v6}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lorg/restlet/engine/header/ContentType;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 770
    :cond_1
    invoke-virtual {v1}, Lorg/restlet/engine/header/ContentType;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 773
    :cond_2
    const/4 v2, 0x1

    .line 774
    goto :goto_1

    .end local v1    # "contentType":Lorg/restlet/engine/header/ContentType;
    .end local v2    # "entityHeaderFound":Z
    .end local v3    # "header":Lorg/restlet/engine/header/Header;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "result":Lorg/restlet/representation/Representation;
    :cond_3
    move-object v6, p1

    .line 757
    goto :goto_0

    .line 774
    .restart local v2    # "entityHeaderFound":Z
    .restart local v3    # "header":Lorg/restlet/engine/header/Header;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "result":Lorg/restlet/representation/Representation;
    :cond_4
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Length"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 776
    const/4 v2, 0x1

    goto :goto_1

    .line 777
    :cond_5
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Expires"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 779
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lorg/restlet/engine/header/HeaderReader;->readDate(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setExpirationDate(Ljava/util/Date;)V

    .line 781
    const/4 v2, 0x1

    goto :goto_1

    .line 782
    :cond_6
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Encoding"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 784
    new-instance v7, Lorg/restlet/engine/header/EncodingReader;

    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/restlet/engine/header/EncodingReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/restlet/engine/header/EncodingReader;->addValues(Ljava/util/Collection;)V

    .line 786
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 787
    :cond_7
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Language"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 789
    new-instance v7, Lorg/restlet/engine/header/LanguageReader;

    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/restlet/engine/header/LanguageReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/restlet/engine/header/LanguageReader;->addValues(Ljava/util/Collection;)V

    .line 791
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 792
    :cond_8
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Last-Modified"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 794
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lorg/restlet/engine/header/HeaderReader;->readDate(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setModificationDate(Ljava/util/Date;)V

    .line 796
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 797
    :cond_9
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ETag"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 799
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/restlet/data/Tag;->parse(Ljava/lang/String;)Lorg/restlet/data/Tag;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setTag(Lorg/restlet/data/Tag;)V

    .line 800
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 801
    :cond_a
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Location"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 803
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setLocationRef(Ljava/lang/String;)V

    .line 804
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 805
    :cond_b
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Disposition"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 808
    :try_start_0
    new-instance v7, Lorg/restlet/engine/header/DispositionReader;

    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/restlet/engine/header/DispositionReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/restlet/engine/header/DispositionReader;->readValue()Lorg/restlet/data/Disposition;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setDisposition(Lorg/restlet/data/Disposition;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 811
    :catch_0
    move-exception v5

    .line 812
    .local v5, "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error during Content-Disposition header parsing. Header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 817
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_c
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Range"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 819
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/restlet/engine/header/RangeReader;->update(Ljava/lang/String;Lorg/restlet/representation/Representation;)V

    .line 821
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 822
    :cond_d
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-MD5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 830
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "base64hash":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_e

    .line 832
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 834
    :cond_e
    new-instance v7, Lorg/restlet/data/Digest;

    const-string v8, "MD5"

    invoke-static {v0}, Lorg/restlet/engine/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/restlet/data/Digest;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setDigest(Lorg/restlet/data/Digest;)V

    .line 837
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 844
    .end local v0    # "base64hash":Ljava/lang/String;
    .end local v3    # "header":Lorg/restlet/engine/header/Header;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_f
    if-nez p1, :cond_10

    if-nez v2, :cond_10

    .line 845
    const/4 v6, 0x0

    .line 848
    :cond_10
    return-object v6
.end method

.method public static getContentLength(Lorg/restlet/util/Series;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const-wide/16 v0, -0x1

    .line 860
    .local v0, "contentLength":J
    if-eqz p0, :cond_1

    .line 862
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/engine/header/Header;

    .line 863
    .local v3, "header":Lorg/restlet/engine/header/Header;
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Content-Length"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 866
    :try_start_0
    invoke-virtual {v3}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 867
    :catch_0
    move-exception v2

    .line 868
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 874
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "header":Lorg/restlet/engine/header/Header;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return-wide v0
.end method

.method public static isAlpha(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 885
    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isUpperCase(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isLowerCase(I)Z

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

.method public static isAsciiChar(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 896
    if-ltz p0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCarriageReturn(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 907
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChunkedEncoding(Lorg/restlet/util/Series;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const/4 v1, 0x0

    .line 918
    .local v1, "result":Z
    if-eqz p0, :cond_0

    .line 919
    const-string v2, "Transfer-Encoding"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "header":Ljava/lang/String;
    const-string v2, "chunked"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 924
    .end local v0    # "header":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static isComma(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 936
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCommentText(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 948
    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectionClose(Lorg/restlet/util/Series;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 959
    .local p0, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const/4 v1, 0x0

    .line 961
    .local v1, "result":Z
    if-eqz p0, :cond_0

    .line 962
    const-string v2, "Connection"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "header":Ljava/lang/String;
    const-string v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 967
    .end local v0    # "header":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static isControlChar(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 978
    if-ltz p0, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDigit(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 989
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

.method public static isDoubleQuote(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1000
    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHorizontalTab(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1011
    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLatin1Char(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1023
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLineFeed(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1047
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLinearWhiteSpace(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1034
    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isCarriageReturn(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isLineFeed(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isHorizontalTab(I)Z

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

.method public static isLowerCase(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1058
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

.method public static isQuoteCharacter(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1069
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQuotedText(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1082
    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isDoubleQuote(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSemiColon(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1094
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSeparator(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1105
    sparse-switch p0, :sswitch_data_0

    .line 1128
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1125
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1105
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSpace(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1140
    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isText(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1152
    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isLatin1Char(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isControlChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isToken(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/CharSequence;

    .prologue
    .line 1164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1165
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1166
    const/4 v1, 0x0

    .line 1170
    :goto_1
    return v1

    .line 1164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1170
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isTokenChar(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1183
    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isAsciiChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/restlet/engine/header/HeaderUtils;->isSeparator(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUpperCase(I)Z
    .locals 1
    .param p0, "character"    # I

    .prologue
    .line 1194
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

.method public static writeCRLF(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1205
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1206
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1207
    return-void
.end method

.method public static writeHeaderLine(Lorg/restlet/engine/header/Header;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "header"    # Lorg/restlet/engine/header/Header;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1220
    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/util/StringUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1221
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1222
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1224
    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/util/StringUtils;->getLatin1Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1228
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1229
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1230
    return-void
.end method
