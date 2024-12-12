.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;
.super Landroid/content/BroadcastReceiver;
.source "GooglePlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemRestorer"
.end annotation


# instance fields
.field private m_requestRetryDelay:D

.field private m_timer:Lcom/ea/nimble/Timer;

.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 152
    new-instance v0, Lcom/ea/nimble/Timer;

    invoke-direct {v0, p0}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    .line 153
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_requestRetryDelay:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p2, "x1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$202(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Z)Z

    .line 204
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 205
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_requestRetryDelay:D

    .line 206
    invoke-static {p0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catalog refresh failed with restore pending. Retrying in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_requestRetryDelay:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    iget-wide v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_requestRetryDelay:D

    invoke-virtual {v0, v2, v3, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 188
    invoke-static {p0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v0, v4}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$202(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Z)Z

    .line 190
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v0, v4}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$300(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Z)V

    goto :goto_0
.end method

.method public restoreItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$200(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$202(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Z)Z

    .line 164
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v1, "Restore pending but catalog is unavailable. Initiating refresh now."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const-string v0, "nimble.notification.mtx.refreshcatalogfinished"

    invoke-static {v0, p0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 166
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->refreshAvailableCatalogItems()V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v0, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$300(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Z)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_requestRetryDelay:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4072c00000000000L    # 300.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->m_requestRetryDelay:D

    .line 198
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->refreshAvailableCatalogItems()V

    .line 199
    return-void
.end method
