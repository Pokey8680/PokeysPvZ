.class public Lorg/codegist/crest/interceptor/NoOpRequestInterceptor;
.super Ljava/lang/Object;
.source "NoOpRequestInterceptor.java"

# interfaces
.implements Lorg/codegist/crest/interceptor/RequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeFire(Lorg/codegist/crest/io/RequestBuilder;Lorg/codegist/crest/config/MethodConfig;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "requestBuilder"    # Lorg/codegist/crest/io/RequestBuilder;
    .param p2, "mc"    # Lorg/codegist/crest/config/MethodConfig;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    return-void
.end method
