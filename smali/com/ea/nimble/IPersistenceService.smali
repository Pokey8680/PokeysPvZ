.class public interface abstract Lcom/ea/nimble/IPersistenceService;
.super Ljava/lang/Object;
.source "IPersistenceService.java"


# virtual methods
.method public abstract cleanPersistenceReference(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V
.end method

.method public abstract getPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;
.end method

.method public abstract migratePersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Ljava/lang/String;Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;)V
.end method

.method public abstract removePersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V
.end method
