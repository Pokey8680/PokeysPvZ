.class public Lorg/restlet/engine/converter/ConverterUtils;
.super Ljava/lang/Object;
.source "ConverterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public static getBestHelper(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)Lorg/restlet/engine/converter/ConverterHelper;
    .locals 10
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "target"    # Lorg/restlet/representation/Variant;
    .param p2, "resource"    # Lorg/restlet/resource/Resource;

    .prologue
    .line 66
    const/4 v5, 0x0

    .line 67
    .local v5, "result":Lorg/restlet/engine/converter/ConverterHelper;
    const/high16 v0, -0x40800000    # -1.0f

    .line 70
    .local v0, "bestScore":F
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/converter/ConverterHelper;

    .line 72
    .local v1, "ch":Lorg/restlet/engine/converter/ConverterHelper;
    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {v1, p0, p1, p2}, Lorg/restlet/engine/converter/ConverterHelper;->score(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 76
    .local v2, "currentScore":F
    cmpl-float v6, v2, v0

    if-lez v6, :cond_0

    .line 77
    move v0, v2

    .line 78
    move-object v5, v1

    goto :goto_0

    .line 80
    .end local v2    # "currentScore":F
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable get the score of the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " converter helper."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v1    # "ch":Lorg/restlet/engine/converter/ConverterHelper;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v5
.end method

.method public static getBestHelper(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)Lorg/restlet/engine/converter/ConverterHelper;
    .locals 6
    .param p0, "source"    # Lorg/restlet/representation/Representation;
    .param p2, "resource"    # Lorg/restlet/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/representation/Representation;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/restlet/resource/Resource;",
            ")",
            "Lorg/restlet/engine/converter/ConverterHelper;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 108
    .local v4, "result":Lorg/restlet/engine/converter/ConverterHelper;
    const/high16 v0, -0x40800000    # -1.0f

    .line 111
    .local v0, "bestScore":F
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/converter/ConverterHelper;

    .line 113
    .local v1, "ch":Lorg/restlet/engine/converter/ConverterHelper;
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1, p0, p1, p2}, Lorg/restlet/engine/converter/ConverterHelper;->score(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)F

    move-result v2

    .line 116
    .local v2, "currentScore":F
    cmpl-float v5, v2, v0

    if-lez v5, :cond_0

    .line 117
    move v0, v2

    .line 118
    move-object v4, v1

    goto :goto_0

    .line 123
    .end local v1    # "ch":Lorg/restlet/engine/converter/ConverterHelper;
    .end local v2    # "currentScore":F
    :cond_1
    return-object v4
.end method

.method public static getVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;)Ljava/util/List;
    .locals 4
    .param p1, "targetVariant"    # Lorg/restlet/representation/Variant;
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
    .line 138
    .local p0, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 140
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/converter/ConverterHelper;

    .line 142
    .local v0, "ch":Lorg/restlet/engine/converter/ConverterHelper;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p0, p1, v2}, Lorg/restlet/engine/converter/ConverterHelper;->addVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 147
    .end local v0    # "ch":Lorg/restlet/engine/converter/ConverterHelper;
    :cond_1
    return-object v2
.end method
