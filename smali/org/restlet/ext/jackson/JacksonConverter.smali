.class public Lorg/restlet/ext/jackson/JacksonConverter;
.super Lorg/restlet/engine/converter/ConverterHelper;
.source "JacksonConverter.java"


# static fields
.field private static final VARIANT_JSON:Lorg/restlet/engine/resource/VariantInfo;


# instance fields
.field private objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lorg/restlet/engine/resource/VariantInfo;

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JSON:Lorg/restlet/data/MediaType;

    invoke-direct {v0, v1}, Lorg/restlet/engine/resource/VariantInfo;-><init>(Lorg/restlet/data/MediaType;)V

    sput-object v0, Lorg/restlet/ext/jackson/JacksonConverter;->VARIANT_JSON:Lorg/restlet/engine/resource/VariantInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/restlet/engine/converter/ConverterHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Lorg/restlet/data/MediaType;Ljava/lang/Object;)Lorg/restlet/ext/jackson/JacksonRepresentation;
    .locals 2
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/data/MediaType;",
            "TT;)",
            "Lorg/restlet/ext/jackson/JacksonRepresentation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "source":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/restlet/ext/jackson/JacksonRepresentation;

    invoke-direct {v0, p1, p2}, Lorg/restlet/ext/jackson/JacksonRepresentation;-><init>(Lorg/restlet/data/MediaType;Ljava/lang/Object;)V

    .line 76
    .local v0, "result":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/ext/jackson/JacksonConverter;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/ext/jackson/JacksonRepresentation;->setObjectMapper(Lorg/codehaus/jackson/map/ObjectMapper;)V

    .line 77
    return-object v0
.end method

.method protected create(Lorg/restlet/representation/Representation;Ljava/lang/Class;)Lorg/restlet/ext/jackson/JacksonRepresentation;
    .locals 2
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/representation/Representation;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/restlet/ext/jackson/JacksonRepresentation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/restlet/ext/jackson/JacksonRepresentation;

    invoke-direct {v0, p1, p2}, Lorg/restlet/ext/jackson/JacksonRepresentation;-><init>(Lorg/restlet/representation/Representation;Ljava/lang/Class;)V

    .line 94
    .local v0, "result":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/ext/jackson/JacksonConverter;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/ext/jackson/JacksonRepresentation;->setObjectMapper(Lorg/codehaus/jackson/map/ObjectMapper;)V

    .line 95
    return-object v0
.end method

.method protected createObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 106
    .local v0, "jsonFactory":Lorg/codehaus/jackson/JsonFactory;
    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    .line 107
    new-instance v1, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;)V

    return-object v1
.end method

