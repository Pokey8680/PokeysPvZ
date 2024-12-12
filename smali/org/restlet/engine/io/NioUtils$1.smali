.class final Lorg/restlet/engine/io/NioUtils$1;
.super Ljava/lang/Object;
.source "NioUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/io/NioUtils;->getChannel(Lorg/restlet/representation/Representation;)Ljava/nio/channels/ReadableByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pipe:Ljava/nio/channels/Pipe;

.field final synthetic val$representation:Lorg/restlet/representation/Representation;


# direct methods
.method constructor <init>(Ljava/nio/channels/Pipe;Lorg/restlet/representation/Representation;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/restlet/engine/io/NioUtils$1;->val$pipe:Ljava/nio/channels/Pipe;

    iput-object p2, p0, Lorg/restlet/engine/io/NioUtils$1;->val$representation:Lorg/restlet/representation/Representation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 207
    const/4 v2, 0x0

    .line 210
    .local v2, "wbc":Ljava/nio/channels/WritableByteChannel;
    :try_start_0
    iget-object v3, p0, Lorg/restlet/engine/io/NioUtils$1;->val$pipe:Ljava/nio/channels/Pipe;

    invoke-virtual {v3}, Ljava/nio/channels/Pipe;->sink()Ljava/nio/channels/Pipe$SinkChannel;

    move-result-object v2

    .line 211
    iget-object v3, p0, Lorg/restlet/engine/io/NioUtils$1;->val$representation:Lorg/restlet/representation/Representation;

    invoke-virtual {v3, v2}, Lorg/restlet/representation/Representation;->write(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-eqz v2, :cond_0

    .line 219
    :try_start_1
    invoke-interface {v2}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Error while closing to the piped channel."

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 213
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Error while writing to the piped channel."

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    if-eqz v2, :cond_0

    .line 219
    :try_start_3
    invoke-interface {v2}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 220
    :catch_2
    move-exception v0

    .line 221
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Error while closing to the piped channel."

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 219
    :try_start_4
    invoke-interface {v2}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 225
    :cond_1
    :goto_1
    throw v3

    .line 220
    :catch_3
    move-exception v0

    .line 221
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Error while closing to the piped channel."

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
