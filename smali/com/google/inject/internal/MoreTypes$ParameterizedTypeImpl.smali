.class public Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;
.implements Lcom/google/inject/internal/MoreTypes$CompositeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterizedTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 7
    .param p1, "ownerType"    # Ljava/lang/reflect/Type;
    .param p2, "rawType"    # Ljava/lang/reflect/Type;
    .param p3, "typeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    instance-of v2, p2, Ljava/lang/Class;

    if-eqz v2, :cond_2

    move-object v0, p2

    .line 349
    check-cast v0, Ljava/lang/Class;

    .line 350
    .local v0, "rawTypeAsClass":Ljava/lang/Class;
    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "No owner type for enclosed %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p2, v6, v3

    invoke-static {v2, v5, v6}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 352
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_1
    move v2, v4

    :goto_1
    const-string v5, "Owner type for unenclosed %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-static {v2, v5, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 356
    .end local v0    # "rawTypeAsClass":Ljava/lang/Class;
    :cond_2
    if-nez p1, :cond_5

    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 357
    invoke-static {p2}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    iput-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 358
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Type;

    iput-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .line 359
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_3
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 360
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    const-string v3, "type parameter"

    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    const-string v3, "type parameters"

    invoke-static {v2, v3}, Lcom/google/inject/internal/MoreTypes;->access$000(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v2, v1

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "t":I
    .restart local v0    # "rawTypeAsClass":Ljava/lang/Class;
    :cond_3
    move v2, v3

    .line 350
    goto :goto_0

    :cond_4
    move v2, v3

    .line 352
    goto :goto_1

    .line 356
    .end local v0    # "rawTypeAsClass":Ljava/lang/Class;
    :cond_5
    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_2

    .line 364
    .restart local v1    # "t":I
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 397
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/google/inject/internal/MoreTypes;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/inject/internal/MoreTypes;->access$200(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isFullySpecified()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 379
    iget-object v5, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-static {v5}, Lcom/google/inject/internal/MoreTypes;->access$100(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v4

    .line 383
    :cond_1
    iget-object v5, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v5}, Lcom/google/inject/internal/MoreTypes;->access$100(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 388
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lcom/google/inject/internal/MoreTypes;->access$100(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 393
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lcom/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 412
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    :goto_0
    return-object v2

    .line 415
    :cond_0
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 417
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    :cond_1
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
