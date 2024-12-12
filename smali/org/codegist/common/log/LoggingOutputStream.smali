.class public Lorg/codegist/common/log/LoggingOutputStream;
.super Ljava/io/OutputStream;
.source "LoggingOutputStream.java"


# instance fields
.field private final delegate:Ljava/io/OutputStream;

.field private final logger:Lorg/codegist/common/log/Logger;

.field private final sw:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/codegist/common/log/Logger;)V
    .locals 1
    .param p1, "delegate"    # Ljava/io/OutputStream;
    .param p2, "logger"    # Lorg/codegist/common/log/Logger;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 29
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->sw:Ljava/io/StringWriter;

    .line 34
    iput-object p1, p0, Lorg/codegist/common/log/LoggingOutputStream;->delegate:Ljava/io/OutputStream;

    .line 35
    iput-object p2, p0, Lorg/codegist/common/log/LoggingOutputStream;->logger:Lorg/codegist/common/log/Logger;

    .line 36
    return-void
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
    .line 64
    iget-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->delegate:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 65
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/common/log/LoggingOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->delegate:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 59
    iget-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->logger:Lorg/codegist/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codegist/common/log/LoggingOutputStream;->sw:Ljava/io/StringWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->delegate:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 41
    iget-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->sw:Ljava/io/StringWriter;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 42
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->delegate:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 47
    iget-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->sw:Ljava/io/StringWriter;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 48
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->delegate:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    iget-object v0, p0, Lorg/codegist/common/log/LoggingOutputStream;->sw:Ljava/io/StringWriter;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 54
    return-void
.end method
