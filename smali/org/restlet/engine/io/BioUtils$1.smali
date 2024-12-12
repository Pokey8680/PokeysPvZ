.class final Lorg/restlet/engine/io/BioUtils$1;
.super Ljava/lang/Object;
.source "BioUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/io/BioUtils;->getReader(Lorg/restlet/representation/WriterRepresentation;)Ljava/io/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pipedWriter:Ljava/io/PipedWriter;

.field final synthetic val$representation:Lorg/restlet/representation/WriterRepresentation;


# direct methods
.method constructor <init>(Lorg/restlet/representation/WriterRepresentation;Ljava/io/PipedWriter;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lorg/restlet/engine/io/BioUtils$1;->val$representation:Lorg/restlet/representation/WriterRepresentation;

    iput-object p2, p0, Lorg/restlet/engine/io/BioUtils$1;->val$pipedWriter:Ljava/io/PipedWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 329
    :try_start_0
    iget-object v2, p0, Lorg/restlet/engine/io/BioUtils$1;->val$representation:Lorg/restlet/representation/WriterRepresentation;

    iget-object v3, p0, Lorg/restlet/engine/io/BioUtils$1;->val$pipedWriter:Ljava/io/PipedWriter;

    invoke-virtual {v2, v3}, Lorg/restlet/representation/WriterRepresentation;->write(Ljava/io/Writer;)V

    .line 330
    iget-object v2, p0, Lorg/restlet/engine/io/BioUtils$1;->val$pipedWriter:Ljava/io/PipedWriter;

    invoke-virtual {v2}, Ljava/io/PipedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :try_start_1
    iget-object v2, p0, Lorg/restlet/engine/io/BioUtils$1;->val$pipedWriter:Ljava/io/PipedWriter;

    invoke-virtual {v2}, Ljava/io/PipedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "ioe2":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while closing the pipe."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 331
    .end local v1    # "ioe2":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 332
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while writing to the piped reader."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    :try_start_3
    iget-object v2, p0, Lorg/restlet/engine/io/BioUtils$1;->val$pipedWriter:Ljava/io/PipedWriter;

    invoke-virtual {v2}, Ljava/io/PipedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 339
    :catch_2
    move-exception v1

    .line 340
    .restart local v1    # "ioe2":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while closing the pipe."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 337
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "ioe2":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 338
    :try_start_4
    iget-object v3, p0, Lorg/restlet/engine/io/BioUtils$1;->val$pipedWriter:Ljava/io/PipedWriter;

    invoke-virtual {v3}, Ljava/io/PipedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 342
    :goto_1
    throw v2

    .line 339
    :catch_3
    move-exception v1

    .line 340
    .restart local v1    # "ioe2":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Error while closing the pipe."

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
