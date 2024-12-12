.class final Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;
.super Ljava/lang/Object;
.source "ComponentRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/util/ComponentRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ItemDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;, "Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->instanceRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    iput-object p1, p0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->clazz:Ljava/lang/Class;

    .line 98
    iput-object p2, p0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->config:Ljava/util/Map;

    .line 99
    return-void
.end method


# virtual methods
.method instanciate(Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;
    .locals 5
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;, "Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor<TT;>;"
    iget-object v4, p0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->instanceRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "instance":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 110
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v2

    .line 107
    .end local v2    # "instance":Ljava/lang/Object;, "TT;"
    .restart local v1    # "instance":Ljava/lang/Object;, "TT;"
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->config:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 108
    .local v3, "merged":Lorg/codegist/crest/CRestConfig;
    :goto_1
    iget-object v4, p0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->clazz:Ljava/lang/Class;

    invoke-static {v4, v3}, Lorg/codegist/crest/util/ComponentFactory;->instantiate(Ljava/lang/Class;Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    iget-object v4, p0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->instanceRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v2, v1

    .line 110
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    .restart local v2    # "instance":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 107
    .end local v2    # "instance":Ljava/lang/Object;, "TT;"
    .end local v3    # "merged":Lorg/codegist/crest/CRestConfig;
    .restart local v1    # "instance":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v4, p0, Lorg/codegist/crest/util/ComponentRegistry$ItemDescriptor;->config:Ljava/util/Map;

    invoke-interface {p1, v4}, Lorg/codegist/crest/CRestConfig;->merge(Ljava/util/Map;)Lorg/codegist/crest/CRestConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method
