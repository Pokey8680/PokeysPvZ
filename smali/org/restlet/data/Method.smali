.class public final Lorg/restlet/data/Method;
.super Ljava/lang/Object;
.source "Method.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/restlet/data/Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL:Lorg/restlet/data/Method;

.field private static final BASE_HTTP:Ljava/lang/String; = "http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html"

.field private static final BASE_WEBDAV:Ljava/lang/String; = "http://www.webdav.org/specs/rfc2518.html"

.field public static final CONNECT:Lorg/restlet/data/Method;

.field public static final COPY:Lorg/restlet/data/Method;

.field public static final DELETE:Lorg/restlet/data/Method;

.field public static final GET:Lorg/restlet/data/Method;

.field public static final HEAD:Lorg/restlet/data/Method;

.field public static final LOCK:Lorg/restlet/data/Method;

.field public static final MKCOL:Lorg/restlet/data/Method;

.field public static final MOVE:Lorg/restlet/data/Method;

.field public static final OPTIONS:Lorg/restlet/data/Method;

.field public static final POST:Lorg/restlet/data/Method;

.field public static final PROPFIND:Lorg/restlet/data/Method;

.field public static final PROPPATCH:Lorg/restlet/data/Method;

.field public static final PUT:Lorg/restlet/data/Method;

.field public static final TRACE:Lorg/restlet/data/Method;

.field public static final UNLOCK:Lorg/restlet/data/Method;

.field private static final _methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/restlet/data/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private volatile idempotent:Z

.field private volatile name:Ljava/lang/String;

.field private final replying:Z

.field private final safe:Z

.field private volatile uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/restlet/data/Method;->_methods:Ljava/util/Map;

    .line 57
    new-instance v0, Lorg/restlet/data/Method;

    const-string v1, "*"

    const-string v2, "Pseudo-method use to match all methods."

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Method;->ALL:Lorg/restlet/data/Method;

    .line 71
    new-instance v0, Lorg/restlet/data/Method;

    const-string v1, "CONNECT"

    const-string v2, "Used with a proxy that can dynamically switch to being a tunnel"

    const-string v3, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.9"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/restlet/data/Method;->CONNECT:Lorg/restlet/data/Method;

    .line 84
    new-instance v0, Lorg/restlet/data/Method;

    const-string v1, "COPY"

    const-string v2, "Creates a duplicate of the source resource, identified by the Request-URI, in the destination resource, identified by the URI in the Destination header"

    const-string v3, "http://www.webdav.org/specs/rfc2518.html#METHOD_COPY"

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/restlet/data/Method;->COPY:Lorg/restlet/data/Method;

    .line 97
    new-instance v0, Lorg/restlet/data/Method;

    const-string v1, "DELETE"

    const-string v2, "Requests that the origin server deletes the resource identified by the request URI"

    const-string v3, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.7"

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    .line 110
    new-instance v5, Lorg/restlet/data/Method;

    const-string v6, "GET"

    const-string v7, "Retrieves whatever information (in the form of an entity) that is identified by the request URI"

    const-string v8, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.3"

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    .line 123
    new-instance v5, Lorg/restlet/data/Method;

    const-string v6, "HEAD"

    const-string v7, "Identical to GET except that the server must not return a message body in the response"

    const-string v8, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.4"

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    .line 136
    new-instance v5, Lorg/restlet/data/Method;

    const-string v6, "LOCK"

    const-string v7, "Used to take out a lock of any access type (WebDAV)"

    const-string v8, "http://www.webdav.org/specs/rfc2518.html#METHOD_LOCK"

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lorg/restlet/data/Method;->LOCK:Lorg/restlet/data/Method;

    .line 148
    new-instance v0, Lorg/restlet/data/Method;

    const-string v1, "MKCOL"

    const-string v2, "Used to create a new collection (WebDAV)"

    const-string v3, "http://www.webdav.org/specs/rfc2518.html#METHOD_MKCOL"

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/restlet/data/Method;->MKCOL:Lorg/restlet/data/Method;

    .line 161
    new-instance v0, Lorg/restlet/data/Method;

    const-string v1, "MOVE"

    const-string v2, "Logical equivalent of a copy, followed by consistency maintenance processing, followed by a delete of the source (WebDAV)"

    const-string v3, "http://www.webdav.org/specs/rfc2518.html#METHOD_MOVE"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/restlet/data/Method;->MOVE:Lorg/restlet/data/Method;

    .line 174
    new-instance v5, Lorg/restlet/data/Method;

    const-string v6, "OPTIONS"

    const-string v7, "Requests for information about the communication options available on the request/response chain identified by the URI"

    const-string v8, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.2"

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    .line 188
    new-instance v0, Lorg/restlet/data/Method;

    const-string v1, "POST"

    const-string v2, "Requests that the origin server accepts the entity enclosed in the request as a new subordinate of the resource identified by the request URI"

    const-string v3, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.5"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    .line 201
    new-instance v5, Lorg/restlet/data/Method;

    const-string v6, "PROPFIND"

    const-string v7, "Retrieves properties defined on the resource identified by the request URI"

    const-string v8, "http://www.webdav.org/specs/rfc2518.html#METHOD_PROPFIND"

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lorg/restlet/data/Method;->PROPFIND:Lorg/restlet/data/Method;

    .line 214
    new-instance v0, Lorg/restlet/data/Method;

    const-string v1, "PROPPATCH"

    const-string v2, "Processes instructions specified in the request body to set and/or remove properties defined on the resource identified by the request URI"

    const-string v3, "http://www.webdav.org/specs/rfc2518.html#METHOD_PROPPATCH"

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/restlet/data/Method;->PROPPATCH:Lorg/restlet/data/Method;

    .line 227
    new-instance v0, Lorg/restlet/data/Method;

    const-string v1, "PUT"

    const-string v2, "Requests that the enclosed entity be stored under the supplied request URI"

    const-string v3, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.6"

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    .line 240
    new-instance v5, Lorg/restlet/data/Method;

    const-string v6, "TRACE"

    const-string v7, "Used to invoke a remote, application-layer loop-back of the request message"

    const-string v8, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.8"

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lorg/restlet/data/Method;->TRACE:Lorg/restlet/data/Method;

    .line 253
    new-instance v5, Lorg/restlet/data/Method;

    const-string v6, "UNLOCK"

    const-string v7, "Removes the lock identified by the lock token from the request URI, and all other resources included in the lock"

    const-string v8, "http://www.webdav.org/specs/rfc2518.html#METHOD_UNLOCK"

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lorg/restlet/data/Method;->UNLOCK:Lorg/restlet/data/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 358
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 359
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 373
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 374
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "safe"    # Z
    .param p5, "idempotent"    # Z

    .prologue
    .line 393
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 394
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "safe"    # Z
    .param p5, "idempotent"    # Z
    .param p6, "replying"    # Z

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    .line 415
    iput-object p1, p0, Lorg/restlet/data/Method;->name:Ljava/lang/String;

    .line 416
    iput-object p2, p0, Lorg/restlet/data/Method;->description:Ljava/lang/String;

    .line 417
    iput-object p3, p0, Lorg/restlet/data/Method;->uri:Ljava/lang/String;

    .line 418
    iput-boolean p4, p0, Lorg/restlet/data/Method;->safe:Z

    .line 419
    iput-boolean p5, p0, Lorg/restlet/data/Method;->idempotent:Z

    .line 420
    iput-boolean p6, p0, Lorg/restlet/data/Method;->replying:Z

    .line 421
    return-void
