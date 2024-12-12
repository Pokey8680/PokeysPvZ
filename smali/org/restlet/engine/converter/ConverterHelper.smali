.class public abstract Lorg/restlet/engine/converter/ConverterHelper;
.super Lorg/restlet/engine/Helper;
.source "ConverterHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/restlet/engine/Helper;-><init>()V

    return-void
.end method


# virtual methods
.method protected addObjectClass(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "objectClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .local p2, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "objectClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .restart local p1    # "objectClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object p1
.end method

.method protected addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;
    .locals 0
    .param p2, "userVariant"    # Lorg/restlet/engine/resource/VariantInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/VariantInfo;",
            ">;",
            "Lorg/restlet/engine/resource/VariantInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/VariantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    if-eqz p2, :cond_1

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .restart local p1    # "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    return-object p1
.end method

.method public addVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p2, "targetVariant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/restlet/representation/Variant;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/VariantInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/VariantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/engine/converter/ConverterHelper;->getVariants(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "helperVariants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    if-eqz v1, :cond_3

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/resource/VariantInfo;

    .line 116
    .local v0, "helperVariant":Lorg/restlet/engine/resource/VariantInfo;
    if-nez p2, :cond_1

    .line 117
    invoke-virtual {p0, p3, v0}, Lorg/restlet/engine/converter/ConverterHelper;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v0, p2}, Lorg/restlet/engine/resource/VariantInfo;->includes(Lorg/restlet/representation/Variant;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    new-instance v3, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/engine/resource/VariantInfo;-><init>(Lorg/restlet/data/MediaType;)V

    invoke-virtual {p0, p3, v3}, Lorg/restlet/engine/converter/ConverterHelper;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p2, v0}, Lorg/restlet/representation/Variant;->includes(Lorg/restlet/representation/Variant;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {p0, p3, v0}, Lorg/restlet/engine/converter/ConverterHelper;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 133
    .end local v0    # "helperVariant":Lorg/restlet/engine/resource/VariantInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object p3
.end method

.method public abstract getObjectClasses(Lorg/restlet/representation/Variant;)Ljava/util/List;
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
.end method

.method public abstract getVariants(Ljava/lang/Class;)Ljava/util/List;
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
.end method

.method public getVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;)Ljava/util/List;
    .locals 1
    .param p2, "targetVariant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/restlet/representation/Variant;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/VariantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/engine/converter/ConverterHelper;->addVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract score(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)F
.end method

.method public abstract score(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)F
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
.end method

.method public abstract toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)Ljava/lang/Object;
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
.end method

.method public abstract toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public updatePreferences(Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
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
    .line 240
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    .local p2, "entity":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    return-void
.end method

.method public updatePreferences(Ljava/util/List;Lorg/restlet/data/MediaType;F)V
    .locals 4
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "score"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;>;",
            "Lorg/restlet/data/MediaType;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    const/4 v0, 0x0

    .line 258
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 259
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Preference;

    .line 261
    .local v2, "preference":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;"
    invoke-virtual {v2}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v3

    check-cast v3, Lorg/restlet/data/MediaType;

    invoke-virtual {v3, p2}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v3

    cmpg-float v3, v3, p3

    if-gez v3, :cond_0

    .line 263
    invoke-virtual {v2, p3}, Lorg/restlet/data/Preference;->setQuality(F)V

    .line 264
    const/4 v0, 0x1

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "preference":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 269
    new-instance v3, Lorg/restlet/data/Preference;

    invoke-direct {v3, p2, p3}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;F)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    return-void
.end method
