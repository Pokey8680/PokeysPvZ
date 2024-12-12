.class Lcom/ea/nimble/pushtng/PushNotificationImpl$2;
.super Ljava/lang/Object;
.source "PushNotificationImpl.java"

# interfaces
.implements Lcom/ea/eadp/pushnotification/listeners/IPushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/pushtng/PushNotificationImpl;->startWithConfig(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/pushtng/PushNotificationImpl;

.field final synthetic val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;


# direct methods
.method constructor <init>(Lcom/ea/nimble/pushtng/PushNotificationImpl;Lcom/ea/eadp/pushnotification/listeners/IPushListener;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/pushtng/PushNotificationImpl;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->this$0:Lcom/ea/nimble/pushtng/PushNotificationImpl;

    iput-object p2, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    iput-object p3, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    iput-object p4, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(ILjava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    invoke-interface {v0, p1, p2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->this$0:Lcom/ea/nimble/pushtng/PushNotificationImpl;

    invoke-static {v0, v2}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->access$202(Lcom/ea/nimble/pushtng/PushNotificationImpl;Z)Z

    .line 211
    return-void
.end method

.method public onGetInAppSuccess(ILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "inAppNotificationData"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    invoke-interface {v0, p1, p2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onGetInAppSuccess(ILjava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onRegistrationSuccess(ILjava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "registrationData"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationSuccess: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, "newEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "NIMBLESTANDARD::KEY_PN_DATE_OF_BIRTH"

    iget-object v3, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v3}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDateOfBirth()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v3, "NIMBLESTANDARD::KEY_PN_DISABLED_FLAG"

    iget-object v1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    :goto_0
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "trackingType"

    const-string v3, "NIMBLESTANDARD::PN_DEVICE_REGISTERED"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v3, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->this$0:Lcom/ea/nimble/pushtng/PushNotificationImpl;

    iget-object v1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDisabledReason()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v1}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->access$102(Lcom/ea/nimble/pushtng/PushNotificationImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->this$0:Lcom/ea/nimble/pushtng/PushNotificationImpl;

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-static {v3, v1}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->access$202(Lcom/ea/nimble/pushtng/PushNotificationImpl;Z)Z

    .line 185
    iget-object v1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->persistTrackingData(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->this$0:Lcom/ea/nimble/pushtng/PushNotificationImpl;

    invoke-virtual {v1}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->sendPendingTrackingRequests()V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    invoke-interface {v1, p1, p2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onRegistrationSuccess(ILjava/lang/String;)V

    .line 195
    :cond_1
    return-void

    .line 180
    :cond_2
    const-string v1, "false"

    goto :goto_0

    .line 182
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    .line 183
    goto :goto_2
.end method

.method public onTrackingSuccess(ILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "trackingData"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;->val$listener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    invoke-interface {v0, p1, p2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onTrackingSuccess(ILjava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method
