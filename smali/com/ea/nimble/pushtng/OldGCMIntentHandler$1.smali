.class Lcom/ea/nimble/pushtng/OldGCMIntentHandler$1;
.super Ljava/lang/Object;
.source "OldGCMIntentHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/pushtng/OldGCMIntentHandler;->showMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/pushtng/OldGCMIntentHandler;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/pushtng/OldGCMIntentHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/pushtng/OldGCMIntentHandler;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/ea/nimble/pushtng/OldGCMIntentHandler$1;->this$0:Lcom/ea/nimble/pushtng/OldGCMIntentHandler;

    iput-object p2, p0, Lcom/ea/nimble/pushtng/OldGCMIntentHandler$1;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 202
    const-string v2, "com.ea.nimble.tracking"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 204
    const-string v2, "com.ea.nimble.tracking"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/tracking/ITracking;

    .line 206
    .local v1, "trackingComp":Lcom/ea/nimble/tracking/ITracking;
    if-eqz v1, :cond_1

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/ea/nimble/pushtng/OldGCMIntentHandler$1;->val$messageId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    iget-object v3, p0, Lcom/ea/nimble/pushtng/OldGCMIntentHandler$1;->val$messageId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    const-string v2, "NIMBLESTANDARD::PN_USER_CLICKED_OK"

    invoke-interface {v1, v2, v0}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    .end local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "trackingComp":Lcom/ea/nimble/tracking/ITracking;
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 221
    return-void
.end method
