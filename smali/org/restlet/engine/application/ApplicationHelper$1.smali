.class Lorg/restlet/engine/application/ApplicationHelper$1;
.super Lorg/restlet/Restlet;
.source "ApplicationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/application/ApplicationHelper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/restlet/data/Protocol;",
            "Lorg/restlet/Client;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/restlet/engine/application/ApplicationHelper;


# direct methods
.method constructor <init>(Lorg/restlet/engine/application/ApplicationHelper;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lorg/restlet/engine/application/ApplicationHelper$1;->this$0:Lorg/restlet/engine/application/ApplicationHelper;

    invoke-direct {p0}, Lorg/restlet/Restlet;-><init>()V

    .line 134
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/application/ApplicationHelper$1;->clients:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 7
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 138
    invoke-virtual {p1}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v2

    .line 139
    .local v2, "rProtocol":Lorg/restlet/data/Protocol;
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v3

    .line 140
    .local v3, "rReference":Lorg/restlet/data/Reference;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 144
    .local v1, "protocol":Lorg/restlet/data/Protocol;
    :goto_0
    if-eqz v1, :cond_3

    .line 145
    iget-object v4, p0, Lorg/restlet/engine/application/ApplicationHelper$1;->clients:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Client;

    .line 147
    .local v0, "c":Lorg/restlet/Client;
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lorg/restlet/Client;

    .end local v0    # "c":Lorg/restlet/Client;
    invoke-direct {v0, v1}, Lorg/restlet/Client;-><init>(Lorg/restlet/data/Protocol;)V

    .line 149
    .restart local v0    # "c":Lorg/restlet/Client;
    iget-object v4, p0, Lorg/restlet/engine/application/ApplicationHelper$1;->clients:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper$1;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added runtime client for protocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/restlet/Client;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 163
    .end local v0    # "c":Lorg/restlet/Client;
    :goto_1
    return-void

    .line 140
    .end local v1    # "protocol":Lorg/restlet/data/Protocol;
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/restlet/data/Reference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 157
    .restart local v1    # "protocol":Lorg/restlet/data/Protocol;
    :cond_3
    sget-object v4, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v5, "The server isn\'t properly configured to handle client calls."

    invoke-virtual {p2, v4, v5}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper$1;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no protocol detected for this request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/restlet/Restlet;->stop()V

    .line 168
    iget-object v2, p0, Lorg/restlet/engine/application/ApplicationHelper$1;->clients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Client;

    .line 169
    .local v0, "client":Lorg/restlet/Client;
    invoke-virtual {v0}, Lorg/restlet/Client;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "client":Lorg/restlet/Client;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 171
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
