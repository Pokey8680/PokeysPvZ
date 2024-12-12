.class public Lcom/inmobi/monetization/internal/MonetizationUtils;
.super Ljava/lang/Object;
.source "MonetizationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/internal/MonetizationUtils$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static buildLtvpRequestMap(Landroid/view/View;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getInstance(Landroid/content/Context;)Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getLtvpRuleId()Ljava/lang/String;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    const-string v2, "rule-id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    if-eqz p0, :cond_1

    .line 80
    const-string v1, "placement-size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->getDetectedActivity()I

    move-result v1

    .line 84
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 85
    const-string v2, "u-activity-type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_2
    return-object v0
.end method

.method public static getErrorCode(Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)Lcom/inmobi/monetization/IMErrorCode;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/inmobi/monetization/internal/MonetizationUtils$a;->a:[I

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    goto :goto_0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    goto :goto_0

    .line 56
    :pswitch_4
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    goto :goto_0

    .line 58
    :pswitch_5
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    goto :goto_0

    .line 60
    :pswitch_6
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    goto :goto_0

    .line 62
    :pswitch_7
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    goto :goto_0

    .line 64
    :pswitch_8
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static updateIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getAge()Ljava/lang/Integer;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setAge(I)V

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setAreaCode(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setCurrentLocation(Landroid/location/Location;)V

    .line 25
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setDateOfBirth(Ljava/util/Calendar;)V

    .line 26
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setEducation(Lcom/inmobi/commons/EducationType;)V

    .line 27
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setEthnicity(Lcom/inmobi/commons/EthnicityType;)V

    .line 28
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setGender(Lcom/inmobi/commons/GenderType;)V

    .line 29
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getIncome()Ljava/lang/Integer;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setIncome(I)V

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getInterests()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setInterests(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->isLocationInquiryAllowed()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setLocationInquiryAllowed(Z)V

    .line 35
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setLocationOfCityStateAndCountry(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setPostalCode(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setSearchString(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setHasChildren(Lcom/inmobi/commons/HasChildren;)V

    .line 40
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setLanguage(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V

    .line 42
    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/AdRequest;->setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V

    .line 43
    return-void
.end method
