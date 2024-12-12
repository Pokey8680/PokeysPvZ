.class public Lcom/ea/blast/LocationManagerAndroid;
.super Ljava/lang/Object;
.source "LocationManagerAndroid.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = true

.field private static final kAccuracyHigh:I

.field private static final kAccuracyLow:I

.field private static final kAccuracyMedium:I


# instance fields
.field private mCachedAccuracy:F

.field private mCachedLatitude:D

.field private mCachedLongitude:D

.field mCriteria:Landroid/location/Criteria;

.field private mEnabled:Z

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMainActivity:Lcom/ea/blast/MainActivity;

.field private mMinDistance:I

.field private mMinPeriodMs:I

.field private mProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/ea/blast/LocationManagerAndroid;->NativeGetAccuracyLow()I

    move-result v0

    sput v0, Lcom/ea/blast/LocationManagerAndroid;->kAccuracyLow:I

    .line 27
    invoke-static {}, Lcom/ea/blast/LocationManagerAndroid;->NativeGetAccuracyMedium()I

    move-result v0

    sput v0, Lcom/ea/blast/LocationManagerAndroid;->kAccuracyMedium:I

    .line 28
    invoke-static {}, Lcom/ea/blast/LocationManagerAndroid;->NativeGetAccuracyHigh()I

    move-result v0

    sput v0, Lcom/ea/blast/LocationManagerAndroid;->kAccuracyHigh:I

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mMinPeriodMs:I

    .line 42
    iput v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mMinDistance:I

    .line 64
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iput-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mMainActivity:Lcom/ea/blast/MainActivity;

    .line 65
    iput-object p0, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationListener:Landroid/location/LocationListener;

    .line 66
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mMainActivity:Lcom/ea/blast/MainActivity;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationManager:Landroid/location/LocationManager;

    .line 68
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    iput-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mCriteria:Landroid/location/Criteria;

    .line 69
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 70
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 71
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 73
    invoke-direct {p0}, Lcom/ea/blast/LocationManagerAndroid;->SetProvider()V

    .line 75
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/ea/blast/LocationManagerAndroid;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 77
    .local v0, "cachedLocation":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ea/blast/LocationManagerAndroid;->mCachedLatitude:D

    .line 80
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ea/blast/LocationManagerAndroid;->mCachedLongitude:D

    .line 81
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mCachedAccuracy:F

    .line 83
    :cond_0
    return-void
.end method

.method public static native NativeGetAccuracyHigh()I
.end method

.method public static native NativeGetAccuracyLow()I
.end method

.method public static native NativeGetAccuracyMedium()I
.end method

.method public static native NativeOnLocationChanged(DDF)V
.end method

.method private SetProvider()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "gps"

    iput-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mProvider:Ljava/lang/String;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mCriteria:Landroid/location/Criteria;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mProvider:Ljava/lang/String;

    goto :goto_0
.end method

.method public static StdToRawAccuracy(I)I
    .locals 1
    .param p0, "stdAccuracy"    # I

    .prologue
    .line 119
    sget v0, Lcom/ea/blast/LocationManagerAndroid;->kAccuracyHigh:I

    if-ne p0, v0, :cond_0

    .line 121
    const/4 v0, 0x3

    .line 129
    :goto_0
    return v0

    .line 123
    :cond_0
    sget v0, Lcom/ea/blast/LocationManagerAndroid;->kAccuracyMedium:I

    if-ne p0, v0, :cond_1

    .line 125
    const/4 v0, 0x2

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private UpdateOptions()V
    .locals 2

    .prologue
    .line 174
    iget-boolean v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 176
    new-instance v0, Lcom/ea/blast/LocationManagerAndroid$1;

    invoke-direct {v0, p0}, Lcom/ea/blast/LocationManagerAndroid$1;-><init>(Lcom/ea/blast/LocationManagerAndroid;)V

    .line 185
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    .end local v0    # "uiThreadRunnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/ea/blast/LocationManagerAndroid;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/LocationManagerAndroid;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ea/blast/LocationManagerAndroid;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/LocationManagerAndroid;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ea/blast/LocationManagerAndroid;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/LocationManagerAndroid;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ea/blast/LocationManagerAndroid;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/LocationManagerAndroid;

    .prologue
    .line 15
    iget v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mMinPeriodMs:I

    return v0
