.class public Lorg/codegist/crest/param/DefaultParam;
.super Ljava/lang/Object;
.source "DefaultParam.java"

# interfaces
.implements Lorg/codegist/crest/param/Param;


# instance fields
.field private final config:Lorg/codegist/crest/config/ParamConfig;

.field private final value:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codegist/crest/config/ParamConfig;Ljava/util/Collection;)V
    .locals 0
    .param p1, "config"    # Lorg/codegist/crest/config/ParamConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/ParamConfig;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/codegist/crest/param/DefaultParam;->config:Lorg/codegist/crest/config/ParamConfig;

    .line 43
    iput-object p2, p0, Lorg/codegist/crest/param/DefaultParam;->value:Ljava/util/Collection;

    .line 44
    return-void
.end method


# virtual methods
.method public getParamConfig()Lorg/codegist/crest/config/ParamConfig;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/codegist/crest/param/DefaultParam;->config:Lorg/codegist/crest/config/ParamConfig;

    return-object v0
.end method

.method public getValue()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/codegist/crest/param/DefaultParam;->value:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lorg/codegist/common/lang/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/codegist/common/lang/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    const-string v1, "name"

    iget-object v2, p0, Lorg/codegist/crest/param/DefaultParam;->config:Lorg/codegist/crest/config/ParamConfig;

    invoke-interface {v2}, Lorg/codegist/crest/config/ParamConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "value"

    iget-object v2, p0, Lorg/codegist/crest/param/DefaultParam;->value:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/common/lang/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
