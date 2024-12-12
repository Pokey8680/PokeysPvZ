.class Lcom/ea/blast/ViewAndroidDelegate;
.super Ljava/lang/Object;
.source "ViewAndroidDelegate.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/blast/ViewAndroidDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/ea/blast/ViewAndroidDelegate;->Log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SetViewFrame(ILjava/lang/Object;IIIIZ)V
    .locals 8
    .param p1, "nativeViewAndroid"    # I
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "matchParent"    # Z

    .prologue
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set View Frame - App Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/blast/ViewAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 37
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 39
    new-instance v0, Lcom/ea/blast/ViewAndroidDelegate$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p7

    move v4, p5

    move v5, p6

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ea/blast/ViewAndroidDelegate$1;-><init>(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/Object;ZIIII)V

    .line 70
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    .end local v0    # "uiThreadRunnable":Ljava/lang/Runnable;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...Set View Frame - App Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/blast/ViewAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 73
    return-void
.end method
