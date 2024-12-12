.class final Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;
.super Ljava/lang/Object;
.source "IMAICore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/imai/IMAICore;->pingInWebview(Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->b:Z

    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 223
    :try_start_0
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getMaxRetry()I

    move-result v0

    .line 224
    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->b:Z

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;-><init>(Ljava/lang/String;ZZI)V

    .line 225
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>()V

    .line 226
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->init()V

    .line 227
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->add(ILjava/lang/Object;)V

    .line 228
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b$a;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b$a;-><init>(Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->processClick(Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 251
    const-string v1, "[InMobi]-[Network]-4.4.3"

    const-string v2, "Exception ping in background"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
