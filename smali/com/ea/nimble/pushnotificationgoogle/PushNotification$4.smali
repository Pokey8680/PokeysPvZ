.class final Lcom/ea/nimble/pushnotificationgoogle/PushNotification$4;
.super Landroid/content/BroadcastReceiver;
.source "PushNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/pushnotificationgoogle/PushNotification;->register(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$regId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotification$4;->val$regId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    const-string v1, "PN"

    const-string v2, "Synergy PN URL found/startup is finished. Try PNs now."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 273
    .local v0, "bundleExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "result"

    .line 274
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotification$4;->val$regId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ea/nimble/pushnotificationgoogle/PushNotification;->registerTokenWithSynergy(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method
