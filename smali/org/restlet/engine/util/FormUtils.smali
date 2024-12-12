.class public Lorg/restlet/engine/util/FormUtils;
.super Ljava/lang/Object;
.source "FormUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method

.method public static create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLorg/restlet/data/CharacterSet;)Lorg/restlet/data/Parameter;
    .locals 4
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "decode"    # Z
    .param p3, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "result":Lorg/restlet/data/Parameter;
    if-eqz p0, :cond_0

    .line 76
    if-eqz p2, :cond_1

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "nameStr":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_3

    .line 83
    if-eqz p2, :cond_2

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "valueStr":Ljava/lang/String;
    :goto_1
    new-instance v1, Lorg/restlet/data/Parameter;

    .end local v1    # "result":Lorg/restlet/data/Parameter;
    invoke-direct {v1, v0, v2}, Lorg/restlet/data/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0    # "nameStr":Ljava/lang/String;
    .end local v2    # "valueStr":Ljava/lang/String;
    .restart local v1    # "result":Lorg/restlet/data/Parameter;
    :cond_0
    :goto_2
    return-object v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "nameStr":Ljava/lang/String;
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "valueStr":Ljava/lang/String;
    goto :goto_1

    .line 90
    .end local v2    # "valueStr":Ljava/lang/String;
    :cond_3
    new-instance v1, Lorg/restlet/data/Parameter;

    .end local v1    # "result":Lorg/restlet/data/Parameter;
    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lorg/restlet/data/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "result":Lorg/restlet/data/Parameter;
    goto :goto_2
.end method

.method public static getFirstParameter(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)Lorg/restlet/data/Parameter;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p3, "separator"    # C
    .param p4, "decode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lorg/restlet/engine/util/FormReader;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/restlet/engine/util/FormReader;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/util/FormReader;->readFirstParameter(Ljava/lang/String;)Lorg/restlet/data/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstParameter(Lorg/restlet/representation/Representation;Ljava/lang/String;)Lorg/restlet/data/Parameter;
    .locals 2
    .param p0, "post"    # Lorg/restlet/representation/Representation;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Web form cannot be parsed as no fresh content is available. If this entity has been already read once, caching of the entity is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    new-instance v0, Lorg/restlet/engine/util/FormReader;

    invoke-direct {v0, p0}, Lorg/restlet/engine/util/FormReader;-><init>(Lorg/restlet/representation/Representation;)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/util/FormReader;->readFirstParameter(Ljava/lang/String;)Lorg/restlet/data/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getParameter(Ljava/lang/String;Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)Ljava/lang/Object;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p3, "separator"    # C
    .param p4, "decode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Lorg/restlet/engine/util/FormReader;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/restlet/engine/util/FormReader;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/util/FormReader;->readParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getParameter(Lorg/restlet/representation/Representation;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "form"    # Lorg/restlet/representation/Representation;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Web form cannot be parsed as no fresh content is available. If this entity has been already read once, caching of the entity is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    new-instance v0, Lorg/restlet/engine/util/FormReader;

    invoke-direct {v0, p0}, Lorg/restlet/engine/util/FormReader;-><init>(Lorg/restlet/representation/Representation;)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/util/FormReader;->readParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getParameters(Ljava/lang/String;Ljava/util/Map;Lorg/restlet/data/CharacterSet;CZ)V
    .locals 1
    .param p0, "parametersString"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p3, "separator"    # C
    .param p4, "decode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/restlet/data/CharacterSet;",
            "CZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/restlet/engine/util/FormReader;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/restlet/engine/util/FormReader;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/util/FormReader;->readParameters(Ljava/util/Map;)V

    .line 234
    return-void
.end method

.method public static getParameters(Lorg/restlet/representation/Representation;Ljava/util/Map;)V
    .locals 2
    .param p0, "post"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/representation/Representation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Web form cannot be parsed as no fresh content is available. If this entity has been already read once, caching of the entity is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    new-instance v0, Lorg/restlet/engine/util/FormReader;

    invoke-direct {v0, p0}, Lorg/restlet/engine/util/FormReader;-><init>(Lorg/restlet/representation/Representation;)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/util/FormReader;->readParameters(Ljava/util/Map;)V

    .line 208
    return-void
.end method

.method public static isParameterFound(Lorg/restlet/data/Parameter;Lorg/restlet/data/MediaType;)Z
    .locals 3
    .param p0, "searchedParam"    # Lorg/restlet/data/Parameter;
    .param p1, "mediaRange"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 251
    .local v1, "result":Z
    invoke-virtual {p1}, Lorg/restlet/data/MediaType;->getParameters()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 252
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Parameter;>;"
    :goto_0
    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/data/Parameter;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 256
    :cond_0
    return v1
.end method

.method public static parse(Lorg/restlet/data/Form;Ljava/lang/String;Lorg/restlet/data/CharacterSet;ZC)V
    .locals 2
    .param p0, "form"    # Lorg/restlet/data/Form;
    .param p1, "parametersString"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p3, "decode"    # Z
    .param p4, "separator"    # C

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "fr":Lorg/restlet/engine/util/FormReader;
    new-instance v0, Lorg/restlet/engine/util/FormReader;

    .end local v0    # "fr":Lorg/restlet/engine/util/FormReader;
    invoke-direct {v0, p1, p2, p4, p3}, Lorg/restlet/engine/util/FormReader;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V

    .line 314
    .restart local v0    # "fr":Lorg/restlet/engine/util/FormReader;
    invoke-virtual {v0, p0}, Lorg/restlet/engine/util/FormReader;->addParameters(Lorg/restlet/util/Series;)V

    .line 316
    .end local v0    # "fr":Lorg/restlet/engine/util/FormReader;
    :cond_0
    return-void
.end method

.method public static parse(Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;Z)V
    .locals 6
    .param p0, "form"    # Lorg/restlet/data/Form;
    .param p1, "post"    # Lorg/restlet/representation/Representation;
    .param p2, "decode"    # Z

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    const/4 v0, 0x0

    .line 275
    .local v0, "fr":Lorg/restlet/engine/util/FormReader;
    :try_start_0
    new-instance v1, Lorg/restlet/engine/util/FormReader;

    invoke-direct {v1, p1, p2}, Lorg/restlet/engine/util/FormReader;-><init>(Lorg/restlet/representation/Representation;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fr":Lorg/restlet/engine/util/FormReader;
    .local v1, "fr":Lorg/restlet/engine/util/FormReader;
    move-object v0, v1

    .line 282
    .end local v1    # "fr":Lorg/restlet/engine/util/FormReader;
    .restart local v0    # "fr":Lorg/restlet/engine/util/FormReader;
    :goto_0
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p0}, Lorg/restlet/engine/util/FormReader;->addParameters(Lorg/restlet/util/Series;)V

    .line 291
    .end local v0    # "fr":Lorg/restlet/engine/util/FormReader;
    :cond_0
    :goto_1
    return-void

    .line 276
    .restart local v0    # "fr":Lorg/restlet/engine/util/FormReader;
    :catch_0
    move-exception v2

    .line 277
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unable to create a form reader. Parsing aborted."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 286
    .end local v0    # "fr":Lorg/restlet/engine/util/FormReader;
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_1
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "The form wasn\'t changed as the given representation isn\'t available."

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method
