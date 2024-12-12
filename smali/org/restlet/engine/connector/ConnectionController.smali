.class public Lorg/restlet/engine/connector/ConnectionController;
.super Lorg/restlet/engine/connector/Controller;
.source "ConnectionController.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/restlet/engine/io/WakeupListener;


# instance fields
.field private final newRegistrations:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/util/SelectionRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selector:Ljava/nio/channels/Selector;

.field private final updatedRegistrations:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/util/SelectionRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/ConnectionHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "helper":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<*>;"
    invoke-direct {p0, p1}, Lorg/restlet/engine/connector/Controller;-><init>(Lorg/restlet/engine/connector/ConnectionHelper;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/ConnectionController;->newRegistrations:Ljava/util/Queue;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/ConnectionController;->updatedRegistrations:Ljava/util/Queue;

    .line 79
    return-void
.end method


# virtual methods
.method protected controlConnection(Lorg/restlet/engine/connector/Connection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "conn":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<*>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    if-ne v0, v1, :cond_2

    .line 98
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/engine/connector/ConnectionHelper;->checkin(Lorg/restlet/engine/connector/Connection;)V

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/ConnectionState;->CLOSING:Lorg/restlet/engine/connector/ConnectionState;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/restlet/engine/connector/Connection;->close(Z)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->hasTimedOut()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->onTimeOut()V

    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->updateState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getUpdatedRegistrations()Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/engine/connector/Connection;->onSelected(Lorg/restlet/util/SelectionRegistration;)V

    goto :goto_0
.end method

.method protected controlConnections()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/connector/Connection;

    .line 119
    .local v0, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<*>;"
    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/ConnectionController;->controlConnection(Lorg/restlet/engine/connector/Connection;)V

    goto :goto_0

    .line 121
    .end local v0    # "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<*>;"
    :cond_0
    return-void
.end method

.method protected createSelector()Ljava/nio/channels/Selector;
    .locals 5

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 132
    .local v1, "result":Ljava/nio/channels/Selector;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to open the controller\'s NIO selector"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doInit()V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->createSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/ConnectionController;->selector:Ljava/nio/channels/Selector;

    .line 146
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->createConnectionPool()V

    .line 147
    return-void
.end method

.method protected doRelease()V
    .locals 4

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to close the NIO selector"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doRun(J)V
    .locals 5
    .param p1, "sleepTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "helper.control()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 162
    invoke-super {p0, p1, p2}, Lorg/restlet/engine/connector/Controller;->doRun(J)V

    .line 163
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "controlConnections()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->controlConnections()V

    .line 165
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "registerKeys()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->registerKeys()V

    .line 167
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "updateKeys()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->updateKeys()V

    .line 169
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectKeys("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/restlet/engine/connector/ConnectionController;->selectKeys(J)V

    .line 172
    return-void
.end method

.method protected getNewRegistrations()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/util/SelectionRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lorg/restlet/engine/connector/ConnectionController;->newRegistrations:Ljava/util/Queue;

    return-object v0
.end method

.method protected getSelector()Ljava/nio/channels/Selector;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/restlet/engine/connector/ConnectionController;->selector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method protected getUpdatedRegistrations()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/util/SelectionRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/restlet/engine/connector/ConnectionController;->updatedRegistrations:Ljava/util/Queue;

    return-object v0
.end method

.method protected onSelected(Ljava/nio/channels/SelectionKey;)V
    .locals 5
    .param p1, "selectedKey"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NIO selection detected for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/util/SelectionRegistration;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/restlet/util/SelectionRegistration;->onSelected(I)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "cke":Ljava/nio/channels/CancelledKeyException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Problem during NIO selection"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getNewRegistrations()Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/util/SelectionRegistration;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onWokeup(Lorg/restlet/util/SelectionRegistration;)V
    .locals 0
    .param p1, "selectionRegistration"    # Lorg/restlet/util/SelectionRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->wakeup()V

    .line 236
    return-void
.end method

.method public register(Ljava/nio/channels/SelectableChannel;ILorg/restlet/util/SelectionListener;)Lorg/restlet/util/SelectionRegistration;
    .locals 2
    .param p1, "selectableChannel"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "interestOperations"    # I
    .param p3, "listener"    # Lorg/restlet/util/SelectionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lorg/restlet/util/SelectionRegistration;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/restlet/util/SelectionRegistration;-><init>(Ljava/nio/channels/SelectableChannel;ILorg/restlet/util/SelectionListener;Lorg/restlet/engine/io/WakeupListener;)V

    .line 255
    .local v0, "result":Lorg/restlet/util/SelectionRegistration;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getNewRegistrations()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 256
    return-object v0
.end method

.method protected registerKeys()V
    .locals 5

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getNewRegistrations()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/util/SelectionRegistration;

    .line 265
    .local v0, "newRegistration":Lorg/restlet/util/SelectionRegistration;
    :goto_0
    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering new NIO interest with selector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/util/SelectionRegistration;->register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    .line 274
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getNewRegistrations()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newRegistration":Lorg/restlet/util/SelectionRegistration;
    check-cast v0, Lorg/restlet/util/SelectionRegistration;

    .restart local v0    # "newRegistration":Lorg/restlet/util/SelectionRegistration;
    goto :goto_0

    .line 276
    :cond_1
    return-void
.end method

.method protected selectKeys(J)V
    .locals 7
    .param p1, "sleepTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/nio/channels/ClosedByInterruptException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NIO controller about to sleep "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, selecting among "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " keys...\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v1

    .line 299
    .local v1, "selectCount":I
    if-lez v1, :cond_2

    .line 300
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NIO controller selected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key(s) !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/ConnectionController;->onSelected(Ljava/nio/channels/SelectionKey;)V

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 311
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v4, "NIO controlled selected no key"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 315
    :cond_3
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 319
    invoke-super {p0}, Lorg/restlet/engine/connector/Controller;->shutdown()V

    .line 320
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->wakeup()V

    .line 321
    return-void
.end method

.method protected updateKeys()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getUpdatedRegistrations()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/util/SelectionRegistration;

    .line 332
    .local v0, "updatedRegistration":Lorg/restlet/util/SelectionRegistration;
    :goto_0
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating NIO interest with selector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 340
    :cond_0
    invoke-virtual {v0}, Lorg/restlet/util/SelectionRegistration;->update()Ljava/nio/channels/SelectionKey;

    .line 341
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getUpdatedRegistrations()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "updatedRegistration":Lorg/restlet/util/SelectionRegistration;
    check-cast v0, Lorg/restlet/util/SelectionRegistration;

    .restart local v0    # "updatedRegistration":Lorg/restlet/util/SelectionRegistration;
    goto :goto_0

    .line 343
    :cond_1
    return-void
.end method

.method public wakeup()V
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 352
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "NIO controller woke up"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void
.end method