.end method

.method public static register(Lorg/restlet/data/Method;)V
    .locals 2
    .param p0, "method"    # Lorg/restlet/data/Method;

    .prologue
    .line 265
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 266
    .local v0, "name":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    sget-object v1, Lorg/restlet/data/Method;->_methods:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    return-void

    .line 265
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Method;>;"
    new-instance v0, Lorg/restlet/data/Method$1;

    invoke-direct {v0}, Lorg/restlet/data/Method$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 283
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/data/Method;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "result":Lorg/restlet/data/Method;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    sget-object v1, Lorg/restlet/data/Method;->_methods:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lorg/restlet/data/Method;
    check-cast v0, Lorg/restlet/data/Method;

    .line 298
    .restart local v0    # "result":Lorg/restlet/data/Method;
    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lorg/restlet/data/Method;

    .end local v0    # "result":Lorg/restlet/data/Method;
    invoke-direct {v0, p0}, Lorg/restlet/data/Method;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v0    # "result":Lorg/restlet/data/Method;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lorg/restlet/data/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/data/Method;->compareTo(Lorg/restlet/data/Method;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/restlet/data/Method;)I
    .locals 2
    .param p1, "o"    # Lorg/restlet/data/Method;

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 439
    instance-of v0, p1, Lorg/restlet/data/Method;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/restlet/data/Method;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/restlet/data/Method;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/restlet/data/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/restlet/data/Method;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isIdempotent()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lorg/restlet/data/Method;->idempotent:Z

    return v0
.end method

.method public isReplying()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lorg/restlet/data/Method;->replying:Z

    return v0
.end method

.method public isSafe()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lorg/restlet/data/Method;->safe:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
