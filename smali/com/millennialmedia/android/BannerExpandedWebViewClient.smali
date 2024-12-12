.class Lcom/millennialmedia/android/BannerExpandedWebViewClient;
.super Lcom/millennialmedia/android/MMWebViewClient;
.source "BannerExpandedWebViewClient.java"


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 0
    .param p1, "mmWebViewClientListener"    # Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
    .param p2, "redirListener"    # Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    .line 13
    return-void
.end method


# virtual methods
.method setMraidState(Lcom/millennialmedia/android/MMWebView;)V
    .locals 0
    .param p1, "mmWebView"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidPlacementTypeInline()V

    .line 19
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidExpanded()V

    .line 20
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidReady()V

    .line 21
    return-void
.end method
