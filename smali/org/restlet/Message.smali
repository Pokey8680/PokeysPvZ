.class public abstract Lorg/restlet/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private volatile attributes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cacheDirectives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/CacheDirective;",
            ">;"
        }
    .end annotation
.end field

.field private volatile date:Ljava/util/Date;

.field private volatile entity:Lorg/restlet/representation/Representation;

.field private volatile entityText:Ljava/lang/String;

.field private volatile onError:Lorg/restlet/Uniform;

.field private volatile onSent:Lorg/restlet/Uniform;

.field private volatile recipientsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/RecipientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile warnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Warning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/representation/Representation;

    invoke-direct {p0, v0}, Lorg/restlet/Message;-><init>(Lorg/restlet/representation/Representation;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v0, p0, Lorg/restlet/Message;->attributes:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    iput-object v0, p0, Lorg/restlet/Message;->cacheDirectives:Ljava/util/List;

    .line 99
    iput-object v0, p0, Lorg/restlet/Message;->date:Ljava/util/Date;

    .line 100
    iput-object p1, p0, Lorg/restlet/Message;->entity:Lorg/restlet/representation/Representation;

    .line 101
    iput-object v0, p0, Lorg/restlet/Message;->entityText:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lorg/restlet/Message;->onSent:Lorg/restlet/Uniform;

    .line 103
    iput-object v0, p0, Lorg/restlet/Message;->recipientsInfo:Ljava/util/List;

    .line 104
    iput-object v0, p0, Lorg/restlet/Message;->warnings:Ljava/util/List;

    .line 105
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/concurrent/ConcurrentMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/restlet/Message;->attributes:Ljava/util/concurrent/ConcurrentMap;

    .line 154
    .local v0, "r":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Message;->attributes:Ljava/util/concurrent/ConcurrentMap;

    .line 157
    if-nez v0, :cond_0

    .line 158
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "r":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, "r":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Message;->attributes:Ljava/util/concurrent/ConcurrentMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 160
    .end local v1    # "r":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "r":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :cond_1
    iget-object v2, p0, Lorg/restlet/Message;->attributes:Ljava/util/concurrent/ConcurrentMap;

    return-object v2

    .line 160
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0    # "r":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "r":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "r":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "r":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public getCacheDirectives()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/CacheDirective;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lorg/restlet/Message;->cacheDirectives:Ljava/util/List;

    .line 177
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    if-nez v0, :cond_1

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Message;->cacheDirectives:Ljava/util/List;

    .line 180
    if-nez v0, :cond_0

    .line 181
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Message;->cacheDirectives:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 183
    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 185
    :cond_1
    return-object v0

    .line 183
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    .restart local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/restlet/Message;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getEntity()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/restlet/Message;->entity:Lorg/restlet/representation/Representation;

    return-object v0
.end method

.method public getEntityAsText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lorg/restlet/Message;->entityText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/restlet/Message;->entityText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/restlet/Message;->entityText:Ljava/lang/String;

    return-object v1

    .line 216
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->getText()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to get the entity text."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getOnError()Lorg/restlet/Uniform;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/restlet/Message;->onError:Lorg/restlet/Uniform;

    return-object v0
.end method

.method public getOnSent()Lorg/restlet/Uniform;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/restlet/Message;->onSent:Lorg/restlet/Uniform;

    return-object v0
.end method

.method public getRecipientsInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/RecipientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lorg/restlet/Message;->recipientsInfo:Ljava/util/List;

    .line 258
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    if-nez v0, :cond_1

    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Message;->recipientsInfo:Ljava/util/List;

    .line 261
    if-nez v0, :cond_0

    .line 262
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Message;->recipientsInfo:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 264
    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 266
    :cond_1
    return-object v0

    .line 264
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    .restart local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    goto :goto_0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Warning;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lorg/restlet/Message;->warnings:Ljava/util/List;

    .line 280
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    if-nez v0, :cond_1

    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Message;->warnings:Ljava/util/List;

    .line 283
    if-nez v0, :cond_0

    .line 284
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Message;->warnings:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 286
    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 288
    :cond_1
    return-object v0

    .line 286
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    .restart local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    goto :goto_0
.end method

.method public abstract isConfidential()Z
.end method

.method public isEntityAvailable()Z
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 310
    .local v0, "result":Z
    :goto_0
    return v0

    .line 309
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->release()V

    .line 322
    :cond_0
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/restlet/Message;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    monitor-enter v1

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Message;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lorg/restlet/Message;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 336
    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p0}, Lorg/restlet/Message;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    .line 340
    :cond_0
    monitor-exit v1

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCacheDirectives(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/CacheDirective;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "cacheDirectives":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    invoke-virtual {p0}, Lorg/restlet/Message;->getCacheDirectives()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Message;->getCacheDirectives()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lorg/restlet/Message;->getCacheDirectives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 356
    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/restlet/Message;->getCacheDirectives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    :cond_0
    monitor-exit v1

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 370
    iput-object p1, p0, Lorg/restlet/Message;->date:Ljava/util/Date;

    .line 371
    return-void
.end method

.method public setEntity(Ljava/lang/String;Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 392
    new-instance v0, Lorg/restlet/representation/StringRepresentation;

    invoke-direct {v0, p1, p2}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V

    invoke-virtual {p0, v0}, Lorg/restlet/Message;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 393
    return-void
.end method

.method public setEntity(Lorg/restlet/representation/Representation;)V
    .locals 0
    .param p1, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 380
    iput-object p1, p0, Lorg/restlet/Message;->entity:Lorg/restlet/representation/Representation;

    .line 381
    return-void
.end method

.method public setOnError(Lorg/restlet/Uniform;)V
    .locals 0
    .param p1, "onError"    # Lorg/restlet/Uniform;

    .prologue
    .line 403
    iput-object p1, p0, Lorg/restlet/Message;->onError:Lorg/restlet/Uniform;

    .line 404
    return-void
.end method

.method public setOnSent(Lorg/restlet/Uniform;)V
    .locals 0
    .param p1, "onSentCallback"    # Lorg/restlet/Uniform;

    .prologue
    .line 413
    iput-object p1, p0, Lorg/restlet/Message;->onSent:Lorg/restlet/Uniform;

    .line 414
    return-void
.end method

.method public setRecipientsInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/RecipientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "recipientsInfo":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    invoke-virtual {p0}, Lorg/restlet/Message;->getRecipientsInfo()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Message;->getRecipientsInfo()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lorg/restlet/Message;->getRecipientsInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 430
    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p0}, Lorg/restlet/Message;->getRecipientsInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 434
    :cond_0
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWarnings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Warning;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "warnings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    invoke-virtual {p0}, Lorg/restlet/Message;->getWarnings()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Message;->getWarnings()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lorg/restlet/Message;->getWarnings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 450
    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p0}, Lorg/restlet/Message;->getWarnings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    :cond_0
    monitor-exit v1

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
