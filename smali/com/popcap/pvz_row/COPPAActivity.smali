.class public Lcom/popcap/pvz_row/COPPAActivity;
.super Landroid/app/Activity;
.source "COPPAActivity.java"

# interfaces
.implements Lcom/chillingo/libterms/TermsListener;


# static fields
.field public static gAgeVerified:I

.field static mTermsSDKInstance:Lcom/chillingo/libterms/Terms;


# instance fields
.field private mEnableLogs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/popcap/pvz_row/COPPAActivity;->gAgeVerified:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    return-void
.end method

.method public static ageVerifiedValue()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/popcap/pvz_row/COPPAActivity;->gAgeVerified:I

    return v0
.end method


# virtual methods
.method public ageVerificationCriteriaMet()V
    .locals 5

    .prologue
    .line 156
    iget-boolean v2, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v2, :cond_0

    .line 157
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "PVZ COPPAActivity ageVerificationCriteriaMet"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v2, :cond_1

    .line 162
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PVZ COPPAActivityage VerificationCriteriaMet user\'s age "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getAgeOnAcceptance()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getAgeOnAcceptance()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 168
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "age"

    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getAgeOnAcceptance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v2, "dobyear"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getAgeOnAcceptance()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v2, "dobmonth"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v2, 0x1

    sput v2, Lcom/popcap/pvz_row/COPPAActivity;->gAgeVerified:I

    .line 176
    invoke-virtual {p0}, Lcom/popcap/pvz_row/COPPAActivity;->startGameActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public ageVerificationCriteriaNotMet()V
    .locals 5

    .prologue
    .line 185
    iget-boolean v2, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v2, :cond_0

    .line 186
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "PVZ COPPAActivityage ageVerificationCriteriaNotMet"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 192
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getAgeOnAcceptance()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "age"

    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getAgeOnAcceptance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v2, "dobyear"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getAgeOnAcceptance()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v2, "dobmonth"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v2, 0x0

    sput v2, Lcom/popcap/pvz_row/COPPAActivity;->gAgeVerified:I

    .line 202
    invoke-virtual {p0}, Lcom/popcap/pvz_row/COPPAActivity;->startGameActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public ageVerificationPendingDialogDisplay()V
    .locals 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PVZ COPPAActivityage ageVerificationPendingDialogDisplay"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/popcap/pvz_row/COPPAActivity;->gAgeVerified:I

    .line 213
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-boolean v2, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v2, :cond_0

    .line 29
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "PVZ COPPAActivity onCreate "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/popcap/pvz_row/COPPAActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 31
    invoke-virtual {p0}, Lcom/popcap/pvz_row/COPPAActivity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/popcap/pvz_row/COPPAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "intentAction":Ljava/lang/String;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    iget-boolean v2, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v2, :cond_1

    .line 39
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "PVZ COPPAActivity onCreate *************"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/popcap/pvz_row/COPPAActivity;->finish()V

    .line 44
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentAction":Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v2, :cond_3

    .line 45
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "PVZ COPPAActivity onCreate 1"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    :cond_3
    const/4 v2, 0x0

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    const/4 v4, 0x0

    invoke-static {p0, p0, v2, v3, v4}, Lcom/chillingo/libterms/TermsFactory;->getInstance(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;)Lcom/chillingo/libterms/Terms;

    move-result-object v2

    sput-object v2, Lcom/popcap/pvz_row/COPPAActivity;->mTermsSDKInstance:Lcom/chillingo/libterms/Terms;

    .line 50
    iget-boolean v2, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v2, :cond_4

    .line 51
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PVZ COPPAActivity onCreate 2 @@@@@@@@@@@@@@@@@@@ ---->>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/popcap/pvz_row/COPPAActivity;->gAgeVerified:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    :cond_4
    sget v2, Lcom/popcap/pvz_row/COPPAActivity;->gAgeVerified:I

    if-gez v2, :cond_6

    .line 57
    invoke-virtual {p0}, Lcom/popcap/pvz_row/COPPAActivity;->startTermActivity()V

    .line 65
    :goto_0
    iget-boolean v2, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v2, :cond_5

    .line 66
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "PVZ COPPAActivity onCreate 3"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    :cond_5
    return-void

    .line 61
    :cond_6
    invoke-virtual {p0}, Lcom/popcap/pvz_row/COPPAActivity;->startGameActivity()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    iget-boolean v0, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PVZ COPPAActivity on Destroy called "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    iget-boolean v0, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PVZ COPPAActivity on Pause called"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    iget-boolean v0, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PVZ COPPAActivity onResume called "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 103
    iget-boolean v0, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PVZ COPPAActivity on Stop called "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public startGameActivity()V
    .locals 3

    .prologue
    .line 124
    iget-boolean v1, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "PVZ COPPAActivity starting Game Activity "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OBBActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/COPPAActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    const/4 v1, 0x0

    sput-object v1, Lcom/popcap/pvz_row/COPPAActivity;->mTermsSDKInstance:Lcom/chillingo/libterms/Terms;

    .line 138
    invoke-virtual {p0}, Lcom/popcap/pvz_row/COPPAActivity;->finish()V

    .line 140
    return-void
.end method

.method public startTermActivity()V
    .locals 3

    .prologue
    .line 144
    iget-boolean v1, p0, Lcom/popcap/pvz_row/COPPAActivity;->mEnableLogs:Z

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "PVZ COPPAActivity starting Term Activity "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :cond_0
    sget-object v1, Lcom/popcap/pvz_row/COPPAActivity;->mTermsSDKInstance:Lcom/chillingo/libterms/Terms;

    if-eqz v1, :cond_1

    .line 148
    sget-object v1, Lcom/popcap/pvz_row/COPPAActivity;->mTermsSDKInstance:Lcom/chillingo/libterms/Terms;

    invoke-interface {v1}, Lcom/chillingo/libterms/Terms;->intentForTermsDialogActivity()Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, "ii":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/COPPAActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    .end local v0    # "ii":Landroid/content/Intent;
    :cond_1
    return-void
.end method
