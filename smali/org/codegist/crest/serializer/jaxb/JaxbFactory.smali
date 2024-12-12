.class final Lorg/codegist/crest/serializer/jaxb/JaxbFactory;
.super Ljava/lang/Object;
.source "JaxbFactory.java"


# static fields
.field private static final DEFAULT_MAX_WAIT:Ljava/lang/Long;

.field static final JAXB:Ljava/lang/String; = "#jaxb"

.field static final MODEL_FACTORY_CLASS:Ljava/lang/String; = "#model.factory-class"

.field static final MODEL_PACKAGE:Ljava/lang/String; = "#model.package"

.field static final POOL_RETRIEVAL_MAX_WAIT:Ljava/lang/String; = "#pool.retrieval.max-wait"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/jaxb/JaxbFactory;->DEFAULT_MAX_WAIT:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)Lorg/codegist/crest/serializer/jaxb/Jaxb;
    .locals 6
    .param p0, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/crest/serializer/jaxb/Jaxb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#jaxb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/serializer/jaxb/Jaxb;

    .line 47
    .local v0, "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    if-eqz v0, :cond_0

    .line 61
    .end local v0    # "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    :goto_0
    return-object v0

    .line 51
    .restart local v0    # "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#model.package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, "modelPackage":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 53
    invoke-static {p0, p1, v2}, Lorg/codegist/crest/serializer/jaxb/JaxbFactory;->create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;Ljava/lang/String;)Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#model.factory-class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 57
    .local v1, "modelFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 58
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {p0, p1, v4}, Lorg/codegist/crest/serializer/jaxb/JaxbFactory;->create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;[Ljava/lang/Class;)Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;

    .end local v0    # "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    invoke-direct {v0, p0, p1}, Lorg/codegist/crest/serializer/jaxb/TypeCachingJaxb;-><init>(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method static create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;Ljava/lang/String;)Lorg/codegist/crest/serializer/jaxb/Jaxb;
    .locals 1
    .param p0, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .param p2, "context"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codegist/crest/serializer/jaxb/Jaxb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/codegist/crest/serializer/jaxb/JaxbFactory;->create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;Ljavax/xml/bind/JAXBContext;)Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v0

    return-object v0
.end method

.method private static create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;Ljavax/xml/bind/JAXBContext;)Lorg/codegist/crest/serializer/jaxb/Jaxb;
    .locals 6
    .param p0, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .param p2, "jaxb"    # Ljavax/xml/bind/JAXBContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljavax/xml/bind/JAXBContext;",
            ")",
            "Lorg/codegist/crest/serializer/jaxb/Jaxb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lorg/codegist/crest/CRestConfig;->getConcurrencyLevel()I

    move-result v2

    .line 74
    .local v2, "poolSize":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 75
    new-instance v4, Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;

    invoke-direct {v4, p2}, Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;-><init>(Ljavax/xml/bind/JAXBContext;)V

    .line 79
    :goto_0
    return-object v4

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#pool.retrieval.max-wait"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/codegist/crest/serializer/jaxb/JaxbFactory;->DEFAULT_MAX_WAIT:Ljava/lang/Long;

    invoke-interface {p0, v4, v5}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 79
    .local v0, "maxWait":J
    new-instance v4, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;

    invoke-direct {v4, p2, v2, v0, v1}, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;-><init>(Ljavax/xml/bind/JAXBContext;IJ)V

    goto :goto_0
.end method

.method static varargs create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;[Ljava/lang/Class;)Lorg/codegist/crest/serializer/jaxb/Jaxb;
    .locals 1
    .param p0, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/crest/serializer/jaxb/Jaxb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "classToBeBound":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljavax/xml/bind/JAXBContext;->newInstance([Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/codegist/crest/serializer/jaxb/JaxbFactory;->create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;Ljavax/xml/bind/JAXBContext;)Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v0

    return-object v0
.end method
