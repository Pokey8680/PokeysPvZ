.class public Lorg/restlet/engine/io/WriterOutputStream;
.super Ljava/io/OutputStream;
.source "WriterOutputStream.java"


# instance fields
.field private final charSet:Ljava/nio/charset/Charset;

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/restlet/data/CharacterSet;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/restlet/engine/io/WriterOutputStream;->writer:Ljava/io/Writer;

    .line 70
    if-nez p2, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/restlet/engine/io/WriterOutputStream;->charSet:Ljava/nio/charset/Charset;

    .line 72
    return-void

    .line 70
    :cond_0
    invoke-virtual {p2}, Lorg/restlet/data/CharacterSet;->toCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 77
    iget-object v0, p0, Lorg/restlet/engine/io/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 78
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V

    .line 83
    iget-object v0, p0, Lorg/restlet/engine/io/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 84
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/restlet/engine/io/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 96
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lorg/restlet/engine/io/WriterOutputStream;->charSet:Ljava/nio/charset/Charset;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 90
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v1, p0, Lorg/restlet/engine/io/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    return-void
.end method
