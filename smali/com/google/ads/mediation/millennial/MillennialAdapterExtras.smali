.class public final Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
.super Ljava/lang/Object;
.source "MillennialAdapterExtras.java"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;
    }
.end annotation


# static fields
.field public static final NOT_SET:I = -0x1


# instance fields
.field private age:I

.field private children:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

.field private education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field private ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

.field private gender:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

.field private income:Ljava/lang/Integer;

.field private interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

.field private keywords:Ljava/lang/String;

.field private location:Landroid/location/Location;

.field private maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

.field private politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field private postalCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->location:Landroid/location/Location;

    .line 54
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->keywords:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->age:I

    .line 119
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    iput-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    .line 149
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    .line 198
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->children:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    .line 248
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 300
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    .line 349
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->gender:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    .line 402
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    .line 455
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 484
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearAge()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 100
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setAge(I)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearChildren()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setChildren(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setEducation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setEthnicity(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearGender()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setGender(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearIncomeInUsDollars()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setIncomeInUsDollars(Ljava/lang/Integer;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearInterstitialTime()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setInterstitialTime(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearKeywords()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setKeywords(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearLocations()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setLocations(Landroid/location/Location;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setMaritalStatus(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setPolitics(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearPostalCode()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->age:I

    return v0
.end method

.method public getChildren()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->children:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    return-object v0
.end method

.method public getEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    return-object v0
.end method

.method public getEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    return-object v0
.end method

.method public getGender()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->gender:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    return-object v0
.end method

.method public getIncomeInUsDollars()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterstitialTime()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    return-object v0
.end method

.method public getPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(I)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->age:I

    .line 92
    return-object p0
.end method

.method public setChildren(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "children"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->children:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    .line 206
    return-object p0
.end method

.method public setEducation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "education"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 463
    return-object p0
.end method

.method public setEthnicity(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "ethnicity"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    .line 308
    return-object p0
.end method

.method public setGender(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "gender"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->gender:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    .line 357
    return-object p0
.end method

.method public setIncomeInUsDollars(Ljava/lang/Integer;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "income"    # Ljava/lang/Integer;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    .line 157
    return-object p0
.end method

.method public setInterstitialTime(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "interstitialTime"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    .line 128
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->keywords:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public setLocations(Landroid/location/Location;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->location:Landroid/location/Location;

    .line 33
    return-object p0
.end method

.method public setMaritalStatus(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "maritalStatus"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 256
    return-object p0
.end method

.method public setPolitics(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "politics"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    .line 410
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    .line 492
    return-object p0
.end method
