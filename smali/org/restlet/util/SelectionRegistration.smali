.class public Lorg/restlet/util/SelectionRegistration;
.super Ljava/lang/Object;
.source "SelectionRegistration.java"


# instance fields
.field private final barrier:Ljava/util/concurrent/CyclicBarrier;

.field private volatile canceling:Z

.field private volatile interestOperations:I

.field private volatile previousInterest:I

.field private volatile readyOperations:I

.field private final selectableChannel:Ljava/nio/channels/SelectableChannel;

.field private volatile selectionKey:Ljava/nio/channels/SelectionKey;

.field private volatile selectionListener:Lorg/restlet/util/SelectionListener;

.field private volatile wakeupListener:Lorg/restlet/engine/io/WakeupListener;


# direct methods
.method public constructor <init>(ILorg/restlet/util/SelectionListener;Lorg/restlet/engine/io/WakeupListener;)V
    .locals 1
    .param p1, "interestOperations"    # I
    .param p2, "selectionListener"    # Lorg/restlet/util/SelectionListener;
    .param p3, "wakeupListener"    # Lorg/restlet/engine/io/WakeupListener;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/restlet/util/SelectionRegistration;-><init>(Ljava/nio/channels/SelectableChannel;ILorg/restlet/util/SelectionListener;Lorg/restlet/engine/io/WakeupListener;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SelectableChannel;ILorg/restlet/util/SelectionListener;Lorg/restlet/engine/io/WakeupListener;)V
    .locals 2
    .param p1, "selectableChannel"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "interestOperations"    # I
    .param p3, "selectionListener"    # Lorg/restlet/util/SelectionListener;
    .param p4, "wakeupListener"    # Lorg/restlet/engine/io/WakeupListener;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/util/SelectionRegistration;->canceling:Z

    .line 155
    iput-object p1, p0, Lorg/restlet/util/SelectionRegistration;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    .line 156
    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lorg/restlet/util/SelectionRegistration;->barrier:Ljava/util/concurrent/CyclicBarrier;

    .line 157
    iput-object p3, p0, Lorg/restlet/util/SelectionRegistration;->selectionListener:Lorg/restlet/util/SelectionListener;

    .line 158
    iput-object p4, p0, Lorg/restlet/util/SelectionRegistration;->wakeupListener:Lorg/restlet/engine/io/WakeupListener;

    .line 159
    invoke-virtual {p0, p2}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 160
    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2
    .param p0, "operation"    # I

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "ACCEPT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_1

    .line 75
    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_2

    .line 79
    const-string v1, "READ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    .line 83
    const-string v1, "WRITE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_3
    if-nez p0, :cond_4

    .line 87
    const-string v1, "NONE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addInterestOperations(I)V
    .locals 1
    .param p1, "interest"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v0

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 169
    return-void
.end method

.method public block()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling thread about to block on the NIO selection registration. Timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget v6, Lorg/restlet/engine/io/IoUtils;->TIMEOUT_MS:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms. Waiting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/restlet/util/SelectionRegistration;->barrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v5}, Ljava/util/concurrent/CyclicBarrier;->getNumberWaiting()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getWakeupListener()Lorg/restlet/engine/io/WakeupListener;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/restlet/engine/io/WakeupListener;->onWokeup(Lorg/restlet/util/SelectionRegistration;)V

    .line 191
    iget-object v2, p0, Lorg/restlet/util/SelectionRegistration;->barrier:Ljava/util/concurrent/CyclicBarrier;

    sget v3, Lorg/restlet/engine/io/IoUtils;->TIMEOUT_MS:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "The thread blocked at the cyclic barrier has timed out"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The thread blocked at the cyclic barrier has timed out."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 200
    throw v1

    .line 201
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to block the thread at the cyclic barrier"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to block the thread at the cyclic barrier."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v1    # "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 207
    throw v1
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lorg/restlet/util/SelectionRegistration;->barrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->reset()V

    .line 216
    iput-boolean v1, p0, Lorg/restlet/util/SelectionRegistration;->canceling:Z

    .line 217
    iput v1, p0, Lorg/restlet/util/SelectionRegistration;->interestOperations:I

    .line 218
    iput v1, p0, Lorg/restlet/util/SelectionRegistration;->previousInterest:I

    .line 219
    iput v1, p0, Lorg/restlet/util/SelectionRegistration;->readyOperations:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    .line 221
    return-void
.end method

.method public getInterestOperations()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lorg/restlet/util/SelectionRegistration;->interestOperations:I

    return v0
.end method

.method public getReadyOperations()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lorg/restlet/util/SelectionRegistration;->readyOperations:I

    return v0
.end method

.method public getSelectableChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/restlet/util/SelectionRegistration;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public getSelectionListener()Lorg/restlet/util/SelectionListener;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/restlet/util/SelectionRegistration;->selectionListener:Lorg/restlet/util/SelectionListener;

    return-object v0
.end method

