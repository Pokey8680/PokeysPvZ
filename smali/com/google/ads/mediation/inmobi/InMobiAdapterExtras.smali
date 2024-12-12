.class public final Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
.super Ljava/lang/Object;
.source "InMobiAdapterExtras.java"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# instance fields
.field private areaCode:Ljava/lang/String;

.field private cities:Ljava/lang/String;

.field private countries:Ljava/lang/String;

.field private education:Lcom/inmobi/commons/EducationType;

.field private ethnicity:Lcom/inmobi/commons/EthnicityType;

.field private hasChildren:Lcom/inmobi/commons/HasChildren;

.field private idtypeParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/commons/IMIDType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private income:Ljava/lang/Integer;

.field private interests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isLocationInquiryAllowed:Z

.field private keywords:Ljava/lang/String;

.field private languages:Ljava/lang/String;

.field private martialStatus:Lcom/inmobi/commons/MaritalStatus;

.field private postalCode:Ljava/lang/String;

.field private reftagKey:Ljava/lang/String;

.field private reftagValue:Ljava/lang/String;

.field private requestParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;

.field private sexualOrientations:Lcom/inmobi/commons/SexualOrientation;

.field private states:Ljava/lang/String;

.field private uidMapFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->areaCode:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagKey:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagValue:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->education:Lcom/inmobi/commons/EducationType;

    .line 120
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->ethnicity:Lcom/inmobi/commons/EthnicityType;

    .line 145
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->income:Ljava/lang/Integer;

    .line 170
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    .line 214
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->postalCode:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->searchString:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->hasChildren:Lcom/inmobi/commons/HasChildren;

    .line 285
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->sexualOrientations:Lcom/inmobi/commons/SexualOrientation;

    .line 307
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->martialStatus:Lcom/inmobi/commons/MaritalStatus;

    .line 329
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->languages:Ljava/lang/String;

    .line 351
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->keywords:Ljava/lang/String;

    .line 404
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->states:Ljava/lang/String;

    .line 405
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->cities:Ljava/lang/String;

    .line 406
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->countries:Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->isLocationInquiryAllowed:Z

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method public addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V
    .locals 1
    .param p1, "idtype"    # Lcom/inmobi/commons/IMIDType;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_0
    return-void
.end method

.method public addInterests(Ljava/lang/String;)V
    .locals 1
    .param p1, "interest"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public clearAreaCode()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setAreaCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearCityStateCountry()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceIdMask()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setDeviceIDMask(I)V

    .line 463
    return-object p0
.end method

.method public clearEducation()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setEducation(Lcom/inmobi/commons/EducationType;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearEthnicity()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setEthnicity(Lcom/inmobi/commons/EthnicityType;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearIncome()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setIncome(Ljava/lang/Integer;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearInterests()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setInterests(Ljava/util/Collection;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearKeywords()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setKeywords(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearLanguage()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setlanguage(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearLocationInquiryAllowed()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setLocationInquiryAllowed(Z)V

    .line 447
    return-object p0
.end method

.method public clearMartialStatus()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setMartialStatus(Lcom/inmobi/commons/MaritalStatus;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearPostalCode()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearRefTag()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearRequestParams()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setRequestParams(Ljava/util/Map;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearSearchString()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setSearchString(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearhasChildren()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setHasChildren(Lcom/inmobi/commons/HasChildren;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearsexualOrientations()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->cities:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->countries:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdMask()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->uidMapFlag:I

    return v0
.end method

.method public getEducation()Lcom/inmobi/commons/EducationType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->education:Lcom/inmobi/commons/EducationType;

    return-object v0
.end method

.method public getEthnicity()Lcom/inmobi/commons/EthnicityType;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->ethnicity:Lcom/inmobi/commons/EthnicityType;

    return-object v0
.end method

.method public getHasChildren()Lcom/inmobi/commons/HasChildren;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->hasChildren:Lcom/inmobi/commons/HasChildren;

    return-object v0
.end method

.method public getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;
    .locals 1
    .param p1, "idtype"    # Lcom/inmobi/commons/IMIDType;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncome()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->income:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterests()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLangauge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->languages:Ljava/lang/String;

    return-object v0
.end method

.method public getMartialStatus()Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->martialStatus:Lcom/inmobi/commons/MaritalStatus;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->requestParams:Ljava/util/Map;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getSexualOrientations()Lcom/inmobi/commons/SexualOrientation;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->sexualOrientations:Lcom/inmobi/commons/SexualOrientation;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->states:Ljava/lang/String;

    return-object v0
.end method

.method public isLocationInquiryAllowed()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->isLocationInquiryAllowed:Z

    return v0
.end method

.method public removeIDType(Lcom/inmobi/commons/IMIDType;)V
    .locals 1
    .param p1, "idtype"    # Lcom/inmobi/commons/IMIDType;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_0
    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "areaCode"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->areaCode:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public setCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->states:Ljava/lang/String;

    .line 411
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->cities:Ljava/lang/String;

    .line 412
    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->countries:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public setDeviceIDMask(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->uidMapFlag:I

    .line 455
    return-void
.end method

.method public setEducation(Lcom/inmobi/commons/EducationType;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "education"    # Lcom/inmobi/commons/EducationType;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->education:Lcom/inmobi/commons/EducationType;

    .line 103
    return-object p0
.end method

.method public setEthnicity(Lcom/inmobi/commons/EthnicityType;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "ethnicity"    # Lcom/inmobi/commons/EthnicityType;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->ethnicity:Lcom/inmobi/commons/EthnicityType;

    .line 127
    return-object p0
.end method

.method public setHasChildren(Lcom/inmobi/commons/HasChildren;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "haschildren"    # Lcom/inmobi/commons/HasChildren;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->hasChildren:Lcom/inmobi/commons/HasChildren;

    .line 268
    return-object p0
.end method

.method public setIncome(Ljava/lang/Integer;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "income"    # Ljava/lang/Integer;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->income:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method

.method public setInterests(Ljava/util/Collection;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "interests":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    .line 182
    :goto_0
    return-object p0

    .line 179
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    goto :goto_0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->keywords:Ljava/lang/String;

    .line 358
    return-object p0
.end method

.method public setLocationInquiryAllowed(Z)V
    .locals 0
    .param p1, "isLocationInquiryAllowed"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->isLocationInquiryAllowed:Z

    .line 443
    return-void
.end method

.method public setMartialStatus(Lcom/inmobi/commons/MaritalStatus;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "martialStatus"    # Lcom/inmobi/commons/MaritalStatus;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->martialStatus:Lcom/inmobi/commons/MaritalStatus;

    .line 312
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->postalCode:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public setRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "reftagKey"    # Ljava/lang/String;
    .param p2, "reftagValue"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagKey:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagValue:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setRequestParams(Ljava/util/Map;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->requestParams:Ljava/util/Map;

    .line 385
    return-object p0
.end method

.method public setSearchString(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->searchString:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "sexualOrientation"    # Lcom/inmobi/commons/SexualOrientation;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->sexualOrientations:Lcom/inmobi/commons/SexualOrientation;

    .line 290
    return-object p0
.end method

.method public setlanguage(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .param p1, "languages"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->languages:Ljava/lang/String;

    .line 333
    return-object p0
.end method
