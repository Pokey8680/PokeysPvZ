.class public Lorg/codegist/crest/serializer/DateSerializer;
.super Lorg/codegist/crest/serializer/StringSerializer;
.source "DateSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/StringSerializer",
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
    .line 37
    invoke-direct {p0}, Lorg/codegist/crest/serializer/StringSerializer;-><init>()V

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-interface {p1}, Lorg/codegist/crest/CRestConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codegist/crest/serializer/DateSerializer;->formatter:Ljava/text/DateFormat;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    check-cast p1, Ljava/util/Date;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/serializer/DateSerializer;->serialize(Ljava/util/Date;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Date;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/util/Date;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 45
    iget-object v1, p0, Lorg/codegist/crest/serializer/DateSerializer;->formatter:Ljava/text/DateFormat;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/codegist/crest/serializer/DateSerializer;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
