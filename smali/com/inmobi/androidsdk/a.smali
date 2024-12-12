.class Lcom/inmobi/androidsdk/a;
.super Landroid/webkit/WebViewClient;
.source "IMBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 862
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->FORWARD_ACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setSwitchInt(Lcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 868
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/CustomView;->invalidate()V

    .line 877
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 878
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setSwitchInt(Lcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 872
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/CustomView;->invalidate()V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 849
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 851
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setSwitchInt(Lcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 856
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/CustomView;->invalidate()V

    .line 858
    :cond_0
    return-void
.end method
