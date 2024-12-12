.class public Lcom/ea/nimble/SynergyIdManager;
.super Ljava/lang/Object;
.source "SynergyIdManager.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.synergyidmanager"

.field public static final LOG_TAG:Ljava/lang/String; = "SynergyID"

.field public static final NOTIFICATION_ANONYMOUS_SYNERGY_ID_CHANGED:Ljava/lang/String; = "nimble.synergyidmanager.notification.anonymous_synergy_id_changed"

.field public static final NOTIFICATION_SYNERGY_ID_CHANGED:Ljava/lang/String; = "nimble.synergyidmanager.notification.synergy_id_changed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/ISynergyIdManager;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/ea/nimble/SynergyIdManagerImpl;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v0

    return-object v0
.end method
