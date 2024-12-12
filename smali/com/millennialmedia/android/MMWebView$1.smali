.class Lcom/millennialmedia/android/MMWebView$1;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$finalContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$1;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p3, p0, Lcom/millennialmedia/android/MMWebView$1;->val$baseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/millennialmedia/android/MMWebView$1;->val$finalContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 299
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/HandShake;->hardwareAccelerationEnabled:Z

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->enableHardwareAcceleration()V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$1;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v6

    .line 307
    .local v6, "ad":Lcom/millennialmedia/android/MMAd;
    if-eqz v6, :cond_0

    instance-of v0, v6, Lcom/millennialmedia/android/MMLayout;

    if-eqz v0, :cond_0

    .line 308
    check-cast v6, Lcom/millennialmedia/android/MMLayout;

    .end local v6    # "ad":Lcom/millennialmedia/android/MMAd;
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMLayout;->removeVideo()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 311
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$1;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$1;->val$finalContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/android/MMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v0, v0, Lcom/millennialmedia/android/MMWebView;->currentColor:I

    if-nez v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->enableSoftwareAcceleration()V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->disableAllAcceleration()V

    goto :goto_0
.end method
