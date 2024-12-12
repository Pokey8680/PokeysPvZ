.class public Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
.super Ljava/lang/Object;
.source "NimbleIdentityPidInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private anonymousPid:Ljava/lang/String;

.field private authenticationSource:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private dateCreated:Ljava/lang/String;

.field private dateModified:Ljava/lang/String;

.field private dob:Ljava/lang/String;

.field private expiryTime:Ljava/util/Date;

.field private language:Ljava/lang/String;

.field private lastAuthDate:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private reasonCode:Ljava/lang/String;

.field private registrationSource:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private strength:Ljava/lang/String;

.field private tosVersion:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Date;)V
    .locals 2
    .param p2, "expiryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "input":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-eqz p1, :cond_0

    .line 81
    const-string v1, "pid"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 82
    .local v0, "pidInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 84
    const-string v1, "pidId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    .line 85
    const-string v1, "anonymousPid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    .line 86
    const-string v1, "authenticationSource"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    .line 87
    const-string v1, "country"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    .line 88
    const-string v1, "dateCreated"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    .line 89
    const-string v1, "dateModified"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    .line 90
    const-string v1, "dob"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    .line 91
    const-string v1, "language"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    .line 92
    const-string v1, "lastAuthDate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    .line 93
    const-string v1, "locale"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    .line 94
    const-string v1, "reasonCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    .line 95
    const-string v1, "registrationSource"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    .line 96
    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    .line 97
    const-string v1, "strength"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    .line 98
    const-string v1, "tosVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->expiryTime:Ljava/util/Date;

    .line 102
    .end local v0    # "pidInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    instance-of v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-nez v3, :cond_1

    move v1, v2

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    if-eq p0, p1, :cond_0

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    .line 124
    .local v0, "target":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto/16 :goto_0
.end method

.method public getAnonymousPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    return-object v0
.end method

.method public getDob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->expiryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAuthDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStrength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    return-object v0
.end method

.method public getTosVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAnonymousPid(Ljava/lang/String;)V
    .locals 0
    .param p1, "anonymousPid"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setAuthenticationSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationSource"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setDateCreated(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateCreated"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setDateModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateModified"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setDob(Ljava/lang/String;)V
    .locals 0
    .param p1, "dob"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    .line 320
    return-void
.end method

.method setExpiryTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "expiryTime"    # Ljava/util/Date;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->expiryTime:Ljava/util/Date;

    .line 389
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setLastAuthDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastAuthDate"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setPidId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pidId"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setReasonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "reasonCode"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setRegistrationSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "registrationSource"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setStrength(Ljava/lang/String;)V
    .locals 0
    .param p1, "strength"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setTosVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "tosVersion"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    .line 384
    return-void
.end method
