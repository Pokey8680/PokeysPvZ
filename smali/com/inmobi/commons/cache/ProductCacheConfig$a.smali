.class Lcom/inmobi/commons/cache/ProductCacheConfig$a;
.super Ljava/lang/Object;
.source "ProductCacheConfig.java"

# interfaces
.implements Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/cache/ProductCacheConfig;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/cache/ProductCacheConfig;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/cache/ProductCacheConfig;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->a:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->a:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-static {v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->b(Lcom/inmobi/commons/cache/ProductCacheConfig;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    return-void
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->a:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-static {v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->a(Lcom/inmobi/commons/cache/ProductCacheConfig;)V

    .line 233
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Network unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    throw v0
.end method
