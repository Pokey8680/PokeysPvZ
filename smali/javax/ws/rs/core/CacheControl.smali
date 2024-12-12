.class public Ljavax/ws/rs/core/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# static fields
.field private static final delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate",
            "<",
            "Ljavax/ws/rs/core/CacheControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _private:Z

.field private cacheExtension:Ljava/util/Map;
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

.field private maxAge:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noCacheFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noStore:Z

.field private noTransform:Z

.field private privateFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private proxyRevalidate:Z

.field private sMaxAge:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Ljavax/ws/rs/ext/RuntimeDelegate;->getInstance()Ljavax/ws/rs/ext/RuntimeDelegate;

    move-result-object v0

    const-class v1, Ljavax/ws/rs/core/CacheControl;

    invoke-virtual {v0, v1}, Ljavax/ws/rs/ext/RuntimeDelegate;->createHeaderDelegate(Ljava/lang/Class;)Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    move-result-object v0

    sput-object v0, Ljavax/ws/rs/core/CacheControl;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Ljavax/ws/rs/core/CacheControl;->maxAge:I

    .line 42
    iput v0, p0, Ljavax/ws/rs/core/CacheControl;->sMaxAge:I

    .line 66
    iput-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->_private:Z

    .line 67
    iput-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->noCache:Z

    .line 68
    iput-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->noStore:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/ws/rs/core/CacheControl;->noTransform:Z

    .line 70
    iput-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->mustRevalidate:Z

    .line 71
    iput-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->proxyRevalidate:Z

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/ws/rs/core/CacheControl;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Ljavax/ws/rs/core/CacheControl;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/ws/rs/core/CacheControl;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 327
    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v1

    .line 330
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 333
    check-cast v0, Ljavax/ws/rs/core/CacheControl;

    .line 334
    .local v0, "other":Ljavax/ws/rs/core/CacheControl;
    iget-boolean v2, p0, Ljavax/ws/rs/core/CacheControl;->_private:Z

    iget-boolean v3, v0, Ljavax/ws/rs/core/CacheControl;->_private:Z

    if-ne v2, v3, :cond_0

    .line 337
    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    iget-object v3, v0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    iget-object v3, v0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    :cond_2
    iget-boolean v2, p0, Ljavax/ws/rs/core/CacheControl;->noCache:Z

    iget-boolean v3, v0, Ljavax/ws/rs/core/CacheControl;->noCache:Z

    if-ne v2, v3, :cond_0

    .line 343
    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    iget-object v3, v0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    iget-object v3, v0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    :cond_3
    iget-boolean v2, p0, Ljavax/ws/rs/core/CacheControl;->noStore:Z

    iget-boolean v3, v0, Ljavax/ws/rs/core/CacheControl;->noStore:Z

    if-ne v2, v3, :cond_0

    .line 349
    iget-boolean v2, p0, Ljavax/ws/rs/core/CacheControl;->noTransform:Z

    iget-boolean v3, v0, Ljavax/ws/rs/core/CacheControl;->noTransform:Z

    if-ne v2, v3, :cond_0

    .line 352
    iget-boolean v2, p0, Ljavax/ws/rs/core/CacheControl;->mustRevalidate:Z

    iget-boolean v3, v0, Ljavax/ws/rs/core/CacheControl;->mustRevalidate:Z

    if-ne v2, v3, :cond_0

    .line 355
    iget-boolean v2, p0, Ljavax/ws/rs/core/CacheControl;->proxyRevalidate:Z

    iget-boolean v3, v0, Ljavax/ws/rs/core/CacheControl;->proxyRevalidate:Z

    if-ne v2, v3, :cond_0

    .line 358
    iget v2, p0, Ljavax/ws/rs/core/CacheControl;->maxAge:I

    iget v3, v0, Ljavax/ws/rs/core/CacheControl;->maxAge:I

    if-ne v2, v3, :cond_0

    .line 361
    iget v2, p0, Ljavax/ws/rs/core/CacheControl;->sMaxAge:I

    iget v3, v0, Ljavax/ws/rs/core/CacheControl;->sMaxAge:I

    if-ne v2, v3, :cond_0

    .line 364
    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    iget-object v3, v0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    iget-object v3, v0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCacheExtension()Ljava/util/Map;
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
    .line 283
    iget-object v0, p0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    .line 285
    :cond_0
    iget-object v0, p0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Ljavax/ws/rs/core/CacheControl;->maxAge:I

    return v0
.end method

.method public getNoCacheFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    .line 172
    :cond_0
    iget-object v0, p0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    return-object v0
.end method

.method public getPrivateFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    .line 219
    :cond_0
    iget-object v0, p0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    return-object v0
.end method

