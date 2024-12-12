.class public Lorg/codegist/crest/io/http/HttpRequestBuilderFactory;
.super Ljava/lang/Object;
.source "HttpRequestBuilderFactory.java"

# interfaces
.implements Lorg/codegist/crest/io/RequestBuilderFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$1;,
        Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public create()Lorg/codegist/crest/io/RequestBuilder;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;-><init>(Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$1;)V

    return-object v0
.end method
