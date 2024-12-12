.class public Lorg/codegist/crest/serializer/ReaderSerializer;
.super Ljava/lang/Object;
.source "ReaderSerializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/codegist/crest/serializer/Serializer",
        "<",
        "Ljava/io/Reader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/io/Reader;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "value"    # Ljava/io/Reader;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 38
    .local v0, "w":Ljava/io/Writer;
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/codegist/common/io/IOs;->copy(Ljava/io/Reader;Ljava/io/Writer;Z)V

    .line 39
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 40
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .param p3, "x2"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Ljava/io/Reader;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codegist/crest/serializer/ReaderSerializer;->serialize(Ljava/io/Reader;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    return-void
.end method
