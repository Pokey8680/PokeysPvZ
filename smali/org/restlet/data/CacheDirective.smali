.class public final Lorg/restlet/data/CacheDirective;
.super Ljava/lang/Object;
.source "CacheDirective.java"

# interfaces
.implements Lorg/restlet/util/NamedValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/restlet/util/NamedValue",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private digit:Z

.field private volatile name:Ljava/lang/String;

.field private volatile value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 406
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "digit"    # Z

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lorg/restlet/data/CacheDirective;->name:Ljava/lang/String;

    .line 420
    iput-object p2, p0, Lorg/restlet/data/CacheDirective;->value:Ljava/lang/String;

    .line 421
    iput-boolean p3, p0, Lorg/restlet/data/CacheDirective;->digit:Z

    .line 422
    return-void
.end method

.method public static maxAge(I)Lorg/restlet/data/CacheDirective;
    .locals 4
    .param p0, "maxAge"    # I

    .prologue
    .line 72
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "max-age"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static maxStale()Lorg/restlet/data/CacheDirective;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "max-stale"

    invoke-direct {v0, v1}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static maxStale(I)Lorg/restlet/data/CacheDirective;
    .locals 4
    .param p0, "maxStale"    # I

    .prologue
    .line 107
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "max-stale"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static minFresh(I)Lorg/restlet/data/CacheDirective;
    .locals 4
    .param p0, "minFresh"    # I

    .prologue
    .line 128
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "min-fresh"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static mustRevalidate()Lorg/restlet/data/CacheDirective;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "must-revalidate"

    invoke-direct {v0, v1}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static noCache()Lorg/restlet/data/CacheDirective;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "no-cache"

    invoke-direct {v0, v1}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static noCache(Ljava/lang/String;)Lorg/restlet/data/CacheDirective;
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "no-cache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static noCache(Ljava/util/List;)Lorg/restlet/data/CacheDirective;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/restlet/data/CacheDirective;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 186
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    :cond_1
    new-instance v2, Lorg/restlet/data/CacheDirective;

    const-string v3, "no-cache"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static noStore()Lorg/restlet/data/CacheDirective;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "no-store"

    invoke-direct {v0, v1}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static noTransform()Lorg/restlet/data/CacheDirective;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "no-transform"

    invoke-direct {v0, v1}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static onlyIfCached()Lorg/restlet/data/CacheDirective;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "only-if-cached"

    invoke-direct {v0, v1}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static privateInfo()Lorg/restlet/data/CacheDirective;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "private"

    invoke-direct {v0, v1}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static privateInfo(Ljava/lang/String;)Lorg/restlet/data/CacheDirective;
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "private"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static privateInfo(Ljava/util/List;)Lorg/restlet/data/CacheDirective;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/restlet/data/CacheDirective;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 299
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "i":I
    :cond_1
    new-instance v2, Lorg/restlet/data/CacheDirective;

    const-string v3, "private"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static proxyMustRevalidate()Lorg/restlet/data/CacheDirective;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "proxy-revalidate"

    invoke-direct {v0, v1}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static publicInfo()Lorg/restlet/data/CacheDirective;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "public"

    invoke-direct {v0, v1}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sharedMaxAge(I)Lorg/restlet/data/CacheDirective;
    .locals 4
    .param p0, "sharedMaxAge"    # I

    .prologue
    .line 373
    new-instance v0, Lorg/restlet/data/CacheDirective;

    const-string v1, "s-maxage"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/restlet/data/CacheDirective;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 428
    if-ne p1, p0, :cond_5

    move v0, v2

    .line 430
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_4

    .line 431
    instance-of v0, p1, Lorg/restlet/data/CacheDirective;

    .line 434
    if-eqz v0, :cond_4

    move-object v1, p1

    .line 435
    check-cast v1, Lorg/restlet/data/CacheDirective;

    .line 436
    .local v1, "that":Lorg/restlet/data/CacheDirective;
    invoke-virtual {v1}, Lorg/restlet/data/CacheDirective;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/CacheDirective;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move v0, v2

    .line 440
    :goto_1
    if-eqz v0, :cond_4

    .line 441
    invoke-virtual {v1}, Lorg/restlet/data/CacheDirective;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/CacheDirective;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    move v0, v2

    .line 445
    :goto_2
    if-eqz v0, :cond_4

    .line 446
    iget-boolean v4, p0, Lorg/restlet/data/CacheDirective;->digit:Z

    iget-boolean v5, v1, Lorg/restlet/data/CacheDirective;->digit:Z

    if-ne v4, v5, :cond_8

    move v0, v2

    .line 452
    .end local v1    # "that":Lorg/restlet/data/CacheDirective;
    :cond_4
    :goto_3
    return v0

    .end local v0    # "result":Z
    :cond_5
    move v0, v3

    .line 428
    goto :goto_0

    .restart local v0    # "result":Z
    .restart local v1    # "that":Lorg/restlet/data/CacheDirective;
    :cond_6
    move v0, v3

    .line 436
    goto :goto_1

    :cond_7
    move v0, v3

    .line 441
    goto :goto_2

    :cond_8
    move v0, v3

    .line 446
    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lorg/restlet/data/CacheDirective;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/restlet/data/CacheDirective;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 476
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/restlet/data/CacheDirective;->isDigit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/restlet/engine/util/SystemUtils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDigit()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lorg/restlet/data/CacheDirective;->digit:Z

    return v0
.end method

.method public setDigit(Z)V
    .locals 0
    .param p1, "digit"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lorg/restlet/data/CacheDirective;->digit:Z

    .line 496
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 505
    iput-object p1, p0, Lorg/restlet/data/CacheDirective;->name:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/data/CacheDirective;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 515
    iput-object p1, p0, Lorg/restlet/data/CacheDirective;->value:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheDirective [digit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/restlet/data/CacheDirective;->digit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/CacheDirective;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/CacheDirective;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
