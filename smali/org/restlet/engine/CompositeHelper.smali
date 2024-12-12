.class public abstract Lorg/restlet/engine/CompositeHelper;
.super Lorg/restlet/engine/RestletHelper;
.source "CompositeHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/restlet/Restlet;",
        ">",
        "Lorg/restlet/engine/RestletHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile firstInboundFilter:Lorg/restlet/routing/Filter;

.field private volatile firstOutboundFilter:Lorg/restlet/routing/Filter;

.field private volatile inboundNext:Lorg/restlet/Restlet;

.field private volatile lastInboundFilter:Lorg/restlet/routing/Filter;

.field private volatile lastOutboundFilter:Lorg/restlet/routing/Filter;

.field private volatile outboundNext:Lorg/restlet/Restlet;


# direct methods
.method public constructor <init>(Lorg/restlet/Restlet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    .local p1, "helped":Lorg/restlet/Restlet;, "TT;"
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Lorg/restlet/engine/RestletHelper;-><init>(Lorg/restlet/Restlet;)V

    .line 78
    iput-object v0, p0, Lorg/restlet/engine/CompositeHelper;->inboundNext:Lorg/restlet/Restlet;

    .line 79
    iput-object v0, p0, Lorg/restlet/engine/CompositeHelper;->firstInboundFilter:Lorg/restlet/routing/Filter;

    .line 80
    iput-object v0, p0, Lorg/restlet/engine/CompositeHelper;->firstOutboundFilter:Lorg/restlet/routing/Filter;

    .line 81
    iput-object v0, p0, Lorg/restlet/engine/CompositeHelper;->lastInboundFilter:Lorg/restlet/routing/Filter;

    .line 82
    iput-object v0, p0, Lorg/restlet/engine/CompositeHelper;->lastOutboundFilter:Lorg/restlet/routing/Filter;

    .line 83
    iput-object v0, p0, Lorg/restlet/engine/CompositeHelper;->outboundNext:Lorg/restlet/Restlet;

    .line 84
    return-void
.end method


# virtual methods
.method protected declared-synchronized addInboundFilter(Lorg/restlet/routing/Filter;)V
    .locals 2
    .param p1, "filter"    # Lorg/restlet/routing/Filter;

    .prologue
    .line 93
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getInboundNext()Lorg/restlet/Restlet;

    move-result-object v0

    .line 95
    .local v0, "next":Lorg/restlet/Restlet;
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getFirstInboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Lorg/restlet/engine/CompositeHelper;->setFirstInboundFilter(Lorg/restlet/routing/Filter;)V

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/restlet/engine/CompositeHelper;->setLastInboundFilter(Lorg/restlet/routing/Filter;)V

    .line 102
    invoke-virtual {p0, v0}, Lorg/restlet/engine/CompositeHelper;->setInboundNext(Lorg/restlet/Restlet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastInboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastInboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/restlet/routing/Filter;->setNext(Lorg/restlet/Restlet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "next":Lorg/restlet/Restlet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized addOutboundFilter(Lorg/restlet/routing/Filter;)V
    .locals 2
    .param p1, "filter"    # Lorg/restlet/routing/Filter;

    .prologue
    .line 112
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getOutboundNext()Lorg/restlet/Restlet;

    move-result-object v0

    .line 114
    .local v0, "next":Lorg/restlet/Restlet;
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getFirstOutboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {p0, p1}, Lorg/restlet/engine/CompositeHelper;->setFirstOutboundFilter(Lorg/restlet/routing/Filter;)V

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/restlet/engine/CompositeHelper;->setLastOutboundFilter(Lorg/restlet/routing/Filter;)V

    .line 121
    invoke-virtual {p0, v0}, Lorg/restlet/engine/CompositeHelper;->setOutboundNext(Lorg/restlet/Restlet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 116
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastOutboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastOutboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/restlet/routing/Filter;->setNext(Lorg/restlet/Restlet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "next":Lorg/restlet/Restlet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lorg/restlet/engine/CompositeHelper;->setFirstInboundFilter(Lorg/restlet/routing/Filter;)V

    .line 129
    invoke-virtual {p0, v0}, Lorg/restlet/engine/CompositeHelper;->setFirstOutboundFilter(Lorg/restlet/routing/Filter;)V

    .line 130
    invoke-virtual {p0, v0}, Lorg/restlet/engine/CompositeHelper;->setInboundNext(Lorg/restlet/Restlet;)V

    .line 131
    invoke-virtual {p0, v0}, Lorg/restlet/engine/CompositeHelper;->setLastInboundFilter(Lorg/restlet/routing/Filter;)V

    .line 132
    invoke-virtual {p0, v0}, Lorg/restlet/engine/CompositeHelper;->setLastOutboundFilter(Lorg/restlet/routing/Filter;)V

    .line 133
    invoke-virtual {p0, v0}, Lorg/restlet/engine/CompositeHelper;->setOutboundNext(Lorg/restlet/Restlet;)V

    .line 134
    return-void
.end method

.method public getFirstInboundFilter()Lorg/restlet/routing/Filter;
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/CompositeHelper;->firstInboundFilter:Lorg/restlet/routing/Filter;

    return-object v0
.end method

.method public getFirstOutboundFilter()Lorg/restlet/routing/Filter;
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/CompositeHelper;->firstOutboundFilter:Lorg/restlet/routing/Filter;

    return-object v0
.end method

.method protected declared-synchronized getInboundNext()Lorg/restlet/Restlet;
    .locals 2

    .prologue
    .line 160
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 162
    .local v0, "result":Lorg/restlet/Restlet;
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastInboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastInboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 168
    :goto_0
    monitor-exit p0

    return-object v0

    .line 165
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/restlet/engine/CompositeHelper;->inboundNext:Lorg/restlet/Restlet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected getLastInboundFilter()Lorg/restlet/routing/Filter;
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/CompositeHelper;->lastInboundFilter:Lorg/restlet/routing/Filter;

    return-object v0
.end method

.method protected getLastOutboundFilter()Lorg/restlet/routing/Filter;
    .locals 1

    .prologue
    .line 186
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/CompositeHelper;->lastOutboundFilter:Lorg/restlet/routing/Filter;

    return-object v0
.end method

.method public declared-synchronized getOutboundNext()Lorg/restlet/Restlet;
    .locals 2

    .prologue
    .line 195
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 197
    .local v0, "result":Lorg/restlet/Restlet;
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastOutboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastOutboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 203
    :goto_0
    monitor-exit p0

    return-object v0

    .line 200
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/restlet/engine/CompositeHelper;->outboundNext:Lorg/restlet/Restlet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 208
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/restlet/engine/RestletHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 210
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getFirstInboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getFirstInboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/routing/Filter;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 221
    :goto_0
    return-void

    .line 213
    :cond_0
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 214
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " class has no Restlet defined to process calls. Maybe it wasn\'t properly started."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setFirstInboundFilter(Lorg/restlet/routing/Filter;)V
    .locals 0
    .param p1, "firstInboundFilter"    # Lorg/restlet/routing/Filter;

    .prologue
    .line 230
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    iput-object p1, p0, Lorg/restlet/engine/CompositeHelper;->firstInboundFilter:Lorg/restlet/routing/Filter;

    .line 231
    return-void
.end method

.method protected setFirstOutboundFilter(Lorg/restlet/routing/Filter;)V
    .locals 0
    .param p1, "firstOutboundFilter"    # Lorg/restlet/routing/Filter;

    .prologue
    .line 240
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    iput-object p1, p0, Lorg/restlet/engine/CompositeHelper;->firstOutboundFilter:Lorg/restlet/routing/Filter;

    .line 241
    return-void
.end method

.method protected declared-synchronized setInboundNext(Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 250
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastInboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastInboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/routing/Filter;->setNext(Lorg/restlet/Restlet;)V

    .line 254
    :cond_0
    iput-object p1, p0, Lorg/restlet/engine/CompositeHelper;->inboundNext:Lorg/restlet/Restlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setLastInboundFilter(Lorg/restlet/routing/Filter;)V
    .locals 0
    .param p1, "last"    # Lorg/restlet/routing/Filter;

    .prologue
    .line 264
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    iput-object p1, p0, Lorg/restlet/engine/CompositeHelper;->lastInboundFilter:Lorg/restlet/routing/Filter;

    .line 265
    return-void
.end method

.method protected setLastOutboundFilter(Lorg/restlet/routing/Filter;)V
    .locals 0
    .param p1, "last"    # Lorg/restlet/routing/Filter;

    .prologue
    .line 274
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    iput-object p1, p0, Lorg/restlet/engine/CompositeHelper;->lastOutboundFilter:Lorg/restlet/routing/Filter;

    .line 275
    return-void
.end method

.method protected declared-synchronized setOutboundNext(Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 284
    .local p0, "this":Lorg/restlet/engine/CompositeHelper;, "Lorg/restlet/engine/CompositeHelper<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastOutboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lorg/restlet/engine/CompositeHelper;->getLastOutboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/routing/Filter;->setNext(Lorg/restlet/Restlet;)V

    .line 288
    :cond_0
    iput-object p1, p0, Lorg/restlet/engine/CompositeHelper;->outboundNext:Lorg/restlet/Restlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
