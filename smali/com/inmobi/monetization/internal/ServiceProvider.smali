.class public Lcom/inmobi/monetization/internal/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"

# interfaces
.implements Lcom/inmobi/monetization/internal/abstraction/IServiceProvider;


# static fields
.field private static a:Lcom/inmobi/monetization/internal/ServiceProvider;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/ServiceProvider;->b:Ljava/util/concurrent/ExecutorService;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/inmobi/monetization/internal/ServiceProvider;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/monetization/internal/ServiceProvider;->a:Lcom/inmobi/monetization/internal/ServiceProvider;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/inmobi/monetization/internal/ServiceProvider;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/inmobi/monetization/internal/ServiceProvider;->a:Lcom/inmobi/monetization/internal/ServiceProvider;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/inmobi/monetization/internal/ServiceProvider;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/ServiceProvider;-><init>()V

    sput-object v0, Lcom/inmobi/monetization/internal/ServiceProvider;->a:Lcom/inmobi/monetization/internal/ServiceProvider;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/inmobi/monetization/internal/ServiceProvider;->a:Lcom/inmobi/monetization/internal/ServiceProvider;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLtvpRule(Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/monetization/internal/ServiceProvider;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;

    invoke-direct {v1, p1, p2}, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;-><init>(Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public getNativeAd(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdController;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/monetization/internal/ServiceProvider;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/monetization/internal/NativeAdRequestTask;

    invoke-direct {v1, p1, p2}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;-><init>(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
