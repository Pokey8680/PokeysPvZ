.class public Lcom/chillingo/libterms/TermsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chillingo/libterms/Terms;
.implements Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/libterms/TermsImpl$1;
    }
.end annotation


# instance fields
.field a:Lcom/chillingo/libterms/TermsListener;

.field b:Landroid/app/Activity;

.field c:Lcom/chillingo/libterms/http/TermsConfigController;

.field d:Lcom/chillingo/libterms/TermsUIConfig;

.field e:Lcom/chillingo/libterms/config/SharedData;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:J

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;Lcom/chillingo/libterms/http/TermsConfigController;Lcom/chillingo/libterms/config/SharedData;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "termsListener"    # Lcom/chillingo/libterms/TermsListener;
    .param p3, "termsConfigController"    # Lcom/chillingo/libterms/http/TermsConfigController;
    .param p4, "sharedData"    # Lcom/chillingo/libterms/config/SharedData;
    .param p5, "preCOPPA"    # Z
    .param p6, "termsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .param p7, "uiConfig"    # Lcom/chillingo/libterms/TermsUIConfig;
    .param p8, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "Terms"

    iput-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->f:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/chillingo/libterms/TermsImpl;->g:I

    .line 29
    const-wide/32 v0, 0x48190800

    iput-wide v0, p0, Lcom/chillingo/libterms/TermsImpl;->h:J

    .line 31
    iput v2, p0, Lcom/chillingo/libterms/TermsImpl;->i:I

    .line 32
    iput-boolean v2, p0, Lcom/chillingo/libterms/TermsImpl;->j:Z

    .line 33
    iput-boolean v2, p0, Lcom/chillingo/libterms/TermsImpl;->k:Z

    .line 34
    iput-boolean v2, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    .line 70
    const-string v0, "Terms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terms constructing [listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][configController "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][preCoppa "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[resPkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][cmpLvl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TermsListener must be set on construction of Terms"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    if-nez p1, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iput-object p7, p0, Lcom/chillingo/libterms/TermsImpl;->d:Lcom/chillingo/libterms/TermsUIConfig;

    .line 81
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->addObserver(Ljava/util/Observer;)V

    .line 84
    iput-object p2, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    .line 85
    iput-object p1, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    .line 86
    iput-object p3, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    .line 87
    iput-boolean p5, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    .line 88
    iput-object p6, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .line 91
    if-nez p4, :cond_2

    .line 92
    new-instance v0, Lcom/chillingo/libterms/config/SharedData;

    invoke-direct {v0, p1}, Lcom/chillingo/libterms/config/SharedData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 99
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0, p8}, Lcom/chillingo/libterms/config/SharedData;->setResourcePackageName(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 103
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-direct {p0, v0, p6}, Lcom/chillingo/libterms/TermsImpl;->a(Lcom/chillingo/libterms/config/SharedData;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V

    .line 106
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/TermsImpl;->b(Lcom/chillingo/libterms/config/SharedData;)V

    .line 109
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/TermsImpl;->a(Lcom/chillingo/libterms/config/SharedData;)V

    .line 112
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->a()V

    .line 115
    const-string v0, "release"

    .line 120
    const-string v1, "Terms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** [TermsSDK] v1.9 build 137 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") ***"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 94
    :cond_2
    iput-object p4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "termsListener"    # Lcom/chillingo/libterms/TermsListener;
    .param p3, "preCOPPA"    # Z
    .param p4, "termsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .param p5, "uiConfig"    # Lcom/chillingo/libterms/TermsUIConfig;
    .param p6, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/chillingo/libterms/TermsImpl;-><init>(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;Lcom/chillingo/libterms/http/TermsConfigController;Lcom/chillingo/libterms/config/SharedData;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v1, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    const-string v0, "Terms"

    const-string v1, "informListenerIfDialogRequired - preCOPPA age gated game without download - not doing anything yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->b()V

    goto :goto_0

    .line 178
    :cond_2
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->c()V

    goto :goto_0
.end method

.method private a(Lcom/chillingo/libterms/config/SharedData;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 432
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getPreviousTermsComplianceLevel()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    move-result-object v3

    .line 435
    if-nez v3, :cond_1

    .line 436
    invoke-virtual {p1, p2}, Lcom/chillingo/libterms/config/SharedData;->setPreviousTermsComplianceLevel(Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V

    .line 437
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    if-eq v3, p2, :cond_0

    .line 442
    const-string v0, "Terms"

    const-string v4, "Compliance level change detected!"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/16 v0, 0xd

    .line 448
    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v4}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 449
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 452
    :cond_2
    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v4}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v4}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v0, v4, :cond_7

    move v0, v1

    .line 457
    :goto_1
    invoke-virtual {p1, v5}, Lcom/chillingo/libterms/config/SharedData;->setDateLastCheckedDate(Ljava/util/Date;)V

    .line 458
    invoke-virtual {p1, v5}, Lcom/chillingo/libterms/config/SharedData;->setLastTermsConfig(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 462
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    .line 466
    sget-object v4, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v3, v4, :cond_5

    .line 467
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    .line 472
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setAgeOfUserOnAccept(Ljava/lang/Integer;)V

    .line 488
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getReacceptIsPending()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 489
    const-string v0, "Terms"

    const-string v1, "Compliance level change necessitates a re-display of the dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_4
    invoke-virtual {p1, p2}, Lcom/chillingo/libterms/config/SharedData;->setPreviousTermsComplianceLevel(Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V

    .line 494
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    goto :goto_0

    .line 474
    :cond_5
    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v3, v1, :cond_6

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne p2, v1, :cond_6

    .line 477
    if-ne v0, v2, :cond_3

    .line 478
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 480
    :cond_6
    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v3, v1, :cond_3

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne p2, v1, :cond_3

    .line 483
    if-ne v0, v2, :cond_3

    .line 484
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->k:Z

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->j:Z

    .line 190
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    invoke-interface {v0}, Lcom/chillingo/libterms/TermsListener;->ageVerificationPendingDialogDisplay()V

    .line 192
    :cond_0
    return-void
.end method

.method private b(Lcom/chillingo/libterms/config/SharedData;)V
    .locals 10

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getMillisSinceLastCheckedDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x48190800

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 244
    :cond_0
    const-string v0, "Terms"

    const-string v1, "Starting TermsConfigController..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    .line 249
    :try_start_0
    const-string v0, "http%3A%2F%2Fchillingo-terms.chillingocloud.com"

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 256
    :cond_1
    const-string v1, "http://chillingo-terms.chillingocloud.com"

    .line 263
    :cond_2
    invoke-static {}, Lcom/chillingo/libterms/config/ServerConfig;->getCombinedSDKAndAPIString()Ljava/lang/String;

    move-result-object v2

    .line 266
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    if-nez v0, :cond_3

    .line 267
    new-instance v0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;

    invoke-direct {v0}, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;-><init>()V

    iput-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    .line 268
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    iget-boolean v5, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    iget-object v6, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v6}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    iget-object v8, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    iget-object v9, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v9}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/chillingo/libterms/TermsImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v0 .. v9}, Lcom/chillingo/libterms/http/TermsConfigController;->initWithConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/libterms/config/SharedData;ZLjava/lang/Integer;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;Landroid/app/Activity;Ljava/lang/String;)V

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    invoke-interface {v0, p0}, Lcom/chillingo/libterms/http/TermsConfigController;->startDownloadTermsConfig(Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;)V

    .line 279
    :goto_1
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 276
    :cond_4
    const-string v0, "Terms"

    const-string v1, "TermsConfig is up-to-date"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->k:Z

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->k:Z

    .line 203
    sget-object v0, Lcom/chillingo/libterms/TermsImpl$1;->a:[I

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    invoke-virtual {v1}, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported compliance level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->d()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    invoke-interface {v0}, Lcom/chillingo/libterms/TermsListener;->ageVerificationCriteriaMet()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    invoke-interface {v0}, Lcom/chillingo/libterms/TermsListener;->ageVerificationCriteriaNotMet()V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    invoke-interface {v0}, Lcom/chillingo/libterms/TermsListener;->ageVerificationCriteriaMet()V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private d()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xd

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 287
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    const-string v2, "Terms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get package name [pkgName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 505
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 508
    const-string v1, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - populateSharedDataWithDialogLogic determined that it\'s not required"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_0
    return v0

    .line 513
    :cond_0
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getHasAcceptedOnFirstRun()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getHasAcceptedOnFirstRun()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 514
    :cond_1
    const-string v0, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - still not accepted on first run"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 515
    goto :goto_0

    .line 519
    :cond_2
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getReacceptIsPending()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getReacceptIsPending()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    const-string v0, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - pending reaccept"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 523
    goto :goto_0

    .line 529
    :cond_3
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 533
    const-string v0, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - new age is older than current accept"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 534
    goto :goto_0

    .line 538
    :cond_4
    const-string v1, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - not required - inform that we\'re all good"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should specify packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    const-string v0, "en"

    .line 309
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 310
    const-string v2, "Terms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Users current Locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "chillingo_language"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 314
    if-eqz v2, :cond_1

    .line 315
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    const-string v2, "Terms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country code mismatch.  Device locale language code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " which differs to language code determined from resource package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    return-object v0
.end method

.method a(Lcom/chillingo/libterms/config/SharedData;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 333
    .line 339
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_4

    .line 340
    const-string v0, "Terms"

    const-string v3, "Dialog logic: pre-coppa & fully compliant - tau"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v3, v1

    move v4, v1

    .line 383
    :goto_0
    iget-object v5, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v5}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v5

    .line 384
    if-eqz v5, :cond_3

    .line 385
    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_0

    if-ne v3, v2, :cond_0

    .line 390
    const-string v3, "Terms"

    const-string v6, "Dialog logic: Server override - disabled age gate"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 393
    :cond_0
    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresTermsAccept()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresTermsAccept()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    if-ne v4, v2, :cond_1

    .line 398
    const-string v4, "Terms"

    const-string v6, "Dialog logic: Server override - disabled terms acceptance"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 401
    :cond_1
    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    if-nez v3, :cond_2

    .line 406
    const-string v1, "Terms"

    const-string v3, "Dialog logic: Server override - enabled age gate"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 409
    :cond_2
    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresTermsAccept()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresTermsAccept()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v2, :cond_3

    if-nez v4, :cond_3

    .line 414
    const-string v1, "Terms"

    const-string v4, "Dialog logic: Server override - enabled terms acceptance"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 419
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chillingo/libterms/config/SharedData;->setTermAcceptanceRequired(Ljava/lang/Boolean;)V

    .line 420
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chillingo/libterms/config/SharedData;->setAgeGateRequired(Ljava/lang/Boolean;)V

    .line 421
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setCanPassUnderAge(Ljava/lang/Boolean;)V

    .line 423
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 424
    return-void

    .line 346
    :cond_4
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_5

    .line 347
    const-string v0, "Terms"

    const-string v3, "Dialog logic: pre-coppa & age sensitive - taU"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v3, v1

    move v4, v1

    .line 350
    goto/16 :goto_0

    .line 353
    :cond_5
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_6

    .line 354
    const-string v0, "Terms"

    const-string v3, "Dialog logic: pre-coppa & age gated - tau"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v3, v1

    move v4, v1

    .line 357
    goto/16 :goto_0

    .line 361
    :cond_6
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_7

    .line 362
    const-string v0, "Terms"

    const-string v3, "Dialog logic: post-coppa & fully compliant - TaU"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v3, v1

    move v4, v2

    .line 365
    goto/16 :goto_0

    .line 368
    :cond_7
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_8

    .line 369
    const-string v0, "Terms"

    const-string v3, "Dialog logic: post-coppa & age sensitive - TAU"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v3, v2

    move v4, v2

    .line 372
    goto/16 :goto_0

    .line 375
    :cond_8
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_9

    .line 376
    const-string v0, "Terms"

    const-string v3, "Dialog logic: post-coppa & age gated - TAu"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v3, v2

    move v4, v2

    .line 379
    goto/16 :goto_0

    :cond_9
    move v0, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    return-void
.end method

.method public flushCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    const-string v0, "Terms"

    const-string v1, "*** Clearing Cache ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 637
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0, v2}, Lcom/chillingo/libterms/config/SharedData;->setLastTermsConfig(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 638
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0, v2}, Lcom/chillingo/libterms/config/SharedData;->setDateLastCheckedDate(Ljava/util/Date;)V

    .line 639
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 640
    return-void
