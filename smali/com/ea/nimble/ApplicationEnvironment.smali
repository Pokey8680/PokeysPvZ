.class public Lcom/ea/nimble/ApplicationEnvironment;
.super Ljava/lang/Object;
.source "ApplicationEnvironment.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.applicationEnvironment"

.field public static final NOTIFICATION_AGE_COMPLIANCE_REFRESHED:Ljava/lang/String; = "nimble.notification.age_compliance_refreshed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/IApplicationEnvironment;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getApplicationEnvironment()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static isMainApplicationRunning()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationRunning()Z

    move-result v0

    return v0
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setCurrentActivity(Landroid/app/Activity;)V

    .line 26
    return-void
.end method
