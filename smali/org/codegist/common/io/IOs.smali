.class public final Lorg/codegist/common/io/IOs;
.super Ljava/lang/Object;
.source "IOs.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 0
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 235
    invoke-static {p0}, Lorg/codegist/common/io/IOs;->close(Ljava/io/Closeable;)V

    .line 236
    return-void
.end method

.method public static close(Ljava/io/Reader;)V
    .locals 0
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    .line 244
    invoke-static {p0}, Lorg/codegist/common/io/IOs;->close(Ljava/io/Closeable;)V

    .line 245
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/codegist/common/io/IOs;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 172
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/16 v2, 0x1000

    :try_start_0
    new-array v0, v2, [B

    .line 197
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 198
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v2

    .line 201
    .restart local v0    # "buffer":[B
    .restart local v1    # "n":I
    :cond_1
    if-eqz p2, :cond_2

    .line 202
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 205
    :cond_2
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/codegist/common/io/IOs;->copy(Ljava/io/Reader;Ljava/io/Writer;Z)V

    .line 183
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;Z)V
    .locals 3
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const/16 v2, 0x1000

    :try_start_0
    new-array v0, v2, [C

    .line 219
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "n":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 220
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 223
    .end local v0    # "buffer":[C
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    :cond_0
    throw v2

    .line 223
    .restart local v0    # "buffer":[C
    .restart local v1    # "n":I
    :cond_1
    if-eqz p2, :cond_2

    .line 224
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 227
    :cond_2
    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/codegist/common/io/IOs;->toByteArray(Ljava/io/InputStream;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;Z)[B
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lorg/codegist/common/io/IOs;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 135
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/Reader;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0, p2}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/Reader;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/Reader;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/Reader;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/Reader;Z)Ljava/lang/String;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 159
    .local v0, "out":Ljava/io/StringWriter;
    invoke-static {p0, v0, p1}, Lorg/codegist/common/io/IOs;->copy(Ljava/io/Reader;Ljava/io/Writer;Z)V

    .line 160
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
