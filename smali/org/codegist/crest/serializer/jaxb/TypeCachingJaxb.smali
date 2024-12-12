.class Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;
.super Ljava/lang/Object;
.source "TypeCachingJaxb.java"

# interfaces
.implements Lorg/codegist/crest/serializer/jaxb/Jaxb;


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lorg/codegist/crest/serializer/jaxb/Jaxb;",
            ">;"
        }
    .end annotation
.end field

.field private final crestConfig:Lorg/codegist/crest/CRestConfig;

.field private final source:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 46
    iput-object p1, p0, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->crestConfig:Lorg/codegist/crest/CRestConfig;

    .line 47
    iput-object p2, p0, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->source:Ljava/lang/Class;

    .line 48
    return-void
.end method

.method private get(Ljava/util/Set;)Lorg/codegist/crest/serializer/jaxb/Jaxb;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Lorg/codegist/crest/serializer/jaxb/Jaxb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v2, p0, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/serializer/jaxb/Jaxb;

    .line 71
    .local v0, "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    if-nez v0, :cond_0

    .line 72
    iget-object v3, p0, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->crestConfig:Lorg/codegist/crest/CRestConfig;

    iget-object v4, p0, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->source:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Class;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lorg/codegist/crest/serializer/jaxb/JaxbFactory;->create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;[Ljava/lang/Class;)Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codegist/crest/serializer/jaxb/Jaxb;

    .line 74
    .local v1, "previousJaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 76
    .end local v1    # "previousJaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/OutputStream;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "object":Ljava/lang/Object;, "TT;"
    instance-of v2, p1, Lorg/codegist/crest/serializer/jaxb/Classes;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 53
    check-cast v2, Lorg/codegist/crest/serializer/jaxb/Classes;

    invoke-interface {v2}, Lorg/codegist/crest/serializer/jaxb/Classes;->getClasses()Ljava/util/Set;

    move-result-object v0

    .line 54
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, v0}, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->get(Ljava/util/Set;)Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v1

    .line 58
    .end local v0    # "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local v1, "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    :goto_0
    invoke-interface {v1, p1, p2, p3}, Lorg/codegist/crest/serializer/jaxb/Jaxb;->marshal(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 59
    return-void

    .line 56
    .end local v1    # "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->get(Ljava/util/Set;)Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v1

    .restart local v1    # "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    goto :goto_0
.end method

.method public unmarshal(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 3
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Lorg/codegist/common/reflect/Types;->getActors(Ljava/lang/reflect/Type;)Ljava/util/Set;

    move-result-object v0

    .line 63
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-direct {p0, v0}, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;->get(Ljava/util/Set;)Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v1

    .line 66
    .local v1, "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    invoke-interface {v1, p1, p2, p3}, Lorg/codegist/crest/serializer/jaxb/Jaxb;->unmarshal(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
