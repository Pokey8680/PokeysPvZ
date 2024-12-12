.class final Lorg/restlet/engine/io/BioUtils$2;
.super Ljava/lang/Object;
.source "BioUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/io/BioUtils;->getStream(Lorg/restlet/representation/Representation;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$os:Ljava/io/OutputStream;

.field final synthetic val$representation:Lorg/restlet/representation/Representation;


# direct methods
.method constructor <init>(Lorg/restlet/representation/Representation;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lorg/restlet/engine/io/BioUtils$2;->val$representation:Lorg/restlet/representation/Representation;

    iput-object p2, p0, Lorg/restlet/engine/io/BioUtils$2;->val$os:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 429
    :try_start_0
    iget-object v2, p0, Lorg/restlet/engine/io/BioUtils$2;->val$representation:Lorg/restlet/representation/Representation;

    iget-object v3, p0, Lorg/restlet/engine/io/BioUtils$2;->val$os:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    .line 430
    iget-object v2, p0, Lorg/restlet/engine/io/BioUtils$2;->val$os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    iget-object v2, p0, Lorg/restlet/engine/io/BioUtils$2;->val$os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "ioe2":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while closing the pipe."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 431
    .end local v1    # "ioe2":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 432
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while writing to the piped input stream."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    :try_start_3
    iget-object v2, p0, Lorg/restlet/engine/io/BioUtils$2;->val$os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 439
    :catch_2
    move-exception v1

    .line 440
    .restart local v1    # "ioe2":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while closing the pipe."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 437
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "ioe2":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 438
    :try_start_4
    iget-object v3, p0, Lorg/restlet/engine/io/BioUtils$2;->val$os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 442
    :goto_1
    throw v2

    .line 439
    :catch_3
    move-exception v1

    .line 440
    .restart local v1    # "ioe2":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Error while closing the pipe."

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
