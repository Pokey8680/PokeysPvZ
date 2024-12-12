.class public final Lorg/codegist/crest/util/ComponentRegistry$Builder;
.super Ljava/lang/Object;
.source "ComponentRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/util/ComponentRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.field private defaultIfNotFoundDescriptor:Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry$Builder;, "Lorg/codegist/crest/util/ComponentRegistry$Builder<TK;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/util/ComponentRegistry$Builder;->mapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build(Lorg/codegist/crest/CRestConfig;)Lorg/codegist/crest/util/ComponentRegistry;
    .locals 3
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            ")",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry$Builder;, "Lorg/codegist/crest/util/ComponentRegistry$Builder<TK;TT;>;"
    new-instance v0, Lorg/codegist/crest/util/ComponentRegistry;

    iget-object v1, p0, Lorg/codegist/crest/util/ComponentRegistry$Builder;->mapping:Ljava/util/Map;

    iget-object v2, p0, Lorg/codegist/crest/util/ComponentRegistry$Builder;->defaultIfNotFoundDescriptor:Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;

    invoke-direct {v0, v1, p1, v2}, Lorg/codegist/crest/util/ComponentRegistry;-><init>(Ljava/util/Map;Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;)V

    return-object v0
.end method

.method public defaultAs(Ljava/lang/Class;)Lorg/codegist/crest/util/ComponentRegistry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lorg/codegist/crest/util/ComponentRegistry$Builder",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry$Builder;, "Lorg/codegist/crest/util/ComponentRegistry$Builder<TK;TT;>;"
    .local p1, "item":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->defaultAs(Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public defaultAs(Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/util/ComponentRegistry$Builder",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry$Builder;, "Lorg/codegist/crest/util/ComponentRegistry$Builder<TK;TT;>;"
    .local p1, "item":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "itemConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;

    invoke-direct {v0, p1, p2}, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/codegist/crest/util/ComponentRegistry$Builder;->defaultIfNotFoundDescriptor:Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;

    .line 192
    return-object p0
.end method

.method public varargs register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;[TK;)",
            "Lorg/codegist/crest/util/ComponentRegistry$Builder",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry$Builder;, "Lorg/codegist/crest/util/ComponentRegistry$Builder<TK;TT;>;"
    .local p1, "item":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "keys":[Ljava/lang/Object;, "[TK;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;[TK;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/util/ComponentRegistry$Builder",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry$Builder;, "Lorg/codegist/crest/util/ComponentRegistry$Builder<TK;TT;>;"
    .local p1, "item":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "keys":[Ljava/lang/Object;, "[TK;"
    .local p3, "itemConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;

    invoke-direct {v1, p1, p3}, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 154
    .local v1, "descriptor":Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 155
    .local v4, "mt":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lorg/codegist/crest/util/ComponentRegistry$Builder;->mapping:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v4    # "mt":Ljava/lang/Object;, "TK;"
    :cond_0
    return-object p0
.end method

.method public register(Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Class",
            "<+TT;>;>;)",
            "Lorg/codegist/crest/util/ComponentRegistry$Builder",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry$Builder;, "Lorg/codegist/crest/util/ComponentRegistry$Builder<TK;TT;>;"
    .local p1, "mapping":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Class<+TT;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/Class<+TT;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/Class<+TT;>;>;"
    :cond_0
    return-object p0
.end method
