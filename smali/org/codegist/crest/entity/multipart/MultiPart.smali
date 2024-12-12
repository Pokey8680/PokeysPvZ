.class final Lorg/codegist/crest/entity/multipart/MultiPart;
.super Ljava/lang/Object;
.source "MultiPart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final config:Lorg/codegist/crest/config/ParamConfig;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/codegist/crest/config/ParamConfig;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Lorg/codegist/crest/config/ParamConfig;
    .param p3, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/ParamConfig;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/codegist/crest/entity/multipart/MultiPart;->config:Lorg/codegist/crest/config/ParamConfig;

    .line 32
    iput-object p2, p0, Lorg/codegist/crest/entity/multipart/MultiPart;->value:Ljava/lang/Object;

    .line 33
    iput-object p3, p0, Lorg/codegist/crest/entity/multipart/MultiPart;->boundary:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<TT;>;"
    iget-object v0, p0, Lorg/codegist/crest/entity/multipart/MultiPart;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getParamConfig()Lorg/codegist/crest/config/ParamConfig;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<TT;>;"
    iget-object v0, p0, Lorg/codegist/crest/entity/multipart/MultiPart;->config:Lorg/codegist/crest/config/ParamConfig;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<TT;>;"
    iget-object v0, p0, Lorg/codegist/crest/entity/multipart/MultiPart;->value:Ljava/lang/Object;

    return-object v0
.end method
