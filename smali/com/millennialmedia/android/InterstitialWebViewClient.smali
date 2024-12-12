.class Lcom/millennialmedia/android/InterstitialWebViewClient;
.super Lcom/millennialmedia/android/MMWebViewClient;
.source "InterstitialWebViewClient.java"


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 0
    .param p1, "mmWebViewClientListener"    # Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
    .param p2, "redirListener"    # Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    .line 17
    return-void
.end method


# virtual methods
.method setMraidState(Lcom/millennialmedia/android/MMWebView;)V
    .locals 0
    .param p1, "mmWebView"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidPlacementTypeInterstitial()V

    .line 23
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidDefault()V

    .line 24
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidReady()V

    .line 25
    return-void
.end method
