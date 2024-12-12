.class public final Lcom/chillingo/libterms/ui/TermsTextIntentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/chillingo/libterms/model/TermsConfig;

.field final b:Landroid/content/Context;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "termsConfig"    # Lcom/chillingo/libterms/model/TermsConfig;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    .line 21
    iput-object p2, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->b:Landroid/content/Context;

    .line 22
    iput-object p3, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->c:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 41
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chillingo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    iget-object v4, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    return-object v0
.end method


# virtual methods
.method public intentForEndUserLicenseAgreement()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getEula()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getEula()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->b:Landroid/content/Context;

    const-string v1, "defaultEulaUrl"

    invoke-direct {p0, v0, v1}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public intentForPrivacyPolicy()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getTermsOfService()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getPrivacyPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->b:Landroid/content/Context;

    const-string v1, "defaultPrivacyPolicyUrl"

    invoke-direct {p0, v0, v1}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public intentForTermsOfService()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getTermsOfService()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a:Lcom/chillingo/libterms/model/TermsConfig;

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getTermsOfService()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->b:Landroid/content/Context;

    const-string v1, "defaultTermsOfServiceUrl"

    invoke-direct {p0, v0, v1}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
