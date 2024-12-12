.class public Lorg/restlet/engine/application/StrictConneg;
.super Lorg/restlet/engine/application/Conneg;
.source "StrictConneg.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)V
    .locals 0
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/application/Conneg;-><init>(Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected getCharacterSetPrefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/CharacterSet;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getEncodingPrefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLanguagePrefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Language;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaTypePrefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected scoreAnnotation(Lorg/restlet/engine/resource/AnnotationInfo;)F
    .locals 14
    .param p1, "annotation"    # Lorg/restlet/engine/resource/AnnotationInfo;

    .prologue
    .line 122
    const/high16 v10, -0x40800000    # -1.0f

    .line 124
    .local v10, "result":F
    if-eqz p1, :cond_e

    .line 125
    invoke-virtual {p1}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 126
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getRequest()Lorg/restlet/Request;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getRequest()Lorg/restlet/Request;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 129
    :cond_0
    const/high16 v10, -0x40800000    # -1.0f

    .line 199
    :goto_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 200
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Score of annotation \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 208
    :cond_1
    :goto_1
    return v10

    .line 132
    :cond_2
    new-instance v6, Lorg/restlet/data/Form;

    invoke-virtual {p1}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;)V

    .line 133
    .local v6, "constraintParams":Lorg/restlet/data/Form;
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getRequest()Lorg/restlet/Request;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/data/Reference;->getQueryAsForm()Lorg/restlet/data/Form;

    move-result-object v1

    .line 135
    .local v1, "actualParams":Lorg/restlet/data/Form;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v9, "matchedParams":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Parameter;>;"
    const/4 v3, 0x1

    .line 140
    .local v3, "allConstraintsMatched":Z
    const/4 v4, 0x0

    .line 143
    .local v4, "constraintMatched":Z
    const/4 v7, 0x0

    .line 144
    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/restlet/data/Form;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    if-eqz v3, :cond_7

    .line 145
    invoke-virtual {v6, v7}, Lorg/restlet/data/Form;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/restlet/data/Parameter;

    .line 146
    .local v5, "constraintParam":Lorg/restlet/data/Parameter;
    const/4 v4, 0x0

    .line 148
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    invoke-virtual {v1}, Lorg/restlet/data/Form;->size()I

    move-result v11

    if-ge v8, v11, :cond_5

    .line 149
    invoke-virtual {v1, v8}, Lorg/restlet/data/Form;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Parameter;

    .line 151
    .local v0, "actualParam":Lorg/restlet/data/Parameter;
    invoke-virtual {v5}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 154
    invoke-virtual {v5}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v5}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 158
    :cond_3
    const/4 v4, 0x1

    .line 159
    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 164
    .end local v0    # "actualParam":Lorg/restlet/data/Parameter;
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    .line 144
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 164
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 171
    .end local v5    # "constraintParam":Lorg/restlet/data/Parameter;
    .end local v8    # "j":I
    :cond_7
    invoke-virtual {v1}, Lorg/restlet/data/Form;->size()I

    move-result v11

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v12

    if-ne v11, v12, :cond_8

    const/4 v2, 0x1

    .line 174
    .local v2, "allActualMatched":Z
    :goto_5
    if-eqz v3, :cond_a

    .line 175
    if-eqz v2, :cond_9

    .line 178
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 171
    .end local v2    # "allActualMatched":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 182
    .restart local v2    # "allActualMatched":Z
    :cond_9
    const/high16 v10, 0x3f400000    # 0.75f

    goto/16 :goto_0

    .line 185
    :cond_a
    const/high16 v10, -0x40800000    # -1.0f

    goto/16 :goto_0

    .line 189
    .end local v1    # "actualParams":Lorg/restlet/data/Form;
    .end local v2    # "allActualMatched":Z
    .end local v3    # "allConstraintsMatched":Z
    .end local v4    # "constraintMatched":Z
    .end local v6    # "constraintParams":Lorg/restlet/data/Form;
    .end local v7    # "i":I
    .end local v9    # "matchedParams":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Parameter;>;"
    :cond_b
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getRequest()Lorg/restlet/Request;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getRequest()Lorg/restlet/Request;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_d

    .line 192
    :cond_c
    const/high16 v10, 0x3f000000    # 0.5f

    goto/16 :goto_0

    .line 195
    :cond_d
    const/high16 v10, 0x3e800000    # 0.25f

    goto/16 :goto_0

    .line 205
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public scoreCharacterSet(Lorg/restlet/data/CharacterSet;)F
    .locals 1
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getCharacterSetPrefs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/application/StrictConneg;->scoreMetadata(Lorg/restlet/data/Metadata;Ljava/util/List;)F

    move-result v0

    return v0
