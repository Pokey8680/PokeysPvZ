.class public Lorg/restlet/util/WrapperMap;
.super Ljava/lang/Object;
.source "WrapperMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/restlet/util/WrapperMap;->delegate:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/restlet/util/WrapperMap;->delegate:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 77
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 87
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 98
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 119
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getDelegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    iget-object v0, p0, Lorg/restlet/util/WrapperMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/restlet/util/WrapperMap;, "Lorg/restlet/util/WrapperMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperMap;->getDelegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