.method public getSMaxAge()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Ljavax/ws/rs/core/CacheControl;->sMaxAge:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 304
    const/4 v0, 0x7

    .line 305
    .local v0, "hash":I
    iget-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->_private:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x11f

    .line 306
    mul-int/lit8 v4, v0, 0x29

    iget-object v1, p0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljavax/ws/rs/core/CacheControl;->privateFields:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v4, v1

    .line 307
    mul-int/lit8 v4, v0, 0x29

    iget-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->noCache:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 308
    mul-int/lit8 v4, v0, 0x29

    iget-object v1, p0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljavax/ws/rs/core/CacheControl;->noCacheFields:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v4, v1

    .line 309
    mul-int/lit8 v4, v0, 0x29

    iget-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->noStore:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    add-int v0, v4, v1

    .line 310
    mul-int/lit8 v4, v0, 0x29

    iget-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->noTransform:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    add-int v0, v4, v1

    .line 311
    mul-int/lit8 v4, v0, 0x29

    iget-boolean v1, p0, Ljavax/ws/rs/core/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_6
    add-int v0, v4, v1

    .line 312
    mul-int/lit8 v1, v0, 0x29

    iget-boolean v4, p0, Ljavax/ws/rs/core/CacheControl;->proxyRevalidate:Z

    if-eqz v4, :cond_8

    :goto_7
    add-int v0, v1, v2

    .line 313
    mul-int/lit8 v1, v0, 0x29

    iget v2, p0, Ljavax/ws/rs/core/CacheControl;->maxAge:I

    add-int v0, v1, v2

    .line 314
    mul-int/lit8 v1, v0, 0x29

    iget v2, p0, Ljavax/ws/rs/core/CacheControl;->sMaxAge:I

    add-int v0, v1, v2

    .line 315
    mul-int/lit8 v1, v0, 0x29

    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/CacheControl;->cacheExtension:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v1, v3

    .line 316
    return v0

    :cond_1
    move v1, v3

    .line 305
    goto :goto_0

    :cond_2
    move v1, v3

    .line 306
    goto :goto_1

    :cond_3
    move v1, v3

    .line 307
    goto :goto_2

    :cond_4
    move v1, v3

    .line 308
    goto :goto_3

    :cond_5
    move v1, v3

    .line 309
    goto :goto_4

    :cond_6
    move v1, v3

    .line 310
    goto :goto_5

    :cond_7
    move v1, v3

    .line 311
    goto :goto_6

    :cond_8
    move v2, v3

    .line 312
    goto :goto_7
.end method

.method public isMustRevalidate()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Ljavax/ws/rs/core/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Ljavax/ws/rs/core/CacheControl;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Ljavax/ws/rs/core/CacheControl;->noStore:Z

    return v0
.end method

.method public isNoTransform()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Ljavax/ws/rs/core/CacheControl;->noTransform:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Ljavax/ws/rs/core/CacheControl;->_private:Z

    return v0
.end method

.method public isProxyRevalidate()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Ljavax/ws/rs/core/CacheControl;->proxyRevalidate:Z

    return v0
.end method

.method public setMaxAge(I)V
    .locals 0
    .param p1, "maxAge"    # I

    .prologue
    .line 140
    iput p1, p0, Ljavax/ws/rs/core/CacheControl;->maxAge:I

    .line 141
    return-void
.end method

.method public setMustRevalidate(Z)V
    .locals 0
    .param p1, "mustRevalidate"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Ljavax/ws/rs/core/CacheControl;->mustRevalidate:Z

    .line 103
    return-void
.end method

.method public setNoCache(Z)V
    .locals 0
    .param p1, "noCache"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Ljavax/ws/rs/core/CacheControl;->noCache:Z

    .line 184
    return-void
.end method

.method public setNoStore(Z)V
    .locals 0
    .param p1, "noStore"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Ljavax/ws/rs/core/CacheControl;->noStore:Z

    .line 271
    return-void
.end method

.method public setNoTransform(Z)V
    .locals 0
    .param p1, "noTransform"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Ljavax/ws/rs/core/CacheControl;->noTransform:Z

    .line 251
    return-void
.end method

.method public setPrivate(Z)V
    .locals 0
    .param p1, "_private"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Ljavax/ws/rs/core/CacheControl;->_private:Z

    .line 231
    return-void
.end method

.method public setProxyRevalidate(Z)V
    .locals 0
    .param p1, "proxyRevalidate"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Ljavax/ws/rs/core/CacheControl;->proxyRevalidate:Z

    .line 123
    return-void
.end method

.method public setSMaxAge(I)V
    .locals 0
    .param p1, "sMaxAge"    # I

    .prologue
    .line 158
    iput p1, p0, Ljavax/ws/rs/core/CacheControl;->sMaxAge:I

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Ljavax/ws/rs/core/CacheControl;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
