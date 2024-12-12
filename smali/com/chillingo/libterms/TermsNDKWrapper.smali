.class public Lcom/chillingo/libterms/TermsNDKWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chillingo/libterms/TermsListener;


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Lcom/chillingo/libterms/TermsUIConfig;

.field private static c:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

.field private static d:Ljava/lang/String;


# instance fields
.field private e:Lcom/chillingo/libterms/Terms;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initTermsNDKWrapperFromJava(Landroid/app/Activity;Lcom/chillingo/libterms/TermsUIConfig;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uiConfig"    # Lcom/chillingo/libterms/TermsUIConfig;
    .param p2, "termsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .prologue
    .line 51
    const-string v0, "TermsNDKWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTermsNDKWrapperFromJava [activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][uiConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][compliance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/chillingo/libterms/TermsNDKWrapper;->initTermsNDKWrapperFromJava(Landroid/app/Activity;Lcom/chillingo/libterms/TermsUIConfig;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static initTermsNDKWrapperFromJava(Landroid/app/Activity;Lcom/chillingo/libterms/TermsUIConfig;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uiConfig"    # Lcom/chillingo/libterms/TermsUIConfig;
    .param p2, "termsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .param p3, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "TermsNDKWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTermsNDKWrapperFromJava [activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][uiConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][compliance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-nez p0, :cond_0

    .line 76
    const-string v0, "TermsNDKWrapper"

    const-string v1, "initTermsNDKWrapperFromJava - no context set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    sput-object p0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    .line 81
    sput-object p1, Lcom/chillingo/libterms/TermsNDKWrapper;->b:Lcom/chillingo/libterms/TermsUIConfig;

    .line 82
    sput-object p2, Lcom/chillingo/libterms/TermsNDKWrapper;->c:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .line 83
    return-void
.end method


# virtual methods
.method public ageVerificationCriteriaMet()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->f:Z

    .line 241
    return-void
.end method

.method public ageVerificationCriteriaMetCallbackCalled()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->f:Z

    return v0
.end method

.method public ageVerificationCriteriaNotMet()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->g:Z

    .line 246
    return-void
.end method

.method public ageVerificationCriteriaNotMetCallbackCalled()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->g:Z

    return v0
.end method

.method public ageVerificationPendingDialogDisplay()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->h:Z

    .line 251
    return-void
.end method

.method public ageVerificationPendingDialogDisplayCallbackCalled()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->h:Z

    return v0
.end method

.method public displayDialog()V
    .locals 4

    .prologue
    .line 143
    const-string v0, "TermsNDKWrapper"

    const-string v1, "displayDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    sget-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No root context set before displaying the dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v1, "TermsNDKWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDialog - EXCEPTION! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_0
    return-void

    .line 148
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terms not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/libterms/TermsNDKWrapper;->resetCallbackBooleans()V

    .line 153
    iget-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    invoke-interface {v0}, Lcom/chillingo/libterms/Terms;->intentForTermsDialogActivity()Landroid/content/Intent;

    move-result-object v0

    .line 154
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    sget-object v1, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public displayEndUserLicenseAgreement()V
    .locals 4

    .prologue
    .line 212
    const-string v0, "TermsNDKWrapper"

    const-string v1, "displayEndUserLicenseAgreement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    sget-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No root context set before displaying the dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v1, "TermsNDKWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayPrivacyPolicy - EXCEPTION! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_0
    return-void

    .line 217
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terms not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    invoke-interface {v0}, Lcom/chillingo/libterms/Terms;->intentForEndUserLicenseAgreement()Landroid/content/Intent;

    move-result-object v0

    .line 221
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    sget-object v1, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public displayPrivacyPolicy()V
    .locals 4

    .prologue
    .line 195
    const-string v0, "TermsNDKWrapper"

    const-string v1, "displayPrivacyPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_0
    sget-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No root context set before displaying the dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v1, "TermsNDKWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayPrivacyPolicy - EXCEPTION! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :goto_0
    return-void

    .line 200
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terms not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    invoke-interface {v0}, Lcom/chillingo/libterms/Terms;->intentForPrivacyPolicy()Landroid/content/Intent;

    move-result-object v0

    .line 204
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    sget-object v1, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public displayTermsOfService()V
    .locals 4

    .prologue
    .line 178
    const-string v0, "TermsNDKWrapper"

    const-string v1, "displayTermsOfService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    sget-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No root context set before displaying the dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "TermsNDKWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayTermsOfService - EXCEPTION! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terms not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    invoke-interface {v0}, Lcom/chillingo/libterms/Terms;->intentForTermsOfService()Landroid/content/Intent;

    move-result-object v0

    .line 187
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    sget-object v1, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public initTerms(Z)Z
    .locals 7
    .param p1, "preCoppa"    # Z

    .prologue
    const/4 v6, 0x0

    .line 107
    const-string v0, "TermsNDKWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTerms [preCoppa "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/chillingo/libterms/TermsNDKWrapper;->resetCallbackBooleans()V

    .line 110
    sget-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 111
    const-string v0, "TermsNDKWrapper"

    const-string v1, "isInitialized - no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return v6

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    .line 118
    :try_start_0
    sget-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    sget-object v3, Lcom/chillingo/libterms/TermsNDKWrapper;->c:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v4, Lcom/chillingo/libterms/TermsNDKWrapper;->b:Lcom/chillingo/libterms/TermsUIConfig;

    sget-object v5, Lcom/chillingo/libterms/TermsNDKWrapper;->d:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/chillingo/libterms/TermsFactory;->getInstance(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)Lcom/chillingo/libterms/Terms;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    const-string v0, "TermsNDKWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInitialized [terms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v6, v0

    goto :goto_0

    .line 122
    :cond_1
    :try_start_1
    sget-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    sget-object v1, Lcom/chillingo/libterms/TermsNDKWrapper;->c:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v2, Lcom/chillingo/libterms/TermsNDKWrapper;->b:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/chillingo/libterms/TermsFactory;->getInstance(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;)Lcom/chillingo/libterms/Terms;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->e:Lcom/chillingo/libterms/Terms;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "TermsNDKWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInitialized - EXCEPTION! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move v0, v6

    .line 131
    goto :goto_2
.end method

.method public isDialogStillDisplayed()Z
    .locals 4

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    :goto_0
    const-string v1, "TermsNDKWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDialogStillDisplayed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/chillingo/libterms/TermsNDKWrapper;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "TermsNDKWrapper"

    const-string v1, "isInitialized - true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 94
    :cond_0
    const-string v0, "TermsNDKWrapper"

    const-string v1, "isInitialized - false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetCallbackBooleans()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->f:Z

    .line 234
    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->g:Z

    .line 235
    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsNDKWrapper;->h:Z

    .line 236
    return-void
.end method
