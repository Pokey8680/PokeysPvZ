.class abstract Lcom/millennialmedia/android/MMJSObject;
.super Ljava/lang/Object;
.source "MMJSObject.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mmWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/millennialmedia/android/MMJSObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/MMJSObject;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract executeCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation
.end method

.method getAdImplId(Ljava/lang/String;)J
    .locals 2
    .param p1, "creatorAdImplId"    # Ljava/lang/String;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-long v0, v0

    .line 68
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x4

    goto :goto_0
.end method

.method getBaseActivity()Lcom/millennialmedia/android/AdViewOverlayActivity;
    .locals 5

    .prologue
    .line 35
    iget-object v4, p0, Lcom/millennialmedia/android/MMJSObject;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/MMWebView;

    .line 36
    .local v3, "mmWebView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 38
    .local v0, "activity":Landroid/app/Activity;
    instance-of v4, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 39
    check-cast v2, Lcom/millennialmedia/android/MMActivity;

    .line 40
    .local v2, "mmActivity":Lcom/millennialmedia/android/MMActivity;
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v1

    .line 41
    .local v1, "baseActivity":Lcom/millennialmedia/android/MMBaseActivity;
    instance-of v4, v1, Lcom/millennialmedia/android/AdViewOverlayActivity;

    if-eqz v4, :cond_0

    .line 42
    check-cast v1, Lcom/millennialmedia/android/AdViewOverlayActivity;

    .line 46
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "baseActivity":Lcom/millennialmedia/android/MMBaseActivity;
    .end local v2    # "mmActivity":Lcom/millennialmedia/android/MMActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/millennialmedia/android/MMJSResponse;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/millennialmedia/android/MMJSResponse;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 52
    .local v1, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/millennialmedia/android/MMJSResponse;>;"
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 54
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_0
    return-object v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/millennialmedia/android/MMJSObject;->TAG:Ljava/lang/String;

    const-string v3, "Future interrupted"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lcom/millennialmedia/android/MMJSObject;->TAG:Ljava/lang/String;

    const-string v3, "Future execution problem: "

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMJSObject;->contextRef:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method

.method setMMWebView(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMJSObject;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method
