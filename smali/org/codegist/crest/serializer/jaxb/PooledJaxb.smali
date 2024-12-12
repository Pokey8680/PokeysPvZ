.class Lorg/codegist/crest/serializer/jaxb/PooledJaxb;
.super Ljava/lang/Object;
.source "PoolJaxbMarshaller.java"

# interfaces
.implements Lorg/codegist/crest/serializer/jaxb/Jaxb;


# instance fields
.field private final maxWait:J

.field private final pool:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/codegist/crest/serializer/jaxb/Jaxb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/xml/bind/JAXBContext;IJ)V
    .locals 3
    .param p1, "jaxbContext"    # Ljavax/xml/bind/JAXBContext;
    .param p2, "poolSize"    # I
    .param p3, "maxWait"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p3, p0, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->maxWait:J

    .line 43
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->pool:Ljava/util/concurrent/BlockingQueue;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 45
    new-instance v1, Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;

    invoke-direct {v1, p1}, Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;-><init>(Ljavax/xml/bind/JAXBContext;)V

    .line 46
    .local v1, "jaxb":Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;
    iget-object v2, p0, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->pool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "jaxb":Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;
    :cond_0
    return-void
.end method

.method private borrow()Lorg/codegist/crest/serializer/jaxb/Jaxb;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v1, p0, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->pool:Ljava/util/concurrent/BlockingQueue;

    iget-wide v2, p0, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->maxWait:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/serializer/jaxb/Jaxb;

    .line 74
    .local v0, "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    if-nez v0, :cond_0

    .line 75
    new-instance v1, Lorg/codegist/crest/CRestException;

    const-string v2, "No jaxb could have been retrieved in the allowed time window"

    invoke-direct {v1, v2}, Lorg/codegist/crest/CRestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    return-object v0
.end method

.method private lend(Lorg/codegist/crest/serializer/jaxb/Jaxb;)V
    .locals 1
    .param p1, "jaxb"    # Lorg/codegist/crest/serializer/jaxb/Jaxb;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->pool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2
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
    .line 51
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->borrow()Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v0

    .line 53
    .local v0, "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lorg/codegist/crest/serializer/jaxb/Jaxb;->marshal(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-direct {p0, v0}, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->lend(Lorg/codegist/crest/serializer/jaxb/Jaxb;)V

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->lend(Lorg/codegist/crest/serializer/jaxb/Jaxb;)V

    throw v1
.end method

.method public unmarshal(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
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
    .line 60
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->borrow()Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v0

    .line 62
    .local v0, "jaxb":Lorg/codegist/crest/serializer/jaxb/Jaxb;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lorg/codegist/crest/serializer/jaxb/Jaxb;->unmarshal(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 64
    invoke-direct {p0, v0}, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->lend(Lorg/codegist/crest/serializer/jaxb/Jaxb;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lorg/codegist/crest/serializer/jaxb/PooledJaxb;->lend(Lorg/codegist/crest/serializer/jaxb/Jaxb;)V

    throw v1
.end method