.end method

.method static synthetic access$400(Lcom/ea/blast/LocationManagerAndroid;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/LocationManagerAndroid;

    .prologue
    .line 15
    iget v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mMinDistance:I

    return v0
.end method


# virtual methods
.method public GetCachedAccuracy()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mCachedAccuracy:F

    return v0
.end method

.method public GetCachedLatitude()D
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mCachedLatitude:D

    return-wide v0
.end method

.method public GetCachedLongitude()D
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mCachedLongitude:D

    return-wide v0
.end method

.method public IsAccessGranted()Z
    .locals 5

    .prologue
    .line 136
    iget-object v3, p0, Lcom/ea/blast/LocationManagerAndroid;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v3}, Lcom/ea/blast/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 137
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.permission.LOCATION"

    iget-object v4, p0, Lcom/ea/blast/LocationManagerAndroid;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v4}, Lcom/ea/blast/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, "hasPermLocation":I
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    iget-object v4, p0, Lcom/ea/blast/LocationManagerAndroid;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v4}, Lcom/ea/blast/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "hasPermFineLocation":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public SetAccuracy(I)V
    .locals 2
    .param p1, "stdAccuracy"    # I

    .prologue
    .line 145
    invoke-static {p1}, Lcom/ea/blast/LocationManagerAndroid;->StdToRawAccuracy(I)I

    move-result v0

    .line 146
    .local v0, "rawAccuracy":I
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v1, v0}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 148
    invoke-direct {p0}, Lcom/ea/blast/LocationManagerAndroid;->UpdateOptions()V

    .line 149
    return-void
.end method

.method public SetEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/ea/blast/LocationManagerAndroid;->mEnabled:Z

    .line 195
    new-instance v0, Lcom/ea/blast/LocationManagerAndroid$2;

    invoke-direct {v0, p0, p1}, Lcom/ea/blast/LocationManagerAndroid$2;-><init>(Lcom/ea/blast/LocationManagerAndroid;Z)V

    .line 210
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public SetMinDistance(I)V
    .locals 1
    .param p1, "minDistance"    # I

    .prologue
    .line 164
    iget v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mMinDistance:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/ea/blast/LocationManagerAndroid;->mMinDistance:I

    .line 167
    invoke-direct {p0}, Lcom/ea/blast/LocationManagerAndroid;->UpdateOptions()V

    .line 169
    :cond_0
    return-void
.end method

.method public SetMinPeriodMs(I)V
    .locals 1
    .param p1, "minPeriodMs"    # I

    .prologue
    .line 154
    iget v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mMinPeriodMs:I

    if-eq v0, p1, :cond_0

    .line 156
    iput p1, p0, Lcom/ea/blast/LocationManagerAndroid;->mMinPeriodMs:I

    .line 157
    invoke-direct {p0}, Lcom/ea/blast/LocationManagerAndroid;->UpdateOptions()V

    .line 159
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ea/blast/LocationManagerAndroid;->NativeOnLocationChanged(DDF)V

    .line 218
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mProvider:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 228
    invoke-direct {p0}, Lcom/ea/blast/LocationManagerAndroid;->SetProvider()V

    .line 229
    invoke-direct {p0}, Lcom/ea/blast/LocationManagerAndroid;->UpdateOptions()V

    .line 231
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/ea/blast/LocationManagerAndroid;->mProvider:Ljava/lang/String;

    .line 238
    .local v0, "oldProvider":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ea/blast/LocationManagerAndroid;->SetProvider()V

    .line 240
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mProvider:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/ea/blast/LocationManagerAndroid;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 244
    invoke-direct {p0}, Lcom/ea/blast/LocationManagerAndroid;->UpdateOptions()V

    .line 246
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 253
    return-void
.end method