.end method

.method public scoreEncodings(Ljava/util/List;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "encodings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Encoding;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getEncodingPrefs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/application/StrictConneg;->scoreMetadata(Ljava/util/List;Ljava/util/List;)F

    move-result v0

    return v0
.end method

.method public scoreLanguages(Ljava/util/List;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Language;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getLanguagePrefs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/application/StrictConneg;->scoreMetadata(Ljava/util/List;Ljava/util/List;)F

    move-result v0

    return v0
.end method

.method public scoreMediaType(Lorg/restlet/data/MediaType;)F
    .locals 6
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 252
    const/high16 v3, -0x40800000    # -1.0f

    .line 255
    .local v3, "result":F
    if-eqz p1, :cond_2

    .line 256
    invoke-virtual {p0}, Lorg/restlet/engine/application/StrictConneg;->getMediaTypePrefs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Preference;

    .line 257
    .local v2, "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;"
    invoke-virtual {v2}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v4

    check-cast v4, Lorg/restlet/data/MediaType;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lorg/restlet/data/MediaType;->includes(Lorg/restlet/data/Metadata;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    invoke-virtual {v2}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v0

    .line 263
    .local v0, "current":F
    :goto_1
    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 264
    move v3, v0

    goto :goto_0

    .line 260
    .end local v0    # "current":F
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .restart local v0    # "current":F
    goto :goto_1

    .line 268
    .end local v0    # "current":F
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;"
    :cond_2
    const/4 v3, 0x0

    .line 271
    :cond_3
    return v3
.end method

.method protected scoreMetadata(Ljava/util/List;Ljava/util/List;)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/restlet/data/Metadata;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<TT;>;>;)F"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "metadataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "prefs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<TT;>;>;"
    const/high16 v5, -0x40800000    # -1.0f

    .line 286
    .local v5, "result":F
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 287
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/data/Preference;

    .line 288
    .local v4, "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/data/Metadata;

    .line 289
    .local v3, "metadata":Lorg/restlet/data/Metadata;, "TT;"
    invoke-virtual {v4}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/restlet/data/Metadata;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 290
    invoke-virtual {v4}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v0

    .line 295
    .local v0, "current":F
    :goto_1
    cmpl-float v6, v0, v5

    if-lez v6, :cond_1

    .line 296
    move v5, v0

    goto :goto_0

    .line 292
    .end local v0    # "current":F
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    .restart local v0    # "current":F
    goto :goto_1

    .line 301
    .end local v0    # "current":F
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "metadata":Lorg/restlet/data/Metadata;, "TT;"
    .end local v4    # "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    :cond_3
    const/4 v5, 0x0

    .line 304
    :cond_4
    return v5
.end method

.method protected scoreMetadata(Lorg/restlet/data/Metadata;Ljava/util/List;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/restlet/data/Metadata;",
            ">(TT;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<TT;>;>;)F"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "metadata":Lorg/restlet/data/Metadata;, "TT;"
    .local p2, "prefs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<TT;>;>;"
    const/high16 v3, -0x40800000    # -1.0f

    .line 319
    .local v3, "result":F
    if-eqz p1, :cond_2

    .line 320
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Preference;

    .line 321
    .local v2, "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<+Lorg/restlet/data/Metadata;>;"
    invoke-virtual {v2}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/restlet/data/Metadata;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    invoke-virtual {v2}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v0

    .line 327
    .local v0, "current":F
    :goto_1
    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 328
    move v3, v0

    goto :goto_0

    .line 324
    .end local v0    # "current":F
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .restart local v0    # "current":F
    goto :goto_1

    .line 332
    .end local v0    # "current":F
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<+Lorg/restlet/data/Metadata;>;"
    :cond_2
    const/4 v3, 0x0

    .line 335
    :cond_3
    return v3
.end method

.method public scoreVariant(Lorg/restlet/representation/Variant;)F
    .locals 12
    .param p1, "variant"    # Lorg/restlet/representation/Variant;

    .prologue
    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, -0x40800000    # -1.0f

    .line 348
    const/high16 v5, -0x40800000    # -1.0f

    .line 349
    .local v5, "result":F
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/restlet/engine/application/StrictConneg;->scoreLanguages(Ljava/util/List;)F

    move-result v3

    .line 351
    .local v3, "languageScore":F
    cmpl-float v6, v3, v7

    if-eqz v6, :cond_0

    .line 352
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/restlet/engine/application/StrictConneg;->scoreMediaType(Lorg/restlet/data/MediaType;)F

    move-result v4

    .line 354
    .local v4, "mediaTypeScore":F
    cmpl-float v6, v4, v7

    if-eqz v6, :cond_0

    .line 355
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/restlet/engine/application/StrictConneg;->scoreCharacterSet(Lorg/restlet/data/CharacterSet;)F

    move-result v1

    .line 358
    .local v1, "characterSetScore":F
    cmpl-float v6, v1, v7

    if-eqz v6, :cond_0

    .line 359
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/restlet/engine/application/StrictConneg;->scoreEncodings(Ljava/util/List;)F

    move-result v2

    .line 361
    .local v2, "encodingScore":F
    cmpl-float v6, v2, v7

    if-eqz v6, :cond_0

    .line 362
    instance-of v6, p1, Lorg/restlet/engine/resource/VariantInfo;

    if-eqz v6, :cond_2

    move-object v6, p1

    .line 363
    check-cast v6, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v6}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/restlet/engine/application/StrictConneg;->scoreAnnotation(Lorg/restlet/engine/resource/AnnotationInfo;)F

    move-result v0

    .line 367
    .local v0, "annotationScore":F
    mul-float v6, v3, v11

    mul-float v7, v4, v10

    add-float/2addr v6, v7

    mul-float v7, v1, v8

    add-float/2addr v6, v7

    mul-float v7, v2, v9

    add-float/2addr v6, v7

    mul-float v7, v0, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x41400000    # 12.0f

    div-float v5, v6, v7

    move-object v6, p1

    .line 372
    check-cast v6, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v6}, Lorg/restlet/engine/resource/VariantInfo;->getInputScore()F

    move-result v6

    mul-float/2addr v5, v6

    .line 385
    .end local v0    # "annotationScore":F
    .end local v1    # "characterSetScore":F
    .end local v2    # "encodingScore":F
    .end local v4    # "mediaTypeScore":F
    :cond_0
    :goto_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 386
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total score of variant \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 390
    :cond_1
    return v5

    .line 376
    .restart local v1    # "characterSetScore":F
    .restart local v2    # "encodingScore":F
    .restart local v4    # "mediaTypeScore":F
    :cond_2
    mul-float v6, v3, v11

    mul-float v7, v4, v10

    add-float/2addr v6, v7

    mul-float v7, v1, v8

    add-float/2addr v6, v7

    mul-float v7, v2, v9

    add-float/2addr v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    div-float v5, v6, v7

    goto :goto_0
.end method
