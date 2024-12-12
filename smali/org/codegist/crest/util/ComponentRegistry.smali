.class public final Lorg/codegist/crest/util/ComponentRegistry;
.super Ljava/lang/Object;
.source "ComponentRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/util/ComponentRegistry$Builder;,
        Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TT;>;"
        }
    .end annotation
.end field

.field private final crestConfig:Lorg/codegist/crest/CRestConfig;

.field private defaultIfNotFound:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final defaultIfNotFoundDescriptor:Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;)V
    .locals 1
    .param p2, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor",
            "<TT;>;>;",
            "Lorg/codegist/crest/CRestConfig;",
            "Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<TK;TT;>;"
    .local p1, "mapping":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor<TT;>;>;"
    .local p3, "defaultIfNotFoundDescriptor":Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;, "Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/util/ComponentRegistry;->cache:Ljava/util/Map;

    .line 47
    iput-object p3, p0, Lorg/codegist/crest/util/ComponentRegistry;->defaultIfNotFoundDescriptor:Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;

    .line 48
    iput-object p1, p0, Lorg/codegist/crest/util/ComponentRegistry;->mapping:Ljava/util/Map;

    .line 49
    iput-object p2, p0, Lorg/codegist/crest/util/ComponentRegistry;->crestConfig:Lorg/codegist/crest/CRestConfig;

    .line 50
    return-void
.end method

.method private declared-synchronized buildAndCache(Ljava/lang/Object;Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;
    .locals 5
    .param p2, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/codegist/crest/CRestConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/codegist/crest/util/ComponentRegistry;->mapping:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;

    .line 77
    .local v0, "item":Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;, "Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor<TT;>;"
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p2}, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->instanciate(Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, "value":Ljava/lang/Object;, "TT;"
    :goto_0
    iget-object v2, p0, Lorg/codegist/crest/util/ComponentRegistry;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-object v1

    .line 79
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/codegist/crest/util/ComponentRegistry;->defaultIfNotFound:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 80
    iget-object v1, p0, Lorg/codegist/crest/util/ComponentRegistry;->defaultIfNotFound:Ljava/lang/Object;

    .restart local v1    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 81
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v2, p0, Lorg/codegist/crest/util/ComponentRegistry;->defaultIfNotFoundDescriptor:Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lorg/codegist/crest/util/ComponentRegistry;->defaultIfNotFoundDescriptor:Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;

    invoke-virtual {v2, p2}, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->instanciate(Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/codegist/crest/util/ComponentRegistry;->defaultIfNotFound:Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lorg/codegist/crest/util/ComponentRegistry;->defaultIfNotFound:Ljava/lang/Object;

    .restart local v1    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 85
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    new-instance v2, Lorg/codegist/crest/CRestException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No item bound to key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codegist/crest/CRestException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .end local v0    # "item":Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;, "Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/codegist/crest/util/ComponentRegistry;->mapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/codegist/crest/util/ComponentRegistry;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 69
    iget-object v1, p0, Lorg/codegist/crest/util/ComponentRegistry;->crestConfig:Lorg/codegist/crest/CRestConfig;

    invoke-direct {p0, p1, v1}, Lorg/codegist/crest/util/ComponentRegistry;->buildAndCache(Ljava/lang/Object;Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method
