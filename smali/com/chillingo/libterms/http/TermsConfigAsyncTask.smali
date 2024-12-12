.class public final Lcom/chillingo/libterms/http/TermsConfigAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;",
        "Ljava/lang/Integer;",
        "Lcom/chillingo/libterms/model/TermsConfig;",
        ">;",
        "Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;"
    }
.end annotation


# instance fields
.field a:Lcom/chillingo/libterms/http/TermsConfigController;

.field b:Ljava/lang/String;

.field c:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;)Lcom/chillingo/libterms/model/TermsConfig;
    .locals 10
    .param p1, "params"    # [Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    .prologue
    .line 18
    const/4 v0, 0x0

    aget-object v9, p1, v0

    .line 21
    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No appId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No endpoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_3
    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdkVersion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_5
    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->h:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    if-nez v0, :cond_6

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_6
    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->i:Lcom/chillingo/libterms/config/SharedData;

    if-nez v0, :cond_7

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sharedPrefs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_7
    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->f:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-nez v0, :cond_8

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No complianceLevel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_8
    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->g:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No acceptLanguage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_a
    iget-object v0, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->h:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->c:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    .line 40
    new-instance v0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;

    invoke-direct {v0}, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;-><init>()V

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->a:Lcom/chillingo/libterms/http/TermsConfigController;

    .line 41
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->a:Lcom/chillingo/libterms/http/TermsConfigController;

    iget-object v1, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->c:Ljava/lang/String;

    iget-object v2, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->a:Ljava/lang/String;

    iget-object v3, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->b:Ljava/lang/String;

    iget-object v4, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->i:Lcom/chillingo/libterms/config/SharedData;

    iget-boolean v5, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->d:Z

    iget-object v6, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->e:Ljava/lang/Integer;

    iget-object v7, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->f:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    const/4 v8, 0x0

    iget-object v9, v9, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->g:Ljava/lang/String;

    invoke-interface/range {v0 .. v9}, Lcom/chillingo/libterms/http/TermsConfigController;->initWithConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/libterms/config/SharedData;ZLjava/lang/Integer;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;Landroid/app/Activity;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->a:Lcom/chillingo/libterms/http/TermsConfigController;

    invoke-interface {v0, p0}, Lcom/chillingo/libterms/http/TermsConfigController;->startDownloadTermsConfig(Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;)V

    .line 48
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->a:Lcom/chillingo/libterms/http/TermsConfigController;

    invoke-interface {v0}, Lcom/chillingo/libterms/http/TermsConfigController;->getCurrentTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, [Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->doInBackground([Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;)Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/chillingo/libterms/model/TermsConfig;)V
    .locals 2
    .param p1, "termsConfigResult"    # Lcom/chillingo/libterms/model/TermsConfig;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->c:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    invoke-interface {v0, p1}, Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;->termsDownloaded(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->c:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    iget-object v1, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;->termsDownloadFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, Lcom/chillingo/libterms/model/TermsConfig;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->onPostExecute(Lcom/chillingo/libterms/model/TermsConfig;)V

    return-void
.end method

.method public termsDownloadFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public termsDownloaded(Lcom/chillingo/libterms/model/TermsConfig;)V
    .locals 1
    .param p1, "termsConfig"    # Lcom/chillingo/libterms/model/TermsConfig;

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->b:Ljava/lang/String;

    .line 68
    return-void
.end method
