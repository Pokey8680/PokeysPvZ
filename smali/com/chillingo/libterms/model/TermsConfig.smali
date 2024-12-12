.class public final Lcom/chillingo/libterms/model/TermsConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x34da8f9e764ebc59L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgeFailureWaitTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAgeRequired()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getEula()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiresReaccept()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRequiresTermsAccept()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTermsOfService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAgeFailureWaitTime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ageFailureWaitTime"    # Ljava/lang/Integer;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->i:Ljava/lang/Integer;

    .line 112
    return-void
.end method

.method public setAgeRequired(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ageRequired"    # Ljava/lang/Integer;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->f:Ljava/lang/Integer;

    .line 88
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->g:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setEula(Ljava/lang/String;)V
    .locals 0
    .param p1, "eula"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPrivacyPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacyPolicy"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRequiresReaccept(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requiresReaccept"    # Ljava/lang/Boolean;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->e:Ljava/lang/Boolean;

    .line 80
    return-void
.end method

.method public setRequiresTermsAccept(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requiresTermsAccept"    # Ljava/lang/Boolean;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->h:Ljava/lang/Boolean;

    .line 104
    return-void
.end method

.method public setTermsOfService(Ljava/lang/String;)V
    .locals 0
    .param p1, "termsOfService"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVersion(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/Integer;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->d:Ljava/lang/Integer;

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lorg/codegist/common/lang/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/codegist/common/lang/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    const-string v1, "tos"

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "eula"

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "priv"

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "ver"

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "reqReacc"

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "ageReq"

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "country"

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "requiresTermsAccept"

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "ageFailureWaitTime"

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/common/lang/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
