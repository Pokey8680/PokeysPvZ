.class public Lcom/ea/nimble/PersistenceService;
.super Ljava/lang/Object;
.source "PersistenceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/PersistenceService$PersistenceBackupAgent;,
        Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;
    }
.end annotation


# static fields
.field private static final APPLICATION_PERSISTENCE_ID:Ljava/lang/String; = "[APPLICATION]"

.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.persistence"

.field private static final NIMBLE_COMPONENT_PERSISTENCE_ID_TEMPLATE:Ljava/lang/String; = "[COMPONENT]%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static cleanReferenceToPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V
    .locals 5
    .param p0, "componentId"    # Ljava/lang/String;
    .param p1, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-static {p0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, "Persistence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid componentId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for component persistence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v1, "[COMPONENT]%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "identifier":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/ea/nimble/IPersistenceService;->cleanPersistenceReference(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    goto :goto_0
.end method

.method public static getAppPersistence(Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;
    .locals 2
    .param p0, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    .line 73
    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object v0

    const-string v1, "[APPLICATION]"

    invoke-interface {v0, v1, p0}, Lcom/ea/nimble/IPersistenceService;->getPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    return-object v0
.end method

.method public static getComponent()Lcom/ea/nimble/IPersistenceService;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getPersistenceService()Lcom/ea/nimble/IPersistenceService;

    move-result-object v0

    return-object v0
.end method

.method public static getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;
    .locals 5
    .param p0, "componentId"    # Ljava/lang/String;
    .param p1, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-static {p0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string v1, "Persistence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid componentId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for component persistence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    .line 91
    :cond_0
    const-string v1, "[COMPONENT]%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "identifier":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/ea/nimble/IPersistenceService;->getPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    goto :goto_0
.end method

.method static readBackup(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V
    .locals 11
    .param p0, "data"    # Landroid/app/backup/BackupDataInput;
    .param p1, "appVersionCode"    # I
    .param p2, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 233
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 235
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "identifier":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    .line 238
    .local v1, "dataSize":I
    new-array v0, v1, [B

    .line 239
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v10, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 241
    sget-object v8, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v5, v8, p3}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "file":Ljava/lang/String;
    const/4 v3, 0x0

    .line 245
    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 250
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v8

    :goto_1
    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v8

    .line 257
    .end local v0    # "buffer":[B
    .end local v1    # "dataSize":I
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "identifier":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 259
    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object v7

    check-cast v7, Lcom/ea/nimble/PersistenceServiceImpl;

    .line 260
    .local v7, "persistenceService":Lcom/ea/nimble/PersistenceServiceImpl;
    iget-object v8, v7, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ea/nimble/Persistence;

    .line 262
    .local v6, "persistence":Lcom/ea/nimble/Persistence;
    invoke-virtual {v6}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 264
    const/4 v9, 0x0

    invoke-virtual {v6, v10, v9}, Lcom/ea/nimble/Persistence;->restore(ZLandroid/content/Context;)V

    goto :goto_2

    .line 268
    .end local v6    # "persistence":Lcom/ea/nimble/Persistence;
    .end local v7    # "persistenceService":Lcom/ea/nimble/PersistenceServiceImpl;
    :cond_4
    return-void

    .line 250
    .restart local v0    # "buffer":[B
    .restart local v1    # "dataSize":I
    .restart local v2    # "file":Ljava/lang/String;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "identifier":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static removePersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V
    .locals 5
    .param p0, "componentId"    # Ljava/lang/String;
    .param p1, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-static {p0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "Persistence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid componentId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for component persistence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v1, "[COMPONENT]%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "identifier":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/ea/nimble/IPersistenceService;->removePersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    goto :goto_0
.end method

.method static writeBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/content/Context;)V
    .locals 36
    .param p0, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v15, 0x0

    .line 122
    .local v15, "inStream":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 123
    .local v13, "in":Ljava/io/DataInputStream;
    const/16 v21, 0x0

    .line 124
    .local v21, "oldCount":I
    const-wide/16 v24, 0x0

    .line 126
    .local v24, "oldLastModified":J
    if-eqz p0, :cond_0

    .line 130
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .local v16, "inStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v14, Ljava/io/DataInputStream;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 132
    .end local v13    # "in":Ljava/io/DataInputStream;
    .local v14, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 133
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-result-wide v24

    .line 142
    if-eqz v14, :cond_c

    .line 144
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    move-object v13, v14

    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    move-object/from16 v15, v16

    .line 149
    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    sget-object v33, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/ea/nimble/Persistence;->getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 151
    .local v5, "dir":Ljava/io/File;
    new-instance v30, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 153
    .local v30, "persistenceFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v32, "persistenceList":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/Persistence;>;"
    const/16 v20, 0x0

    .line 155
    .local v20, "newCount":I
    const-wide/16 v22, 0x0

    .line 157
    .local v22, "newLastModified":J
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 158
    .local v9, "fileIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 160
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 161
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 162
    .local v17, "name":Ljava/lang/String;
    const-string v33, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 163
    .local v7, "extensionIndex":I
    if-gez v7, :cond_3

    move-object/from16 v12, v17

    .line 165
    .local v12, "identifier":Ljava/lang/String;
    :goto_2
    new-instance v29, Lcom/ea/nimble/Persistence;

    sget-object v33, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    const/16 v34, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v12, v1, v2}, Lcom/ea/nimble/Persistence;-><init>(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Lcom/ea/nimble/Encryptor;)V

    .line 166
    .local v29, "persistence":Lcom/ea/nimble/Persistence;
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->restore(ZLandroid/content/Context;)V

    .line 168
    invoke-virtual/range {v29 .. v29}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 170
    add-int/lit8 v20, v20, 0x1

    .line 171
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    .line 172
    .local v18, "lastModified":J
    cmp-long v33, v18, v22

    if-lez v33, :cond_1

    .line 174
    move-wide/from16 v22, v18

    .line 176
    :cond_1
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v5    # "dir":Ljava/io/File;
    .end local v7    # "extensionIndex":I
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    .end local v12    # "identifier":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "lastModified":J
    .end local v20    # "newCount":I
    .end local v22    # "newLastModified":J
    .end local v29    # "persistence":Lcom/ea/nimble/Persistence;
    .end local v30    # "persistenceFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v32    # "persistenceList":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/Persistence;>;"
    :catch_0
    move-exception v6

    .line 137
    .local v6, "e":Ljava/io/IOException;
    :goto_3
    const/16 v21, 0x0

    .line 138
    const-wide/16 v24, 0x0

    .line 142
    if-eqz v13, :cond_0

    .line 144
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    goto/16 :goto_0

    .line 142
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v33

    :goto_4
    if-eqz v13, :cond_2

    .line 144
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    :cond_2
    throw v33

    .line 163
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v7    # "extensionIndex":I
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fileIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v20    # "newCount":I
    .restart local v22    # "newLastModified":J
    .restart local v30    # "persistenceFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v32    # "persistenceList":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/Persistence;>;"
    :cond_3
    const/16 v33, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 180
    .restart local v12    # "identifier":Ljava/lang/String;
    .restart local v29    # "persistence":Lcom/ea/nimble/Persistence;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 185
    .end local v7    # "extensionIndex":I
    .end local v8    # "file":Ljava/io/File;
    .end local v12    # "identifier":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v29    # "persistence":Lcom/ea/nimble/Persistence;
    :cond_5
    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    cmp-long v33, v24, v22

    if-eqz v33, :cond_9

    .line 187
    :cond_6
    const/16 v31, 0x0

    .local v31, "persistenceIndex":I
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 189
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/ea/nimble/Persistence;

    .line 190
    .restart local v29    # "persistence":Lcom/ea/nimble/Persistence;
    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 191
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v4, v0, [B

    .line 192
    .local v4, "buffer":[B
    const/4 v10, 0x0

    .line 195
    .local v10, "fin":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    .end local v10    # "fin":Ljava/io/FileInputStream;
    .local v11, "fin":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v11, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 200
    if-eqz v11, :cond_7

    .line 202
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 206
    :cond_7
    invoke-virtual/range {v29 .. v29}, Lcom/ea/nimble/Persistence;->getIdentifier()Ljava/lang/String;

    move-result-object v33

    array-length v0, v4

    move/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 207
    array-length v0, v4

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 187
    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    .line 200
    .end local v11    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v33

    :goto_6
    if-eqz v10, :cond_8

    .line 202
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_8
    throw v33

    .line 211
    .end local v4    # "buffer":[B
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fin":Ljava/io/FileInputStream;
    .end local v29    # "persistence":Lcom/ea/nimble/Persistence;
    .end local v31    # "persistenceIndex":I
    :cond_9
    new-instance v28, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v33

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 212
    .local v28, "outStream":Ljava/io/FileOutputStream;
    const/16 v26, 0x0

    .line 216
    .local v26, "out":Ljava/io/DataOutputStream;
    :try_start_5
    new-instance v27, Ljava/io/DataOutputStream;

    invoke-direct/range {v27 .. v28}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 218
    .end local v26    # "out":Ljava/io/DataOutputStream;
    .local v27, "out":Ljava/io/DataOutputStream;
    :try_start_6
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 219
    move-object/from16 v0, v27

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 223
    if-eqz v27, :cond_a

    .line 225
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataOutputStream;->close()V

    .line 228
    :cond_a
    return-void

    .line 223
    .end local v27    # "out":Ljava/io/DataOutputStream;
    .restart local v26    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v33

    :goto_7
    if-eqz v26, :cond_b

    .line 225
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataOutputStream;->close()V

    :cond_b
    throw v33

    .line 223
    .end local v26    # "out":Ljava/io/DataOutputStream;
    .restart local v27    # "out":Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v33

    move-object/from16 v26, v27

    .end local v27    # "out":Ljava/io/DataOutputStream;
    .restart local v26    # "out":Ljava/io/DataOutputStream;
    goto :goto_7

    .line 200
    .end local v26    # "out":Ljava/io/DataOutputStream;
    .end local v28    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "file":Ljava/io/File;
    .restart local v11    # "fin":Ljava/io/FileInputStream;
    .restart local v29    # "persistence":Lcom/ea/nimble/Persistence;
    .restart local v31    # "persistenceIndex":I
    :catchall_4
    move-exception v33

    move-object v10, v11

    .end local v11    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    goto :goto_6

    .line 142
    .end local v4    # "buffer":[B
    .end local v5    # "dir":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    .end local v10    # "fin":Ljava/io/FileInputStream;
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .end local v20    # "newCount":I
    .end local v22    # "newLastModified":J
    .end local v29    # "persistence":Lcom/ea/nimble/Persistence;
    .end local v30    # "persistenceFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v31    # "persistenceIndex":I
    .end local v32    # "persistenceList":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/Persistence;>;"
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v33

    move-object/from16 v15, v16

    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v13    # "in":Ljava/io/DataInputStream;
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v33

    move-object v13, v14

    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    move-object/from16 v15, v16

    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 135
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v13    # "in":Ljava/io/DataInputStream;
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v13, v14

    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    move-object/from16 v15, v16

    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v13    # "in":Ljava/io/DataInputStream;
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    :cond_c
    move-object v13, v14

    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    move-object/from16 v15, v16

    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method
