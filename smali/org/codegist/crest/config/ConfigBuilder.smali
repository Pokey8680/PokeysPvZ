.class abstract Lorg/codegist/crest/config/ConfigBuilder;
.super Ljava/lang/Object;
.source "ConfigBuilder.java"


# instance fields
.field private final crestConfig:Lorg/codegist/crest/CRestConfig;


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/codegist/crest/config/ConfigBuilder;->crestConfig:Lorg/codegist/crest/CRestConfig;

    .line 41
    return-void
.end method


# virtual methods
.method public getCRestConfig()Lorg/codegist/crest/CRestConfig;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/codegist/crest/config/ConfigBuilder;->crestConfig:Lorg/codegist/crest/CRestConfig;

    return-object v0
.end method

.method protected instantiate(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/codegist/crest/config/ConfigBuilder;->crestConfig:Lorg/codegist/crest/CRestConfig;

    invoke-static {p1, v1}, Lorg/codegist/crest/util/ComponentFactory;->instantiate(Ljava/lang/Class;Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "defaultIfNotFound":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/codegist/crest/config/ConfigBuilder;->crestConfig:Lorg/codegist/crest/CRestConfig;

    invoke-interface {v0, p1, p2}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
