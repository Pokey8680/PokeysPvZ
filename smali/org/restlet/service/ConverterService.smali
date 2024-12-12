.class public Lorg/restlet/service/ConverterService;
.super Lorg/restlet/service/Service;
.source "ConverterService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/restlet/service/Service;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/restlet/service/Service;-><init>(Z)V

    .line 81
    return-void
.end method


# virtual methods
.method public getObjectClasses(Lorg/restlet/representation/Variant;)Ljava/util/List;
    .locals 5
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
    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v1, 0x0

    .line 95
    .local v1, "helperObjectClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/converter/ConverterHelper;

    .line 97
    .local v0, "ch":Lorg/restlet/engine/converter/ConverterHelper;
    invoke-virtual {v0, p1}, Lorg/restlet/engine/converter/ConverterHelper;->getObjectClasses(Lorg/restlet/representation/Variant;)Ljava/util/List;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    if-nez v3, :cond_1

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 108
    .end local v0    # "ch":Lorg/restlet/engine/converter/ConverterHelper;
    :cond_2
    return-object v3
.end method

.method public getVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;)Ljava/util/List;
    .locals 1
    .param p2, "target"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/restlet/representation/Variant;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lorg/restlet/representation/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lorg/restlet/engine/converter/ConverterUtils;->getVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toObject(Lorg/restlet/representation/Representation;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, p1, v0, v0}, Lorg/restlet/service/ConverterService;->toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)Ljava/lang/Object;
    .locals 12
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
    .line 153
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 154
    .local v5, "result":Ljava/lang/Object;, "TT;"
    if-nez p3, :cond_2

    const/4 v4, 0x1

    .line 156
    .local v4, "loggable":Z
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 157
    invoke-static {p1, p2, p3}, Lorg/restlet/engine/converter/ConverterUtils;->getBestHelper(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)Lorg/restlet/engine/converter/ConverterHelper;

    move-result-object v2

    .line 160
    .local v2, "ch":Lorg/restlet/engine/converter/ConverterHelper;
    if-eqz v2, :cond_3

    .line 162
    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The following converter was selected for the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " representation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {v2, p1, p2, p3}, Lorg/restlet/engine/converter/ConverterHelper;->toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)Ljava/lang/Object;

    move-result-object v5

    .line 172
    instance-of v7, v5, Lorg/restlet/representation/Representation;

    if-eqz v7, :cond_1

    .line 173
    move-object v0, v5

    check-cast v0, Lorg/restlet/representation/Representation;

    move-object v6, v0

    .line 176
    .local v6, "resultRepresentation":Lorg/restlet/representation/Representation;
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 178
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/representation/Representation;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 180
    invoke-virtual {v6}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-virtual {v6}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v2    # "ch":Lorg/restlet/engine/converter/ConverterHelper;
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    .end local v6    # "resultRepresentation":Lorg/restlet/representation/Representation;
    :cond_1
    :goto_1
    return-object v5

    .line 154
    .end local v4    # "loggable":Z
    .restart local v5    # "result":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-virtual {p3}, Lorg/restlet/resource/Resource;->isLoggable()Z

    move-result v4

    goto :goto_0

    .line 185
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    .restart local v2    # "ch":Lorg/restlet/engine/converter/ConverterHelper;
    .restart local v4    # "loggable":Z
    :catch_0
    move-exception v3

    .line 186
    .local v3, "exception":Ljava/lang/Exception;
    if-eqz v4, :cond_1

    .line 187
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to convert a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " representation into an object of class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 197
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v5    # "result":Ljava/lang/Object;, "TT;"
    :cond_3
    if-eqz v4, :cond_1

    .line 198
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find a converter for this representation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public toRepresentation(Ljava/lang/Object;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, p1, v0, v0}, Lorg/restlet/service/ConverterService;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)Lorg/restlet/representation/Representation;
    .locals 11
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Lorg/restlet/representation/Variant;
    .param p3, "resource"    # Lorg/restlet/resource/Resource;

    .prologue
    .line 233
    const/4 v4, 0x0

    .line 234
    .local v4, "result":Lorg/restlet/representation/Representation;
    if-nez p3, :cond_7

    const/4 v3, 0x1

    .line 235
    .local v3, "loggable":Z
    :goto_0
    invoke-static {p1, p2, p3}, Lorg/restlet/engine/converter/ConverterUtils;->getBestHelper(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)Lorg/restlet/engine/converter/ConverterHelper;

    move-result-object v1

    .line 238
    .local v1, "ch":Lorg/restlet/engine/converter/ConverterHelper;
    if-eqz v1, :cond_c

    .line 240
    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Converter selected for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 248
    :cond_0
    if-nez p2, :cond_1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/restlet/engine/converter/ConverterHelper;->getVariants(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 252
    .local v6, "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 253
    if-eqz p3, :cond_8

    .line 254
    invoke-virtual {p3}, Lorg/restlet/resource/Resource;->getConnegService()Lorg/restlet/service/ConnegService;

    move-result-object v7

    invoke-virtual {p3}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v8

    invoke-virtual {p3}, Lorg/restlet/resource/Resource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Lorg/restlet/service/ConnegService;->getPreferredVariant(Ljava/util/List;Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)Lorg/restlet/representation/Variant;

    move-result-object p2

    .line 266
    .end local v6    # "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    :cond_1
    :goto_1
    invoke-virtual {v1, p1, p2, p3}, Lorg/restlet/engine/converter/ConverterHelper;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)Lorg/restlet/representation/Representation;

    move-result-object v4

    .line 268
    if-eqz v4, :cond_6

    .line 270
    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v7

    if-nez v7, :cond_2

    .line 271
    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/restlet/representation/Representation;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 274
    :cond_2
    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/data/MediaType;->isConcrete()Z

    move-result v7

    if-nez v7, :cond_4

    .line 276
    :cond_3
    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/data/MediaType;->isConcrete()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 278
    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/restlet/representation/Representation;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 287
    :cond_4
    :goto_2
    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 288
    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_5
    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 292
    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_6
    :goto_3
    return-object v4

    .line 234
    .end local v1    # "ch":Lorg/restlet/engine/converter/ConverterHelper;
    .end local v3    # "loggable":Z
    :cond_7
    invoke-virtual {p3}, Lorg/restlet/resource/Resource;->isLoggable()Z

    move-result v3

    goto/16 :goto_0

    .line 259
    .restart local v1    # "ch":Lorg/restlet/engine/converter/ConverterHelper;
    .restart local v3    # "loggable":Z
    .restart local v6    # "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    :cond_8
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/restlet/representation/Variant;

    move-object p2, v0

    goto :goto_1

    .line 262
    :cond_9
    new-instance v5, Lorg/restlet/representation/Variant;

    invoke-direct {v5}, Lorg/restlet/representation/Variant;-><init>()V

    .end local p2    # "target":Lorg/restlet/representation/Variant;
    .local v5, "target":Lorg/restlet/representation/Variant;
    move-object p2, v5

    .end local v5    # "target":Lorg/restlet/representation/Variant;
    .restart local p2    # "target":Lorg/restlet/representation/Variant;
    goto :goto_1

    .line 279
    .end local v6    # "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    :cond_a
    if-eqz p3, :cond_b

    .line 280
    invoke-virtual {p3}, Lorg/restlet/resource/Resource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/service/MetadataService;->getDefaultMediaType()Lorg/restlet/data/MediaType;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/restlet/representation/Representation;->setMediaType(Lorg/restlet/data/MediaType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 295
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v3, :cond_6

    .line 297
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to convert object "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to this representation variant: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_2
    sget-object v7, Lorg/restlet/data/MediaType;->APPLICATION_OCTET_STREAM:Lorg/restlet/data/MediaType;

    invoke-virtual {v4, v7}, Lorg/restlet/representation/Representation;->setMediaType(Lorg/restlet/data/MediaType;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 305
    :cond_c
    if-eqz v3, :cond_6

    .line 306
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find a converter for this object : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public updatePreferences(Ljava/util/List;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    .local p2, "entity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/converter/ConverterHelper;

    .line 328
    .local v0, "ch":Lorg/restlet/engine/converter/ConverterHelper;
    invoke-virtual {v0, p1, p2}, Lorg/restlet/engine/converter/ConverterHelper;->updatePreferences(Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_0

    .line 330
    .end local v0    # "ch":Lorg/restlet/engine/converter/ConverterHelper;
    :cond_0
    return-void
.end method
