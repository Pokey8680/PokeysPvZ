.class public final Lorg/restlet/engine/io/BioUtils;
.super Ljava/lang/Object;
.source "BioUtils.java"


# static fields
.field private static final HEXDIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/restlet/engine/io/BioUtils;->HEXDIGITS:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p0, :cond_2

    .line 77
    if-eqz p1, :cond_1

    .line 79
    const/16 v2, 0x800

    new-array v0, v2, [B

    .line 81
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 86
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 97
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :goto_1
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to copy input to output stream. Output stream is null."

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to copy input to output stream. Input stream is null."

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/16 v2, 0x800

    new-array v0, v2, [B

    .line 114
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 115
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 119
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 3
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/16 v2, 0x800

    new-array v0, v2, [C

    .line 136
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "charsRead":I
    if-lez v1, :cond_0

    .line 137
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 141
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 142
    return-void
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static delete(Ljava/io/File;Z)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "recursive"    # Z

    .prologue
    .line 170
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "osName":Ljava/lang/String;
    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0, p1, v1}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;ZZ)Z

    move-result v1

    return v1
.end method

.method public static delete(Ljava/io/File;ZZ)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "recursive"    # Z
    .param p2, "garbageCollect"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 191
    const/4 v2, 0x1

    .line 192
    .local v2, "result":Z
    move v3, p2

    .line 194
    .local v3, "runGC":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 195
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 199
    .local v0, "entries":[Ljava/io/File;
    array-length v6, v0

    if-lez v6, :cond_2

    .line 200
    if-eqz p1, :cond_1

    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v2, :cond_2

    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 202
    if-eqz v3, :cond_0

    .line 203
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 204
    const/4 v3, 0x0

    .line 207
    :cond_0
    aget-object v6, v0, v1

    invoke-static {v6, v4, v5}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;ZZ)Z

    move-result v2

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 215
    .end local v0    # "entries":[Ljava/io/File;
    :cond_2
    if-eqz v3, :cond_3

    .line 216
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 217
    const/4 v3, 0x0

    .line 220
    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 223
    :cond_4
    :goto_1
    return v2

    :cond_5
    move v2, v5

    .line 220
    goto :goto_1
.end method

.method public static exhaust(Ljava/io/InputStream;)J
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 235
    const-wide/16 v2, -0x1

    .line 237
    .local v2, "result":J
    if-eqz p0, :cond_1

    .line 238
    const/16 v4, 0x800

    new-array v0, v4, [B

    .line 239
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 240
    .local v1, "read":I
    if-ne v1, v6, :cond_0

    const-wide/16 v2, -0x1

    .line 242
    :goto_0
    if-eq v1, v6, :cond_1

    .line 243
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 244
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 240
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 248
    .end local v0    # "buf":[B
    .end local v1    # "read":I
    :cond_1
    return-wide v2
.end method

.method public static getAvailableSize(Lorg/restlet/representation/Representation;)J
    .locals 4
    .param p0, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    const-wide/16 v0, -0x1

    .line 261
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v2

    if-nez v2, :cond_1

    .line 262
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    .line 281
    :cond_0
    :goto_0
    return-wide v0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 264
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->hasKnownSize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->hasKnownSize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    .line 274
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getReader(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Reader;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 298
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 301
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static getReader(Lorg/restlet/representation/WriterRepresentation;)Ljava/io/Reader;
    .locals 8
    .param p0, "representation"    # Lorg/restlet/representation/WriterRepresentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v3, 0x0

    .line 317
    .local v3, "result":Ljava/io/Reader;
    sget-object v5, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v6, Lorg/restlet/engine/Edition;->GAE:Lorg/restlet/engine/Edition;

    if-eq v5, v6, :cond_1

    .line 318
    new-instance v2, Ljava/io/PipedWriter;

    invoke-direct {v2}, Ljava/io/PipedWriter;-><init>()V

    .line 321
    .local v2, "pipedWriter":Ljava/io/PipedWriter;
    new-instance v1, Ljava/io/PipedReader;

    invoke-direct {v1, v2}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;)V

    .line 326
    .local v1, "pipedReader":Ljava/io/PipedReader;
    new-instance v4, Lorg/restlet/engine/io/BioUtils$1;

    invoke-direct {v4, p0, v2}, Lorg/restlet/engine/io/BioUtils$1;-><init>(Lorg/restlet/representation/WriterRepresentation;Ljava/io/PipedWriter;)V

    .line 347
    .local v4, "task":Ljava/lang/Runnable;
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v0

    .line 350
    .local v0, "application":Lorg/restlet/Application;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/restlet/Application;->getTaskService()Lorg/restlet/service/TaskService;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 351
    invoke-virtual {v0}, Lorg/restlet/Application;->getTaskService()Lorg/restlet/service/TaskService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/restlet/service/TaskService;->execute(Ljava/lang/Runnable;)V

    .line 357
    :goto_0
    move-object v3, v1

    .line 363
    .end local v0    # "application":Lorg/restlet/Application;
    .end local v1    # "pipedReader":Ljava/io/PipedReader;
    .end local v2    # "pipedWriter":Ljava/io/PipedWriter;
    .end local v4    # "task":Ljava/lang/Runnable;
    :goto_1
    return-object v3

    .line 353
    .restart local v0    # "application":Lorg/restlet/Application;
    .restart local v1    # "pipedReader":Ljava/io/PipedReader;
    .restart local v2    # "pipedWriter":Ljava/io/PipedWriter;
    .restart local v4    # "task":Ljava/lang/Runnable;
    :cond_0
    const-string v5, "Restlet-BioUtils"

    invoke-static {v4, v5}, Lorg/restlet/engine/Engine;->createThreadWithLocalVariables(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 359
    .end local v0    # "application":Lorg/restlet/Application;
    .end local v1    # "pipedReader":Ljava/io/PipedReader;
    .end local v2    # "pipedWriter":Ljava/io/PipedWriter;
    .end local v4    # "task":Ljava/lang/Runnable;
    :cond_1
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "The GAE edition is unable to return a reader for a writer representation."

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getStream(Ljava/io/Reader;Lorg/restlet/data/CharacterSet;)Ljava/io/InputStream;
    .locals 6
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 394
    .local v1, "result":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/restlet/engine/io/ReaderInputStream;

    invoke-direct {v2, p0, p1}, Lorg/restlet/engine/io/ReaderInputStream;-><init>(Ljava/io/Reader;Lorg/restlet/data/CharacterSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Ljava/io/InputStream;
    .local v2, "result":Ljava/io/InputStream;
    move-object v1, v2

    .line 400
    .end local v2    # "result":Ljava/io/InputStream;
    .restart local v1    # "result":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unable to create the reader input stream"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getStream(Lorg/restlet/representation/Representation;)Ljava/io/InputStream;
    .locals 8
    .param p0, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 414
    const/4 v3, 0x0

    .line 416
    .local v3, "result":Ljava/io/InputStream;
    sget-object v5, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v6, Lorg/restlet/engine/Edition;->GAE:Lorg/restlet/engine/Edition;

    if-eq v5, v6, :cond_2

    .line 417
    if-nez p0, :cond_0

    .line 418
    const/4 v5, 0x0

    .line 464
    :goto_0
    return-object v5

    .line 421
    :cond_0
    new-instance v2, Lorg/restlet/engine/io/PipeStream;

    invoke-direct {v2}, Lorg/restlet/engine/io/PipeStream;-><init>()V

    .line 422
    .local v2, "pipe":Lorg/restlet/engine/io/PipeStream;
    invoke-virtual {v2}, Lorg/restlet/engine/io/PipeStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 426
    .local v1, "os":Ljava/io/OutputStream;
    new-instance v4, Lorg/restlet/engine/io/BioUtils$2;

    invoke-direct {v4, p0, v1}, Lorg/restlet/engine/io/BioUtils$2;-><init>(Lorg/restlet/representation/Representation;Ljava/io/OutputStream;)V

    .line 447
    .local v4, "task":Ljava/lang/Runnable;
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v0

    .line 450
    .local v0, "application":Lorg/restlet/Application;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/restlet/Application;->getTaskService()Lorg/restlet/service/TaskService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 451
    invoke-virtual {v0}, Lorg/restlet/Application;->getTaskService()Lorg/restlet/service/TaskService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/restlet/service/TaskService;->execute(Ljava/lang/Runnable;)V

    .line 457
    :goto_1
    invoke-virtual {v2}, Lorg/restlet/engine/io/PipeStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .end local v0    # "application":Lorg/restlet/Application;
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v2    # "pipe":Lorg/restlet/engine/io/PipeStream;
    .end local v4    # "task":Ljava/lang/Runnable;
    :goto_2
    move-object v5, v3

    .line 464
    goto :goto_0

    .line 453
    .restart local v0    # "application":Lorg/restlet/Application;
    .restart local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "pipe":Lorg/restlet/engine/io/PipeStream;
    .restart local v4    # "task":Ljava/lang/Runnable;
    :cond_1
    const-string v5, "Restlet-BioUtils"

    invoke-static {v4, v5}, Lorg/restlet/engine/Engine;->createThreadWithLocalVariables(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 459
    .end local v0    # "application":Lorg/restlet/Application;
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v2    # "pipe":Lorg/restlet/engine/io/PipeStream;
    .end local v4    # "task":Ljava/lang/Runnable;
    :cond_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "The GAE edition is unable to get an InputStream out of an OutputRepresentation."

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getStream(Ljava/io/Writer;Lorg/restlet/data/CharacterSet;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 378
    new-instance v0, Lorg/restlet/engine/io/WriterOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/io/WriterOutputStream;-><init>(Ljava/io/Writer;Lorg/restlet/data/CharacterSet;)V

    return-object v0
.end method

.method public static getText(Lorg/restlet/representation/Representation;)Ljava/lang/String;
    .locals 6
    .param p0, "representation"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 482
    const-string v0, ""

    .line 491
    :cond_0
    :goto_0
    return-object v0

    .line 484
    :cond_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 485
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-virtual {p0, v1}, Lorg/restlet/representation/Representation;->write(Ljava/io/Writer;)V

    .line 486
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 487
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWriter(Ljava/io/OutputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Writer;
    .locals 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, "result":Ljava/io/Writer;
    if-eqz p1, :cond_0

    .line 509
    new-instance v0, Ljava/io/OutputStreamWriter;

    .end local v0    # "result":Ljava/io/Writer;
    invoke-virtual {p1}, Lorg/restlet/data/CharacterSet;->toCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 517
    .restart local v0    # "result":Ljava/io/Writer;
    :goto_0
    return-object v0

    .line 513
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    .end local v0    # "result":Ljava/io/Writer;
    sget-object v1, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v1}, Lorg/restlet/data/CharacterSet;->toCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .restart local v0    # "result":Ljava/io/Writer;
    goto :goto_0
.end method

.method public static toByteArray([C)[B
    .locals 1
    .param p0, "chars"    # [C

    .prologue
    .line 528
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/restlet/engine/io/BioUtils;->toByteArray([CLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray([CLjava/lang/String;)[B
    .locals 4
    .param p0, "chars"    # [C
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 543
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 545
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v2, v3, [B

    .line 546
    .local v2, "r":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 547
    return-object v2
.end method

.method public static toCharArray([B)[C
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 559
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/restlet/engine/io/BioUtils;->toCharArray([BLjava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray([BLjava/lang/String;)[C
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 575
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 577
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    new-array v2, v3, [C

    .line 578
    .local v2, "r":[C
    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 579
    return-object v2
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 9
    .param p0, "byteArray"    # [B

    .prologue
    .line 590
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x2

    new-array v2, v7, [C

    .line 591
    .local v2, "hexChars":[C
    const/4 v3, 0x0

    .line 593
    .local v3, "i":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v1, v0, v5

    .line 594
    .local v1, "b":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    sget-object v7, Lorg/restlet/engine/io/BioUtils;->HEXDIGITS:[C

    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v4

    .line 595
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    sget-object v7, Lorg/restlet/engine/io/BioUtils;->HEXDIGITS:[C

    and-int/lit8 v8, v1, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v3

    .line 593
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 598
    .end local v1    # "b":B
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    return-object v7
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/restlet/engine/io/BioUtils;->toString(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 633
    if-eqz p1, :cond_1

    .line 634
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/restlet/engine/io/BioUtils;->toString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 646
    :cond_0
    :goto_1
    return-object v0

    .line 637
    :cond_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/restlet/engine/io/BioUtils;->toString(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 6
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    .line 659
    const/4 v3, 0x0

    .line 661
    .local v3, "result":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 663
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v4, "sb":Ljava/lang/StringBuilder;
    instance-of v5, p0, Ljava/io/BufferedReader;

    if-eqz v5, :cond_0

    check-cast p0, Ljava/io/BufferedReader;

    .end local p0    # "reader":Ljava/io/Reader;
    move-object v0, p0

    .line 666
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    const/16 v5, 0x800

    new-array v1, v5, [C

    .line 667
    .local v1, "buffer":[C
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .line 669
    .local v2, "charsRead":I
    :goto_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 670
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    goto :goto_1

    .line 664
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buffer":[C
    .end local v2    # "charsRead":I
    .restart local p0    # "reader":Ljava/io/Reader;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    sget v5, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {v0, p0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0

    .line 676
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v5

    .line 681
    :cond_1
    :goto_2
    return-object v3

    .line 674
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":[C
    .restart local v2    # "charsRead":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 675
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2
.end method
