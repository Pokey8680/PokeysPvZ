.class public Lorg/restlet/engine/application/ApplicationHelper;
.super Lorg/restlet/engine/CompositeHelper;
.source "ApplicationHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/CompositeHelper",
        "<",
        "Lorg/restlet/Application;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/restlet/Application;)V
    .locals 0
    .param p1, "application"    # Lorg/restlet/Application;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/restlet/engine/CompositeHelper;-><init>(Lorg/restlet/Restlet;)V

    .line 67
    return-void
.end method


# virtual methods
.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Application;

    invoke-static {v0}, Lorg/restlet/Application;->setCurrent(Lorg/restlet/Application;)V

    .line 84
    invoke-super {p0, p1, p2}, Lorg/restlet/engine/CompositeHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 85
    return-void
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/ApplicationHelper;->setOutboundNext(Lorg/restlet/Restlet;)V

    .line 97
    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 102
    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    .local v0, "filter":Lorg/restlet/routing/Filter;
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v3

    check-cast v3, Lorg/restlet/Application;

    invoke-virtual {v3}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/util/ServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/service/Service;

    .line 105
    .local v2, "service":Lorg/restlet/service/Service;
    invoke-virtual {v2}, Lorg/restlet/service/Service;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->getContext()Lorg/restlet/Context;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lorg/restlet/service/Service;->createInboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/ApplicationHelper;->addInboundFilter(Lorg/restlet/routing/Filter;)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->getContext()Lorg/restlet/Context;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Lorg/restlet/service/Service;->createOutboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/ApplicationHelper;->addOutboundFilter(Lorg/restlet/routing/Filter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "service":Lorg/restlet/service/Service;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 107
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "service":Lorg/restlet/service/Service;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->getContext()Lorg/restlet/Context;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v3

    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->getContext()Lorg/restlet/Context;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v3

    goto :goto_2

    .line 127
    .end local v2    # "service":Lorg/restlet/service/Service;
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v3

    check-cast v3, Lorg/restlet/Application;

    invoke-virtual {v3}, Lorg/restlet/Application;->getInboundRoot()Lorg/restlet/Restlet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/engine/application/ApplicationHelper;->setInboundNext(Lorg/restlet/Restlet;)V

    .line 129
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->getOutboundNext()Lorg/restlet/Restlet;

    move-result-object v3

    if-nez v3, :cond_5

    .line 131
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "By default, an application should be attached to a parent component in order to let application\'s outbound root handle calls properly."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 133
    new-instance v3, Lorg/restlet/engine/application/ApplicationHelper$1;

    invoke-direct {v3, p0}, Lorg/restlet/engine/application/ApplicationHelper$1;-><init>(Lorg/restlet/engine/application/ApplicationHelper;)V

    invoke-virtual {p0, v3}, Lorg/restlet/engine/application/ApplicationHelper;->setOutboundNext(Lorg/restlet/Restlet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/ApplicationHelper;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    return-void
.end method
