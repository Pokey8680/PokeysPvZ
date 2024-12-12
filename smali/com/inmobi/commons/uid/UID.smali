.class public Lcom/inmobi/commons/uid/UID;
.super Ljava/lang/Object;
.source "UID.java"


# static fields
.field public static final FBA_DEF:Z = false

.field public static final GPID_DEF:Z = true

.field public static final KEY_FACEBOOK_ID:Ljava/lang/String; = "FBA"

.field public static final KEY_GPID:Ljava/lang/String; = "GPID"

.field public static final KEY_LOGIN_ID:Ljava/lang/String; = "LID"

.field public static final KEY_LTVID:Ljava/lang/String; = "LTVID"

.field public static final KEY_ODIN1:Ljava/lang/String; = "O1"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "SID"

.field public static final KEY_UM5_ID:Ljava/lang/String; = "UM5"

.field public static final LID_DEF:Z = true

.field public static final LTVE_DEF:Z = true

.field public static final O1_DEF:Z = true

.field public static final SID_DEF:Z = true

.field public static final UM5_DEF:Z = true

.field private static a:Lcom/inmobi/commons/uid/UID;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    sput-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 28
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 30
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 31
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 32
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 28
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 30
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 31
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 32
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    .line 322
    invoke-static {p1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    .line 323
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/inmobi/commons/uid/UID;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {p0, p2}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 28
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 30
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 31
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 32
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    .line 326
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    .line 327
    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    .line 129
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 131
    iget-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 132
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    .line 133
    :cond_0
    if-gtz v0, :cond_8

    .line 134
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v3, "O1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_2

    .line 143
    const-string v1, "FBA"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    .line 147
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_4

    .line 182
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_LOGIN:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_4

    .line 185
    const-string v1, "LID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_4
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_5

    .line 189
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_SESSION:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_5

    .line 191
    const-string v1, "SID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_5
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_6

    .line 197
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getRawConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_6

    .line 199
    const-string v1, "LTVID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_6
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->h:Z

    if-eqz v0, :cond_7

    .line 204
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getAdvertisingId()Lcom/inmobi/commons/uid/AdvertisingId;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_7

    .line 206
    invoke-virtual {v0}, Lcom/inmobi/commons/uid/AdvertisingId;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_7

    .line 208
    const-string v1, "GPID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_7
    return-object v2

    .line 154
    :cond_8
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_9

    .line 156
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v3

    if-nez v3, :cond_9

    .line 157
    iget-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    const-string v4, "O1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_9
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_a

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_a

    .line 165
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_a

    .line 168
    const-string v3, "FBA"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_a
    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    .line 173
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private b(ILjava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    .line 221
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 222
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 223
    iget-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 224
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    .line 225
    :cond_0
    if-gtz v0, :cond_8

    .line 226
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v3, "O1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_2

    .line 235
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_2

    .line 237
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v1, "FBA"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    .line 242
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_4

    .line 277
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_LOGIN:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_4

    .line 279
    const-string v1, "LID"

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_4
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_5

    .line 283
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_SESSION:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_5

    .line 285
    const-string v1, "SID"

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_5
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_6

    .line 291
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getRawConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_6

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v1, "LTVID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_6
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->h:Z

    if-eqz v0, :cond_7

    .line 299
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getAdvertisingId()Lcom/inmobi/commons/uid/AdvertisingId;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_7

    .line 301
    invoke-virtual {v0}, Lcom/inmobi/commons/uid/AdvertisingId;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_7

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v1, "GPID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_7
    return-object v2

    .line 249
    :cond_8
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_9

    .line 251
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v3

    if-nez v3, :cond_9

    .line 252
    iget-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-static {v3, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    const-string v4, "O1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_9
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_a

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_a

    .line 260
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_a

    .line 262
    invoke-static {v1, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    const-string v3, "FBA"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_a
    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    .line 268
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static getCommonsUid()Lcom/inmobi/commons/uid/UID;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method


# virtual methods
.method public getDefaultUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/uid/UID;->b(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 98
    if-eqz p3, :cond_1

    .line 100
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    if-eqz v1, :cond_0

    .line 103
    invoke-static {v1, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {v2}, Lcom/inmobi/commons/uid/UIDUtil;->getEncryptedJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUidMapWithoutXor(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/uid/UID;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 113
    if-eqz p3, :cond_1

    .line 115
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v2}, Lcom/inmobi/commons/uid/UIDUtil;->getJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/commons/uid/UID;->getDefaultUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v0, "commons"

    const-string v1, "Unable to initialize commons."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUidMapWitoutXOR(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/commons/uid/UID;->getDefaultUidMapWithoutXor(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v0, "commons"

    const-string v1, "Unable to initialize commons."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isFba()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    return v0
.end method

.method public isGPId()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    return v0
.end method

.method public isLid()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    return v0
.end method

.method public isLtve()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    return v0
.end method

.method public isO1()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    return v0
.end method

.method public isSid()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    return v0
.end method

.method public isUm5()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    return v0
.end method

.method public final setFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    const-string v0, "O1"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 331
    const-string v0, "SID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 332
    const-string v0, "LID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 333
    const-string v0, "FBA"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 334
    const-string v0, "UM5"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 335
    const-string v0, "LTVID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 336
    const-string v0, "GPID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    .line 337
    return-void
.end method
