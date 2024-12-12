.class Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService$1;
.super Ljava/lang/Object;
.source "GCMIntentService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService;->showMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService$1;->this$0:Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService;

    iput-object p2, p0, Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService$1;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 239
    const-string v2, "com.ea.nimble.tracking"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 241
    const-string v2, "com.ea.nimble.tracking"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/tracking/ITracking;

    .line 243
    .local v1, "trackingComp":Lcom/ea/nimble/tracking/ITracking;
    if-eqz v1, :cond_1

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService$1;->val$messageId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    iget-object v3, p0, Lcom/ea/nimble/pushnotificationgoogle/GCMIntentService$1;->val$messageId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    const-string v2, "NIMBLESTANDARD::PN_USER_CLICKED_OK"

    invoke-interface {v1, v2, v0}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 257
    .end local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "trackingComp":Lcom/ea/nimble/tracking/ITracking;
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 258
    return-void
.end method
