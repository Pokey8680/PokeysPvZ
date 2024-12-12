.class public Lorg/restlet/representation/DigesterRepresentation;
.super Lorg/restlet/util/WrapperRepresentation;
.source "DigesterRepresentation.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private volatile computedDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "wrappedRepresentation"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "MD5"

    invoke-direct {p0, p1, v0}, Lorg/restlet/representation/DigesterRepresentation;-><init>(Lorg/restlet/representation/Representation;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;Ljava/lang/String;)V
    .locals 1
    .param p1, "wrappedRepresentation"    # Lorg/restlet/representation/Representation;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/restlet/util/WrapperRepresentation;-><init>(Lorg/restlet/representation/Representation;)V

    .line 103
    iput-object p2, p0, Lorg/restlet/representation/DigesterRepresentation;->algorithm:Ljava/lang/String;

    .line 104
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/representation/DigesterRepresentation;->computedDigest:Ljava/security/MessageDigest;

    .line 105
    return-void
.end method


# virtual methods
.method public checkDigest()Z
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getDigest()Lorg/restlet/data/Digest;

    move-result-object v0

    .line 121
    .local v0, "digest":Lorg/restlet/data/Digest;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getComputedDigest()Lorg/restlet/data/Digest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Digest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkDigest(Ljava/lang/String;)Z
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "result":Z
    iget-object v2, p0, Lorg/restlet/representation/DigesterRepresentation;->algorithm:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/restlet/representation/DigesterRepresentation;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->checkDigest()Z

    move-result v1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getDigest()Lorg/restlet/data/Digest;

    move-result-object v0

    .line 148
    .local v0, "digest":Lorg/restlet/data/Digest;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lorg/restlet/data/Digest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lorg/restlet/representation/DigesterRepresentation;->computeDigest(Ljava/lang/String;)Lorg/restlet/data/Digest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/restlet/data/Digest;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public computeDigest()Lorg/restlet/data/Digest;
    .locals 1

    .prologue
    .line 166
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Lorg/restlet/representation/DigesterRepresentation;->computeDigest(Ljava/lang/String;)Lorg/restlet/data/Digest;

    move-result-object v0

    return-object v0
.end method

.method public computeDigest(Ljava/lang/String;)Lorg/restlet/data/Digest;
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v3, 0x0

    .line 185
    .local v3, "result":Lorg/restlet/data/Digest;
    iget-object v5, p0, Lorg/restlet/representation/DigesterRepresentation;->algorithm:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/restlet/representation/DigesterRepresentation;->algorithm:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getComputedDigest()Lorg/restlet/data/Digest;

    move-result-object v3

    .line 204
    :cond_0
    :goto_0
    return-object v3

    .line 187
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 191
    .local v2, "md":Ljava/security/MessageDigest;
    new-instance v0, Ljava/security/DigestInputStream;

    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 193
    .local v0, "dis":Ljava/security/DigestInputStream;
    invoke-static {v0}, Lorg/restlet/engine/io/BioUtils;->exhaust(Ljava/io/InputStream;)J

    .line 194
    new-instance v4, Lorg/restlet/data/Digest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lorg/restlet/data/Digest;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "result":Lorg/restlet/data/Digest;
    .local v4, "result":Lorg/restlet/data/Digest;
    move-object v3, v4

    .line 201
    .end local v4    # "result":Lorg/restlet/data/Digest;
    .restart local v3    # "result":Lorg/restlet/data/Digest;
    goto :goto_0

    .line 195
    .end local v0    # "dis":Ljava/security/DigestInputStream;
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Unable to check the digest of the representation."

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Unable to check the digest of the representation."

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public exhaust()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const-wide/16 v0, -0x1

    .line 216
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/restlet/engine/io/BioUtils;->exhaust(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 220
    :cond_0
    return-wide v0
.end method

.method public getChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/io/NioUtils;->getChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getComputedDigest()Lorg/restlet/data/Digest;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Lorg/restlet/data/Digest;

    iget-object v1, p0, Lorg/restlet/representation/DigesterRepresentation;->algorithm:Ljava/lang/String;

    iget-object v2, p0, Lorg/restlet/representation/DigesterRepresentation;->computedDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Digest;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->getReader(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/security/DigestInputStream;

    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/restlet/representation/DigesterRepresentation;->computedDigest:Ljava/security/MessageDigest;

    invoke-direct {v0, v1, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 263
    const-string v0, ""

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 266
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-virtual {p0, v1}, Lorg/restlet/representation/DigesterRepresentation;->write(Ljava/io/Writer;)V

    .line 267
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Ljava/security/DigestOutputStream;

    iget-object v1, p0, Lorg/restlet/representation/DigesterRepresentation;->computedDigest:Ljava/security/MessageDigest;

    invoke-direct {v0, p1, v1}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 285
    .local v0, "dos":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    .line 286
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 287
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/restlet/representation/DigesterRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/restlet/engine/io/BioUtils;->getStream(Ljava/io/Writer;Lorg/restlet/data/CharacterSet;)Ljava/io/OutputStream;

    move-result-object v0

    .line 299
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/representation/DigesterRepresentation;->write(Ljava/io/OutputStream;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 301
    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .param p1, "writableChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {p1}, Lorg/restlet/engine/io/NioUtils;->getStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    .line 292
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/representation/DigesterRepresentation;->write(Ljava/io/OutputStream;)V

    .line 293
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 294
    return-void
.end method