.end method

.method public intentForEndUserLicenseAgreement()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;-><init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->intentForEndUserLicenseAgreement()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public intentForPrivacyPolicy()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;-><init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->intentForPrivacyPolicy()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public intentForTermsDialogActivity()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    const-class v2, Lcom/chillingo/libterms/ui/TermsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->d:Lcom/chillingo/libterms/TermsUIConfig;

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "uiConfig"

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->d:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-virtual {v2}, Lcom/chillingo/libterms/TermsUIConfig;->uiConfigAsArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 146
    :cond_0
    return-object v0
.end method

.method public intentForTermsOfService()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;-><init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->intentForTermsOfService()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public termsDownloadFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 544
    const-string v0, "Terms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terms config download failed [reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsObservable;

    move-result-object v0

    .line 548
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsObservable;->setDownloadWasSuccessful(Z)V

    .line 549
    sget-object v1, Lcom/chillingo/libterms/ui/TermsObservable$Events;->TERMS_DOWNLOAD_FINISHED:Lcom/chillingo/libterms/ui/TermsObservable$Events;

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsObservable;->notifyEvent(Lcom/chillingo/libterms/ui/TermsObservable$Events;)V

    .line 552
    iget v0, p0, Lcom/chillingo/libterms/TermsImpl;->i:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 553
    iget v0, p0, Lcom/chillingo/libterms/TermsImpl;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chillingo/libterms/TermsImpl;->i:I

    .line 555
    const-string v0, "Terms"

    const-string v1, "Retrying the download..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No termsConfigController on retry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    invoke-interface {v0, p0}, Lcom/chillingo/libterms/http/TermsConfigController;->startDownloadTermsConfig(Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;)V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_1
    const-string v0, "Terms"

    const-string v1, "Failed to download despite retries"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public termsDownloaded(Lcom/chillingo/libterms/model/TermsConfig;)V
    .locals 3
    .param p1, "termsConfig"    # Lcom/chillingo/libterms/model/TermsConfig;

    .prologue
    .line 568
    const-string v0, "Terms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terms config downloaded [termsConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 573
    invoke-virtual {p1}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresReaccept()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p1}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresReaccept()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    .line 575
    :cond_0
    invoke-virtual {p1}, Lcom/chillingo/libterms/model/TermsConfig;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p1}, Lcom/chillingo/libterms/model/TermsConfig;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setCountryCode(Ljava/lang/String;)V

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setDateLastCheckedDate(Ljava/util/Date;)V

    .line 580
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/SharedData;->setLastTermsConfig(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 583
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/TermsImpl;->a(Lcom/chillingo/libterms/config/SharedData;)V

    .line 585
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 590
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsObservable;

    move-result-object v0

    .line 591
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsObservable;->setDownloadWasSuccessful(Z)V

    .line 592
    sget-object v1, Lcom/chillingo/libterms/ui/TermsObservable$Events;->TERMS_DOWNLOAD_FINISHED:Lcom/chillingo/libterms/ui/TermsObservable$Events;

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsObservable;->notifyEvent(Lcom/chillingo/libterms/ui/TermsObservable$Events;)V

    .line 595
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->a()V

    .line 596
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 604
    sget-object v0, Lcom/chillingo/libterms/TermsImpl$1;->b:[I

    check-cast p2, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 624
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown event while observing TermsActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :pswitch_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 608
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getAgeOnAcceptance()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setAgeOfUserOnAccept(Ljava/lang/Integer;)V

    .line 610
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/model/TermsConfig;->getVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setVersionUserAccepted(Ljava/lang/Integer;)V

    .line 615
    :goto_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setHasAcceptedOnFirstRun(Ljava/lang/Boolean;)V

    .line 616
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    .line 617
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 620
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->c()V

    .line 626
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setVersionUserAccepted(Ljava/lang/Integer;)V

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
