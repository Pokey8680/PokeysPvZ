.class public Lorg/codegist/crest/serializer/FileSerializer;
.super Ljava/lang/Object;
.source "FileSerializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/codegist/crest/serializer/Serializer",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "value"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-static {v0, p3, v1}, Lorg/codegist/common/io/IOs;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 41
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
    .line 34
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codegist/crest/serializer/FileSerializer;->serialize(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    return-void
.end method
