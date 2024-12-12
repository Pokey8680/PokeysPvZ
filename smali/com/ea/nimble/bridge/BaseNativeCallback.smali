.class public Lcom/ea/nimble/bridge/BaseNativeCallback;
.super Landroid/content/BroadcastReceiver;
.source "BaseNativeCallback.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;
.implements Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    iput p1, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    .line 28
    return-void
.end method

.method public static varargs native nativeCallback(I[Ljava/lang/Object;)V
.end method

.method public static native nativeFinalize(I)V
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 33
    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 3
    .param p1, "connection"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    .line 68
    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    .line 40
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v2, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public prepareRequest(Lcom/ea/nimble/SynergyRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/ea/nimble/SynergyRequest;

    .prologue
    .line 62
    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 63
    return-void
.end method