.method public getObjectClasses(Lorg/restlet/representation/Variant;)Ljava/util/List;
    .locals 2
    .param p1, "source"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/representation/Variant;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    sget-object v1, Lorg/restlet/ext/jackson/JacksonConverter;->VARIANT_JSON:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v1, p1}, Lorg/restlet/engine/resource/VariantInfo;->isCompatible(Lorg/restlet/representation/Variant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/ext/jackson/JacksonConverter;->addObjectClass(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 116
    const-class v1, Lorg/restlet/ext/jackson/JacksonRepresentation;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/ext/jackson/JacksonConverter;->addObjectClass(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 119
    :cond_0
    return-object v0
.end method

.method public getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_1

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/restlet/ext/jackson/JacksonConverter;->createObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/ext/jackson/JacksonConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 134
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getVariants(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/VariantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 144
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    if-eqz p1, :cond_0

    .line 145
    sget-object v1, Lorg/restlet/ext/jackson/JacksonConverter;->VARIANT_JSON:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/ext/jackson/JacksonConverter;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object v0

    .line 148
    :cond_0
    return-object v0
.end method

.method public score(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)F
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Lorg/restlet/representation/Variant;
    .param p3, "resource"    # Lorg/restlet/resource/Resource;

    .prologue
    .line 153
    const/high16 v0, -0x40800000    # -1.0f

    .line 155
    .local v0, "result":F
    instance-of v1, p1, Lorg/restlet/ext/jackson/JacksonRepresentation;

    if-eqz v1, :cond_0

    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    .line 167
    :goto_0
    return v0

    .line 158
    :cond_0
    if-nez p2, :cond_1

    .line 159
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 160
    :cond_1
    sget-object v1, Lorg/restlet/ext/jackson/JacksonConverter;->VARIANT_JSON:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v1, p2}, Lorg/restlet/engine/resource/VariantInfo;->isCompatible(Lorg/restlet/representation/Variant;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    .line 163
    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public score(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)F
    .locals 2
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .param p3, "resource"    # Lorg/restlet/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/representation/Representation;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/restlet/resource/Resource;",
            ")F"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/high16 v0, -0x40800000    # -1.0f

    .line 175
    .local v0, "result":F
    instance-of v1, p1, Lorg/restlet/ext/jackson/JacksonRepresentation;

    if-eqz v1, :cond_1

    .line 176
    const/high16 v0, 0x3f800000    # 1.0f

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    if-eqz p2, :cond_2

    const-class v1, Lorg/restlet/ext/jackson/JacksonRepresentation;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 180
    :cond_2
    sget-object v1, Lorg/restlet/ext/jackson/JacksonConverter;->VARIANT_JSON:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v1, p1}, Lorg/restlet/engine/resource/VariantInfo;->isCompatible(Lorg/restlet/representation/Variant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0
.end method

.method public setObjectMapper(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 0
    .param p1, "objectMapper"    # Lorg/codehaus/jackson/map/ObjectMapper;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/restlet/ext/jackson/JacksonConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 195
    return-void
.end method

.method public toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)Ljava/lang/Object;
    .locals 3
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .param p3, "resource"    # Lorg/restlet/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/representation/Representation;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/restlet/resource/Resource;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 204
    .local v1, "result":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 206
    .local v0, "jacksonSource":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<*>;"
    instance-of v2, p1, Lorg/restlet/ext/jackson/JacksonRepresentation;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 207
    check-cast v0, Lorg/restlet/ext/jackson/JacksonRepresentation;

    .line 212
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 214
    if-eqz p2, :cond_3

    const-class v2, Lorg/restlet/ext/jackson/JacksonRepresentation;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    move-object v1, v0

    .line 222
    .end local v1    # "result":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v1

    .line 208
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_2
    sget-object v2, Lorg/restlet/ext/jackson/JacksonConverter;->VARIANT_JSON:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v2, p1}, Lorg/restlet/engine/resource/VariantInfo;->isCompatible(Lorg/restlet/representation/Variant;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {p0, p1, p2}, Lorg/restlet/ext/jackson/JacksonConverter;->create(Lorg/restlet/representation/Representation;Ljava/lang/Class;)Lorg/restlet/ext/jackson/JacksonRepresentation;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v0}, Lorg/restlet/ext/jackson/JacksonRepresentation;->getObject()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)Lorg/restlet/representation/Representation;
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Lorg/restlet/representation/Variant;
    .param p3, "resource"    # Lorg/restlet/resource/Resource;

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "result":Lorg/restlet/representation/Representation;
    instance-of v2, p1, Lorg/restlet/ext/jackson/JacksonRepresentation;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 231
    check-cast v1, Lorg/restlet/ext/jackson/JacksonRepresentation;

    .line 244
    :cond_0
    :goto_0
    return-object v1

    .line 233
    :cond_1
    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    if-nez v2, :cond_2

    .line 234
    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JSON:Lorg/restlet/data/MediaType;

    invoke-virtual {p2, v2}, Lorg/restlet/representation/Variant;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 237
    :cond_2
    sget-object v2, Lorg/restlet/ext/jackson/JacksonConverter;->VARIANT_JSON:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v2, p2}, Lorg/restlet/engine/resource/VariantInfo;->isCompatible(Lorg/restlet/representation/Variant;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/restlet/ext/jackson/JacksonConverter;->create(Lorg/restlet/data/MediaType;Ljava/lang/Object;)Lorg/restlet/ext/jackson/JacksonRepresentation;

    move-result-object v0

    .line 240
    .local v0, "jacksonRepresentation":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<Ljava/lang/Object;>;"
    move-object v1, v0

    goto :goto_0
.end method

.method public updatePreferences(Ljava/util/List;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    .local p2, "entity":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/restlet/data/MediaType;->APPLICATION_JSON:Lorg/restlet/data/MediaType;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/ext/jackson/JacksonConverter;->updatePreferences(Ljava/util/List;Lorg/restlet/data/MediaType;F)V

    .line 251
    return-void
.end method
