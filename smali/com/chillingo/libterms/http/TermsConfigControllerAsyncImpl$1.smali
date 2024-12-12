.class Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->startDownloadTermsConfig(Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;


# direct methods
.method constructor <init>(Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl$1;->a:Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;

    invoke-direct {v0}, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl$1;->a:Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;

    invoke-static {v3}, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;->a(Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;)Lcom/chillingo/libterms/http/TermsConfigAsyncTaskParams;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/http/TermsConfigAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method
