.class public Lcom/inmobi/commons/data/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# static fields
.field private static a:Landroid/location/LocationManager;

.field private static b:Z

.field private static c:D

.field private static d:D

.field private static e:D

.field private static f:Z

.field private static g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Landroid/location/LocationManager;
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/inmobi/commons/data/LocationInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/inmobi/commons/data/LocationInfo;->a:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(D)V
    .locals 0

    .prologue
    .line 66
    sput-wide p0, Lcom/inmobi/commons/data/LocationInfo;->c:D

    .line 67
    return-void
.end method

.method private static a(J)V
    .locals 0

    .prologue
    .line 117
    sput-wide p0, Lcom/inmobi/commons/data/LocationInfo;->g:J

    .line 118
    return-void
.end method

.method static a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 196
    if-eqz p0, :cond_0

    .line 197
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->b(Z)V

    .line 198
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/data/LocationInfo;->a(D)V

    .line 199
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/data/LocationInfo;->b(D)V

    .line 200
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/data/LocationInfo;->c(D)V

    .line 201
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/data/LocationInfo;->a(J)V

    .line 204
    :cond_0
    return-void
.end method

.method private static declared-synchronized a(Landroid/location/LocationManager;)V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/inmobi/commons/data/LocationInfo;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/inmobi/commons/data/LocationInfo;->a:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    return-void

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(Z)V
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lcom/inmobi/commons/data/LocationInfo;->b:Z

    .line 52
    return-void
.end method

.method private static b()Landroid/location/Location;
    .locals 5

    .prologue
    .line 168
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->a()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->a(Landroid/location/LocationManager;)V

    .line 172
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->a()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->a()Landroid/location/LocationManager;

    move-result-object v2

    .line 174
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 181
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 182
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 191
    :goto_1
    return-object v0

    .line 181
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(D)V
    .locals 0

    .prologue
    .line 81
    sput-wide p0, Lcom/inmobi/commons/data/LocationInfo;->d:D

    .line 82
    return-void
.end method

.method static b(Z)V
    .locals 0

    .prologue
    .line 111
    sput-boolean p0, Lcom/inmobi/commons/data/LocationInfo;->f:Z

    .line 112
    return-void
.end method

.method private static c(D)V
    .locals 0

    .prologue
    .line 96
    sput-wide p0, Lcom/inmobi/commons/data/LocationInfo;->e:D

    .line 97
    return-void
.end method

.method public static getGeoTS()J
    .locals 2

    .prologue
    .line 114
    sget-wide v0, Lcom/inmobi/commons/data/LocationInfo;->g:J

    return-wide v0
.end method

.method public static getLat()D
    .locals 2

    .prologue
    .line 58
    sget-wide v0, Lcom/inmobi/commons/data/LocationInfo;->c:D

    return-wide v0
.end method

.method public static getLocAccuracy()D
    .locals 2

    .prologue
    .line 88
    sget-wide v0, Lcom/inmobi/commons/data/LocationInfo;->e:D

    return-wide v0
.end method

.method public static getLon()D
    .locals 2

    .prologue
    .line 73
    sget-wide v0, Lcom/inmobi/commons/data/LocationInfo;->d:D

    return-wide v0
.end method

.method public static isLocationDeniedByUser()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/inmobi/commons/data/LocationInfo;->b:Z

    return v0
.end method

.method public static isValidGeoInfo()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/inmobi/commons/data/LocationInfo;->f:Z

    return v0
.end method

.method public static updateBestKnownLocation()V
    .locals 4

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->a()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->a(Landroid/location/LocationManager;)V

    .line 127
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->a()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 128
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->a()Landroid/location/LocationManager;

    move-result-object v0

    .line 129
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 132
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 134
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 141
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 142
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->isValidGeoInfo()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 146
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 148
    const-string v1, "[InMobi]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastBestKnownLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-nez v0, :cond_2

    .line 153
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->b()Landroid/location/Location;

    move-result-object v0

    .line 154
    const-string v1, "[InMobi]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastKnownLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->a(Landroid/location/Location;)V

    .line 164
    :cond_3
    :goto_1
    return-void

    .line 135
    :cond_4
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 138
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Error getting the Location Info "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static verifyLocationPermission()V
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 210
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 213
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 215
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->a(Z)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->a(Z)V

    goto :goto_0
.end method
