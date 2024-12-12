.class public Lorg/codegist/common/io/InputStreamWrapper;
.super Ljava/io/InputStream;
.source "InputStreamWrapper.java"


# instance fields
.field private final delegate:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "delegate"    # Ljava/io/InputStream;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    .line 38
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 68
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 92
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 94
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 93
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Lorg/codegist/common/lang/EqualsBuilder;

    invoke-direct {v0}, Lorg/codegist/common/lang/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    check-cast p1, Lorg/codegist/common/io/InputStreamWrapper;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p1, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/codegist/common/lang/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/common/lang/EqualsBuilder;->equals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 73
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
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
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 78
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/codegist/common/io/InputStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
