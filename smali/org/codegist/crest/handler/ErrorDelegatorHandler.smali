.class public Lorg/codegist/crest/handler/ErrorDelegatorHandler;
.super Ljava/lang/Object;
.source "ErrorDelegatorHandler.java"

# interfaces
.implements Lorg/codegist/crest/handler/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/codegist/crest/io/Request;Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/codegist/crest/io/Request;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codegist/crest/io/Request;",
            "Ljava/lang/Exception;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p2}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
