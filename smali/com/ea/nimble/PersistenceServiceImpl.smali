.class public Lcom/ea/nimble/PersistenceServiceImpl;
.super Lcom/ea/nimble/Component;
.source "PersistenceServiceImpl.java"

# interfaces
.implements Lcom/ea/nimble/IPersistenceService;
.implements Lcom/ea/nimble/LogSource;


# instance fields
.field private m_encryptor:Lcom/ea/nimble/Encryptor;

.field protected m_persistences:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/Persistence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    return-void
.end method

.method private loadPersistenceById(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;
    .locals 7
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    const/4 v3, 0x0

    .line 158
    sget-object v4, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 160
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "persistenceKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/Persistence;

    .line 162
    .local v1, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v1, :cond_0

    .line 164
    monitor-exit v4

    move-object v3, v1

    .line 176
    :goto_0
    return-object v3

    .line 167
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    monitor-exit v4

    goto :goto_0

    .line 177
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "persistence":Lcom/ea/nimble/Persistence;
    .end local v2    # "persistenceKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 173
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "persistence":Lcom/ea/nimble/Persistence;
    .restart local v2    # "persistenceKey":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/ea/nimble/Persistence;

    .end local v1    # "persistence":Lcom/ea/nimble/Persistence;
    iget-object v3, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_encryptor:Lcom/ea/nimble/Encryptor;

    invoke-direct {v1, p1, p2, v3}, Lcom/ea/nimble/Persistence;-><init>(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Lcom/ea/nimble/Encryptor;)V

    .line 174
    .restart local v1    # "persistence":Lcom/ea/nimble/Persistence;
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/ea/nimble/Persistence;->restore(ZLandroid/content/Context;)V

    .line 175
    iget-object v3, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    goto :goto_0
.end method

.method private synchronize()V
    .locals 3

    .prologue
    .line 148
    iget-object v2, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 149
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ea/nimble/Persistence;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Persistence;

    .line 152
    .local v0, "currentPersistence":Lcom/ea/nimble/Persistence;
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    goto :goto_0

    .line 154
    .end local v0    # "currentPersistence":Lcom/ea/nimble/Persistence;
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanPersistenceReference(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V
    .locals 4
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid identifier "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for persistence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v1, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "com.ea.nimble.persistence"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "Persistence"

    return-object v0
.end method

.method public getPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    .line 59
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for persistence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 65
    :cond_0
    sget-object v2, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/PersistenceServiceImpl;->loadPersistenceById(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 68
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_1

    .line 70
    monitor-exit v2

    goto :goto_0

    .line 77
    .end local v0    # "persistence":Lcom/ea/nimble/Persistence;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    .restart local v0    # "persistence":Lcom/ea/nimble/Persistence;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/ea/nimble/Persistence;

    .end local v0    # "persistence":Lcom/ea/nimble/Persistence;
    iget-object v1, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_encryptor:Lcom/ea/nimble/Encryptor;

    invoke-direct {v0, p1, p2, v1}, Lcom/ea/nimble/Persistence;-><init>(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Lcom/ea/nimble/Encryptor;)V

    .line 75
    .restart local v0    # "persistence":Lcom/ea/nimble/Persistence;
    iget-object v1, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public migratePersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Ljava/lang/String;Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;)V
    .locals 7
    .param p1, "sourcePersistenceId"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/ea/nimble/Persistence$Storage;
    .param p3, "targetPersistenceId"    # Ljava/lang/String;
    .param p4, "mergePolicy"    # Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid identifiers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for component persistence"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v5, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v5

    .line 118
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "targetKey":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/PersistenceServiceImpl;->loadPersistenceById(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 120
    .local v1, "source":Lcom/ea/nimble/Persistence;
    if-nez v1, :cond_3

    .line 122
    sget-object v4, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->OVERWRITE:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    if-ne p4, v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-static {p3, p2}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 128
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 141
    .end local v1    # "source":Lcom/ea/nimble/Persistence;
    .end local v3    # "targetKey":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 130
    .restart local v1    # "source":Lcom/ea/nimble/Persistence;
    .restart local v3    # "targetKey":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-direct {p0, p3, p2}, Lcom/ea/nimble/PersistenceServiceImpl;->loadPersistenceById(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v2

    .line 131
    .local v2, "target":Lcom/ea/nimble/Persistence;
    if-nez v2, :cond_4

    .line 133
    new-instance v2, Lcom/ea/nimble/Persistence;

    .end local v2    # "target":Lcom/ea/nimble/Persistence;
    invoke-direct {v2, v1, p3}, Lcom/ea/nimble/Persistence;-><init>(Lcom/ea/nimble/Persistence;Ljava/lang/String;)V

    .line 134
    .restart local v2    # "target":Lcom/ea/nimble/Persistence;
    iget-object v4, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v2}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 141
    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v2, v1, p4}, Lcom/ea/nimble/Persistence;->merge(Lcom/ea/nimble/Persistence;Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removePersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    .line 83
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid identifier "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for persistence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ea/nimble/PersistenceServiceImpl;->cleanPersistenceReference(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    goto :goto_0
.end method

.method public setup()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    .line 33
    new-instance v0, Lcom/ea/nimble/Encryptor;

    invoke-direct {v0}, Lcom/ea/nimble/Encryptor;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_encryptor:Lcom/ea/nimble/Encryptor;

    .line 34
    return-void
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ea/nimble/PersistenceServiceImpl;->synchronize()V

    .line 40
    return-void
.end method

.method public teardown()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ea/nimble/PersistenceServiceImpl;->synchronize()V

    .line 47
    sget-object v1, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_encryptor:Lcom/ea/nimble/Encryptor;

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