.method public getWakeupListener()Lorg/restlet/engine/io/WakeupListener;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/restlet/util/SelectionRegistration;->wakeupListener:Lorg/restlet/engine/io/WakeupListener;

    return-object v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/restlet/util/SelectionRegistration;->canceling:Z

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getReadyOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterestReady()Z
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getReadyOperations()I

    move-result v0

    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getReadyOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getReadyOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelected(I)V
    .locals 1
    .param p1, "readyOperations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iput p1, p0, Lorg/restlet/util/SelectionRegistration;->readyOperations:I

    .line 324
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getSelectionListener()Lorg/restlet/util/SelectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->isInterestReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getSelectionListener()Lorg/restlet/util/SelectionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/restlet/util/SelectionListener;->onSelected(Lorg/restlet/util/SelectionRegistration;)V

    .line 327
    :cond_0
    return-void
.end method

.method public register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 4
    .param p1, "selector"    # Ljava/nio/channels/Selector;

    .prologue
    .line 338
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getSelectableChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v2

    invoke-virtual {v1, p1, v2, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    iget-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    return-object v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "cce":Ljava/nio/channels/ClosedChannelException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to register again"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 353
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "Resuming previous NIO interest"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 358
    :cond_0
    iget v0, p0, Lorg/restlet/util/SelectionRegistration;->previousInterest:I

    invoke-virtual {p0, v0}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 359
    return-void
.end method

.method public setCanceling(Z)V
    .locals 0
    .param p1, "canceling"    # Z

    .prologue
    .line 368
    iput-boolean p1, p0, Lorg/restlet/util/SelectionRegistration;->canceling:Z

    .line 369
    return-void
.end method

.method public setInterestOperations(I)Z
    .locals 2
    .param p1, "interest"    # I

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 382
    .local v0, "result":Z
    iget v1, p0, Lorg/restlet/util/SelectionRegistration;->interestOperations:I

    if-eq v1, p1, :cond_0

    .line 383
    iput p1, p0, Lorg/restlet/util/SelectionRegistration;->interestOperations:I

    .line 384
    const/4 v0, 0x1

    .line 387
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/restlet/util/SelectionRegistration;->setReadyOperations(I)V

    .line 388
    return v0
.end method

.method public setNoInterest()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 396
    return-void
.end method

.method public setReadInterest()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 403
    return-void
.end method

.method public setReadyOperations(I)V
    .locals 0
    .param p1, "readyOperations"    # I

    .prologue
    .line 412
    iput p1, p0, Lorg/restlet/util/SelectionRegistration;->readyOperations:I

    .line 413
    return-void
.end method

.method public setSelectionListener(Lorg/restlet/util/SelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/restlet/util/SelectionListener;

    .prologue
    .line 422
    iput-object p1, p0, Lorg/restlet/util/SelectionRegistration;->selectionListener:Lorg/restlet/util/SelectionListener;

    .line 423
    return-void
.end method

.method public setWakeupListener(Lorg/restlet/engine/io/WakeupListener;)V
    .locals 0
    .param p1, "wakeupListener"    # Lorg/restlet/engine/io/WakeupListener;

    .prologue
    .line 432
    iput-object p1, p0, Lorg/restlet/util/SelectionRegistration;->wakeupListener:Lorg/restlet/engine/io/WakeupListener;

    .line 433
    return-void
.end method

.method public setWriteInterest()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 440
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v0

    iput v0, p0, Lorg/restlet/util/SelectionRegistration;->previousInterest:I

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 450
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interest= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v1

    invoke-static {v1}, Lorg/restlet/util/SelectionRegistration;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Ready="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getReadyOperations()I

    move-result v1

    invoke-static {v1}, Lorg/restlet/util/SelectionRegistration;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Canceling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->isCanceling()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unblock()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling thread about to unblock the NIO selection registration. Timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget v6, Lorg/restlet/engine/io/IoUtils;->TIMEOUT_MS:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms. Waiting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/restlet/util/SelectionRegistration;->barrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v5}, Ljava/util/concurrent/CyclicBarrier;->getNumberWaiting()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 478
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/restlet/util/SelectionRegistration;->barrier:Ljava/util/concurrent/CyclicBarrier;

    sget v3, Lorg/restlet/engine/io/IoUtils;->TIMEOUT_MS:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to unblock the waiting thread at the cyclic barrier"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to unblock the waiting thread at the cyclic barrier."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 487
    throw v1
.end method

.method public update()Ljava/nio/channels/SelectionKey;
    .locals 5

    .prologue
    .line 500
    iget-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->isCanceling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Cancelling of the selection key requested"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 534
    :goto_0
    iget-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    return-object v1

    .line 507
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update key (old | new) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v4

    invoke-static {v4}, Lorg/restlet/util/SelectionRegistration;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v4

    invoke-static {v4}, Lorg/restlet/util/SelectionRegistration;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 519
    :cond_1
    iget-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p0}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "cke":Ljava/nio/channels/CancelledKeyException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to update a cancelled key, registering again"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 525
    iget-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/util/SelectionRegistration;->register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 529
    .end local v0    # "cke":Ljava/nio/channels/CancelledKeyException;
    :cond_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Invalid key detected, registering again"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/util/SelectionRegistration;->register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/util/SelectionRegistration;->selectionKey:Ljava/nio/channels/SelectionKey;

    goto/16 :goto_0
.end method
