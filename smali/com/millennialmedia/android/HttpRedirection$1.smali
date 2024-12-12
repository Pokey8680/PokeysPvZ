.class final Lcom/millennialmedia/android/HttpRedirection$1;
.super Ljava/lang/Object;
.source "HttpRedirection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HttpRedirection;->startActivityFromUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listenerReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleDestinationUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 12
    .param p1, "listener"    # Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .prologue
    .line 204
    const/4 v5, 0x0

    .line 205
    .local v5, "scheme":Ljava/lang/String;
    const/4 v4, 0x0

    .line 206
    .local v4, "intent":Landroid/content/Intent;
    iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 207
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_4

    .line 208
    iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 209
    const-string v7, "mmvideo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 210
    invoke-static {p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->getIntentForUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)Landroid/content/Intent;

    move-result-object v4

    .line 218
    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    .line 219
    invoke-virtual {p1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->getOverlaySettings()Lcom/millennialmedia/android/OverlaySettings;

    move-result-object v6

    .line 222
    .local v6, "settings":Lcom/millennialmedia/android/OverlaySettings;
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    .line 223
    iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->orientation:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 224
    iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->orientation:Ljava/lang/String;

    iput-object v7, v6, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 225
    :cond_1
    const-string v7, "settings"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    :cond_2
    const-string v7, "class"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "clazz":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-class v7, Lcom/millennialmedia/android/AdViewOverlayActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 232
    :cond_3
    :try_start_0
    iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {p1, v7}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isActivityStartable(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 234
    invoke-static {v1, v4}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 235
    iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {p1, v7}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingActivity(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v6    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    :cond_4
    :goto_1
    return-void

    .line 211
    :cond_5
    iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {p1, v7}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isHandlingMMVideo(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 213
    iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "id":Ljava/lang/String;
    invoke-static {v1, v3, p1}, Lcom/millennialmedia/android/VideoAd;->playAd(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    goto :goto_0

    .line 240
    .end local v3    # "id":Ljava/lang/String;
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v6    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "HttpRedirection"

    const-string v8, "No activity found for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 187
    iget-object v2, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .line 188
    .local v1, "listener":Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
    if-eqz v1, :cond_0

    .line 189
    iget-object v2, v1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/HttpRedirection;->navigateRedirects(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "destination":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 191
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    .line 192
    iget-object v2, v1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 193
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/HttpRedirection$1;->handleDestinationUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    .line 200
    .end local v0    # "destination":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v0    # "destination":Ljava/lang/String;
    :cond_1
    const-string v2, "HttpRedirection"

    const-string v3, "Could not start activity for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
