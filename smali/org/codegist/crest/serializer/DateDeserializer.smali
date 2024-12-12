.class public Lorg/codegist/crest/serializer/DateDeserializer;
.super Lorg/codegist/crest/serializer/TypeDeserializer;
.source "DateDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/TypeDeserializer",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final formatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 2
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/codegist/crest/serializer/TypeDeserializer;-><init>()V

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-interface {p1}, Lorg/codegist/crest/CRestConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codegist/crest/serializer/DateDeserializer;->formatter:Ljava/text/DateFormat;

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/serializer/DateDeserializer;->deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/Date;
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lorg/codegist/crest/serializer/DateDeserializer;->formatter:Ljava/text/DateFormat;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/codegist/crest/serializer/DateDeserializer;->formatter:Ljava/text/DateFormat;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
