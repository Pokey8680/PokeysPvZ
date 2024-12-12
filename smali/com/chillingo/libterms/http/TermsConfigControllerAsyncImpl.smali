.class public final Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chillingo/libterms/http/TermsConfigController;
.implements Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;


# instance fields
.field private a:Lcom/chillingo/libterms/model/TermsConfig;

.field private b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

.field private c:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;)Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    return-object v0
.end method


# virtual methods
.method public getCurrentTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->a:Lcom/chillingo/libterms/model/TermsConfig;

    return-object v0
.end method

.method public initWithConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/libterms/config/SharedData;ZLjava/lang/Integer;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "sdkVersion"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "sharedData"    # Lcom/chillingo/libterms/config/SharedData;
    .param p5, "preCOPPA"    # Z
    .param p6, "ageWhenAccepted"    # Ljava/lang/Integer;
    .param p7, "complianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .param p8, "parentActivity"    # Landroid/app/Activity;
    .param p9, "acceptLanguage"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    invoke-direct {v0}, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;-><init>()V

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    .line 34
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    iput-object p1, v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->c:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    iput-object p2, v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->a:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    iput-object p3, v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->b:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    iput-boolean p5, v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->d:Z

    .line 38
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    iput-object p6, v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->e:Ljava/lang/Integer;

    .line 39
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    iput-object p7, v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->f:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .line 40
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    iput-object p0, v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->h:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    .line 41
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    iput-object p4, v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->i:Lcom/chillingo/libterms/config/SharedData;

    .line 42
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    iput-object p9, v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;->g:Ljava/lang/String;

    .line 45
    iput-object p8, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->d:Landroid/app/Activity;

    .line 46
    return-void
.end method

.method public startDownloadTermsConfig(Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    .line 60
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->d:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;

    invoke-direct {v0}, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->b:Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->d:Landroid/app/Activity;

    new-instance v1, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl$1;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl$1;-><init>(Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public termsDownloadFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    invoke-interface {v0, p1}, Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;->termsDownloadFailed(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public termsDownloaded(Lcom/chillingo/libterms/model/TermsConfig;)V
    .locals 1
    .param p1, "termsConfig"    # Lcom/chillingo/libterms/model/TermsConfig;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->a:Lcom/chillingo/libterms/model/TermsConfig;

    .line 91
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    invoke-interface {v0, p1}, Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;->termsDownloaded(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 92
    return-void
.end method
