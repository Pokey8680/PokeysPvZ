.class public abstract Ljavax/ws/rs/core/Response$ResponseBuilder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/ws/rs/core/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResponseBuilder"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static newInstance()Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 2

    .prologue
    .line 356
    invoke-static {}, Ljavax/ws/rs/ext/RuntimeDelegate;->getInstance()Ljavax/ws/rs/ext/RuntimeDelegate;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/ws/rs/ext/RuntimeDelegate;->createResponseBuilder()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 357
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    return-object v0
.end method


# virtual methods
.method public abstract build()Ljavax/ws/rs/core/Response;
.end method

.method public abstract cacheControl(Ljavax/ws/rs/core/CacheControl;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->clone()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract contentLocation(Ljava/net/URI;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public varargs abstract cookie([Ljavax/ws/rs/core/NewCookie;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract entity(Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract expires(Ljava/util/Date;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract header(Ljava/lang/String;Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract language(Ljava/lang/String;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract language(Ljava/util/Locale;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract lastModified(Ljava/util/Date;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract location(Ljava/net/URI;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract status(I)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p1, "status"    # Ljavax/ws/rs/core/Response$Status;

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Ljavax/ws/rs/core/Response$ResponseBuilder;->status(Ljavax/ws/rs/core/Response$StatusType;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public status(Ljavax/ws/rs/core/Response$StatusType;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p1, "status"    # Ljavax/ws/rs/core/Response$StatusType;

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 395
    :cond_0
    invoke-interface {p1}, Ljavax/ws/rs/core/Response$StatusType;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->status(I)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public abstract tag(Ljava/lang/String;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract tag(Ljavax/ws/rs/core/EntityTag;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract type(Ljava/lang/String;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract type(Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract variant(Ljavax/ws/rs/core/Variant;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract variants(Ljava/util/List;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/ws/rs/core/Variant;",
            ">;)",
            "Ljavax/ws/rs/core/Response$ResponseBuilder;"
        }
    .end annotation
.end method
