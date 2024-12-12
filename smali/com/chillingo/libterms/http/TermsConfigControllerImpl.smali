.class public final Lcom/chillingo/libterms/http/TermsConfigControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chillingo/libterms/http/TermsConfigController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/libterms/http/TermsConfigControllerImpl$1;
    }
.end annotation


# instance fields
.field private a:Lcom/chillingo/libterms/http/REST/TermsConfigRESTService;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Lcom/chillingo/libterms/config/SharedData;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/chillingo/libterms/model/TermsConfig;

.field private i:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/Integer;

.field private m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->a:Lcom/chillingo/libterms/http/REST/TermsConfigRESTService;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->d:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 145
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->d:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->b:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->d:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getVersionUserAccepted()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->c:Ljava/lang/Integer;

    .line 149
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->c:Ljava/lang/Integer;

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->h:Lcom/chillingo/libterms/model/TermsConfig;

    return-object v0
.end method

.method public initWithConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/libterms/config/SharedData;ZLjava/lang/Integer;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "sdkVersion"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "sharedData"    # Lcom/chillingo/libterms/config/SharedData;
    .param p5, "preCOPPA"    # Z
    .param p6, "ageWhenAccepted"    # Ljava/lang/Integer;
    .param p7, "complianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .param p8, "activity"    # Landroid/app/Activity;
    .param p9, "acceptLanguage"    # Ljava/lang/String;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No endpoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdkVersion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No appId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_5
    if-nez p4, :cond_6

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sharedData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_6
    if-nez p7, :cond_7

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No coppaCompliance or not one of the three"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_7
    if-nez p9, :cond_8

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No accept language"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_8
    iput-object p2, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->e:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->f:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->d:Lcom/chillingo/libterms/config/SharedData;

    .line 66
    iput-boolean p5, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->k:Z

    .line 67
    iput-object p6, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->l:Ljava/lang/Integer;

    .line 68
    iput-object p7, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .line 69
    iput-object p9, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->g:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->a()V

    .line 75
    new-instance v0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;

    invoke-direct {v0}, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;-><init>()V

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->a:Lcom/chillingo/libterms/http/REST/TermsConfigRESTService;

    .line 80
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->a:Lcom/chillingo/libterms/http/REST/TermsConfigRESTService;

    invoke-interface {v0, p1}, Lcom/chillingo/libterms/http/REST/TermsConfigRESTService;->initialiseWithURL(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public startDownloadTermsConfig(Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->i:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    .line 94
    sget-object v0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl$1;->a:[I

    iget-object v1, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    invoke-virtual {v1}, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dodgy compliance level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_0
    const-string v8, "ageGated"

    .line 111
    :goto_0
    const-string v0, "Terms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device language for HTTP \'accept-language\' Header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->a:Lcom/chillingo/libterms/http/REST/TermsConfigRESTService;

    iget-object v1, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->c:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->f:Ljava/lang/String;

    const-string v5, "Android"

    iget-boolean v6, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->k:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->l:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->g:Ljava/lang/String;

    invoke-interface/range {v0 .. v9}, Lcom/chillingo/libterms/http/REST/TermsConfigRESTService;->downloadConfig(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->h:Lcom/chillingo/libterms/model/TermsConfig;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->i:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->h:Lcom/chillingo/libterms/model/TermsConfig;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->i:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    iget-object v1, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->h:Lcom/chillingo/libterms/model/TermsConfig;

    invoke-interface {v0, v1}, Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;->termsDownloaded(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 137
    :cond_0
    :goto_2
    return-void

    .line 100
    :pswitch_1
    const-string v8, "ageSensitive"

    goto :goto_0

    .line 104
    :pswitch_2
    const-string v8, "fullyCompliant"

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->j:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->i:Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;

    iget-object v1, p0, Lcom/chillingo/libterms/http/TermsConfigControllerImpl;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;->termsDownloadFailed(Ljava/lang/String;)V

    goto :goto_2

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
