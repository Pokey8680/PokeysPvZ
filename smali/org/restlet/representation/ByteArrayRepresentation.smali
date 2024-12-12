.class public Lorg/restlet/representation/ByteArrayRepresentation;
.super Lorg/restlet/representation/InputRepresentation;
.source "ByteArrayRepresentation.java"


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;)V

    .line 55
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "byteArray"    # [B
    .param p2, "offSet"    # I
    .param p3, "length"    # I

    .prologue
    .line 67
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;)V

    .line 68
    return-void
.end method

.method public constructor <init>([BIILorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "byteArray"    # [B
    .param p2, "offSet"    # I
    .param p3, "length"    # I
    .param p4, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 82
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, p4}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;)V

    .line 83
    return-void
.end method

.method public constructor <init>([BIILorg/restlet/data/MediaType;J)V
    .locals 1
    .param p1, "byteArray"    # [B
    .param p2, "offSet"    # I
    .param p3, "length"    # I
    .param p4, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p5, "expectedSize"    # J

    .prologue
    .line 99
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, p4, p5, p6}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;J)V

    .line 101
    return-void
.end method

.method public constructor <init>([BLorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "byteArray"    # [B
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 112
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;)V

    .line 113
    return-void
.end method

.method public constructor <init>([BLorg/restlet/data/MediaType;J)V
    .locals 1
    .param p1, "byteArray"    # [B
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "expectedSize"    # J

    .prologue
    .line 125
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;J)V

    .line 126
    return-void
.end method
