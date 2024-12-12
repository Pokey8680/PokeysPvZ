.class public final Lorg/restlet/util/ServiceList;
.super Lorg/restlet/util/WrapperList;
.source "ServiceList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/WrapperList",
        "<",
        "Lorg/restlet/service/Service;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile context:Lorg/restlet/Context;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    .line 62
    iput-object p1, p0, Lorg/restlet/util/ServiceList;->context:Lorg/restlet/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p2, Lorg/restlet/service/Service;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/util/ServiceList;->add(ILorg/restlet/service/Service;)V

    return-void
.end method

.method public add(ILorg/restlet/service/Service;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "service"    # Lorg/restlet/service/Service;

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/restlet/service/Service;->setContext(Lorg/restlet/Context;)V

    .line 68
    invoke-super {p0, p1, p2}, Lorg/restlet/util/WrapperList;->add(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lorg/restlet/service/Service;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/restlet/service/Service;)Z
    .locals 1
    .param p1, "service"    # Lorg/restlet/service/Service;

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/service/Service;->setContext(Lorg/restlet/Context;)V

    .line 74
    invoke-super {p0, p1}, Lorg/restlet/util/WrapperList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/restlet/service/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "services":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/restlet/service/Service;>;"
    if-eqz p2, :cond_0

    .line 91
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/service/Service;

    .line 92
    .local v1, "service":Lorg/restlet/service/Service;
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/service/Service;->setContext(Lorg/restlet/Context;)V

    goto :goto_0

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "service":Lorg/restlet/service/Service;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/restlet/util/WrapperList;->addAll(ILjava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/restlet/service/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "services":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/restlet/service/Service;>;"
    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/service/Service;

    .line 81
    .local v1, "service":Lorg/restlet/service/Service;
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/service/Service;->setContext(Lorg/restlet/Context;)V

    goto :goto_0

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "service":Lorg/restlet/service/Service;
    :cond_0
    invoke-super {p0, p1}, Lorg/restlet/util/WrapperList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public get(Ljava/lang/Class;)Lorg/restlet/service/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/restlet/service/Service;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/service/Service;

    .line 111
    .local v1, "service":Lorg/restlet/service/Service;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    .end local v1    # "service":Lorg/restlet/service/Service;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/restlet/util/ServiceList;->context:Lorg/restlet/Context;

    return-object v0
.end method

.method public declared-synchronized set(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/service/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/service/Service;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->clear()V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lorg/restlet/util/ServiceList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Lorg/restlet/service/Service;)V
    .locals 8
    .param p1, "newService"    # Lorg/restlet/service/Service;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 152
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/service/Service;>;"
    const/4 v2, 0x0

    .line 154
    .local v2, "replaced":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 155
    invoke-virtual {p0, v1}, Lorg/restlet/util/ServiceList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/service/Service;

    .line 157
    .local v3, "service":Lorg/restlet/service/Service;
    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    :try_start_1
    invoke-virtual {v3}, Lorg/restlet/service/Service;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :goto_1
    :try_start_2
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v2, 0x1

    .line 154
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Unable to stop service replaced"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "replaced":Z
    .end local v3    # "service":Lorg/restlet/service/Service;
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/service/Service;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 169
    .restart local v1    # "i":I
    .restart local v2    # "replaced":Z
    .restart local v3    # "service":Lorg/restlet/service/Service;
    .restart local v4    # "services":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/service/Service;>;"
    :cond_1
    :try_start_3
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    .end local v3    # "service":Lorg/restlet/service/Service;
    :cond_2
    if-nez v2, :cond_3

    .line 175
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_3
    invoke-virtual {p0, v4}, Lorg/restlet/util/ServiceList;->set(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    monitor-exit p0

    return-void
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 189
    iput-object p1, p0, Lorg/restlet/util/ServiceList;->context:Lorg/restlet/Context;

    .line 191
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/service/Service;

    .line 192
    .local v1, "service":Lorg/restlet/service/Service;
    invoke-virtual {v1, p1}, Lorg/restlet/service/Service;->setContext(Lorg/restlet/Context;)V

    goto :goto_0

    .line 194
    .end local v1    # "service":Lorg/restlet/service/Service;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/service/Service;

    .line 203
    .local v1, "service":Lorg/restlet/service/Service;
    invoke-virtual {v1}, Lorg/restlet/service/Service;->start()V

    goto :goto_0

    .line 205
    .end local v1    # "service":Lorg/restlet/service/Service;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/restlet/util/ServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/service/Service;

    .line 214
    .local v1, "service":Lorg/restlet/service/Service;
    invoke-virtual {v1}, Lorg/restlet/service/Service;->stop()V

    goto :goto_0

    .line 216
    .end local v1    # "service":Lorg/restlet/service/Service;
    :cond_0
    return-void
.end method
