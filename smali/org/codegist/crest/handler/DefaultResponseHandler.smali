.class public Lorg/codegist/crest/handler/DefaultResponseHandler;
.super Ljava/lang/Object;
.source "DefaultResponseHandler.java"

# interfaces
.implements Lorg/codegist/crest/handler/ResponseHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/codegist/crest/io/Response;)Ljava/lang/Object;
    .locals 1
    .param p1, "response"    # Lorg/codegist/crest/io/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->deserialize()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
