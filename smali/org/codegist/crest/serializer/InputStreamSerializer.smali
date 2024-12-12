.class public Lorg/codegist/crest/serializer/InputStreamSerializer;
.super Ljava/lang/Object;
.source "InputStreamSerializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/codegist/crest/serializer/Serializer",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "value"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lorg/codegist/common/io/IOs;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 39
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
    .line 33
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codegist/crest/serializer/InputStreamSerializer;->serialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    return-void
.end method
