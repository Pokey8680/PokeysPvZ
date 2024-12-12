.class final Lcom/millennialmedia/android/MRaid$1;
.super Ljava/lang/Object;
.source "MRaid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MRaid;->downloadMraidJs(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/millennialmedia/android/MRaid$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/android/MRaid$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 114
    :try_start_0
    const-string v4, "MRaid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMJS -  download start ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/millennialmedia/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/millennialmedia/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 118
    .local v3, "response":Lorg/apache/http/HttpResponse;
    const-string v4, "MRaid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMJS -  download finish ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/millennialmedia/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/millennialmedia/android/MRaid$1;->val$context:Landroid/content/Context;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MRaid;->saveMRaid(Landroid/content/Context;Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/millennialmedia/android/MRaid$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/millennialmedia/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MRaid;->storeMraidUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    const-string v4, "MRaid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMJS -  download saved ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/millennialmedia/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    sget-object v4, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 133
    sget-object v4, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    .local v1, "fin":Lcom/millennialmedia/android/MRaid$Finished;
    if-eqz v1, :cond_1

    .line 135
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-interface {v1}, Lcom/millennialmedia/android/MRaid$Finished;->finished()V

    .line 139
    .end local v1    # "fin":Lcom/millennialmedia/android/MRaid$Finished;
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_1
    const-string v4, "MRaid"

    const-string v5, "Mraid download exception: "

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    sget-object v4, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 133
    sget-object v4, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    .restart local v1    # "fin":Lcom/millennialmedia/android/MRaid$Finished;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v1    # "fin":Lcom/millennialmedia/android/MRaid$Finished;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v4, "MRaid"

    const-string v5, "Mraid download exception: "

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    sget-object v4, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 133
    sget-object v4, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    .restart local v1    # "fin":Lcom/millennialmedia/android/MRaid$Finished;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "fin":Lcom/millennialmedia/android/MRaid$Finished;
    :catch_2
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "MRaid"

    const-string v5, "Mraid download exception: "

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    sget-object v4, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 133
    sget-object v4, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    .restart local v1    # "fin":Lcom/millennialmedia/android/MRaid$Finished;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fin":Lcom/millennialmedia/android/MRaid$Finished;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    .line 133
    sget-object v5, Lcom/millennialmedia/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    .restart local v1    # "fin":Lcom/millennialmedia/android/MRaid$Finished;
    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v1}, Lcom/millennialmedia/android/MRaid$Finished;->finished()V

    .line 132
    .end local v1    # "fin":Lcom/millennialmedia/android/MRaid$Finished;
    :cond_2
    throw v4
.end method
