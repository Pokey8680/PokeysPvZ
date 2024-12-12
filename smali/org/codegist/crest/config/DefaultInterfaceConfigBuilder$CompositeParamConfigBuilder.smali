.class final Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;
.super Ljava/lang/Object;
.source "DefaultInterfaceConfigBuilder.java"

# interfaces
.implements Lorg/codegist/crest/config/ParamConfigBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompositeParamConfigBuilder"
.end annotation


# instance fields
.field private final builders:[Lorg/codegist/crest/config/ParamConfigBuilder;


# direct methods
.method constructor <init>([Lorg/codegist/crest/config/ParamConfigBuilder;)V
    .locals 1
    .param p1, "builders"    # [Lorg/codegist/crest/config/ParamConfigBuilder;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, [Lorg/codegist/crest/config/ParamConfigBuilder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codegist/crest/config/ParamConfigBuilder;

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 211
    return-void
.end method


# virtual methods
.method public build()Lorg/codegist/crest/config/ParamConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public forCookie()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 268
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->forCookie()Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public forForm()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 289
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->forForm()Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public forHeader()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4

    .prologue
    .line 295
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 296
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->forHeader()Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public forMatrix()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 303
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->forMatrix()Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public forMultiPart()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 310
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->forMultiPart()Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public forPath()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 282
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->forPath()Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public forQuery()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 275
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->forQuery()Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 226
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setEncoded(Z)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4
    .param p1, "encoded"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 247
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setEncoded(Z)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4
    .param p1, "listSeparator"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 240
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMetaDatas(Ljava/util/Map;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/config/ParamConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "metadatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 254
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setMetaDatas(Ljava/util/Map;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 219
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)",
            "Lorg/codegist/crest/config/ParamConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Serializer;>;"
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 261
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 4
    .param p1, "type"    # Lorg/codegist/crest/config/ParamType;

    .prologue
    .line 232
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;->builders:[Lorg/codegist/crest/config/ParamConfigBuilder;

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfigBuilder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 233
    .local v1, "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v1, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "builder":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method
