.class public Lorg/restlet/engine/application/FlexibleConneg;
.super Lorg/restlet/engine/application/StrictConneg;
.source "FlexibleConneg.java"


# instance fields
.field private volatile characterSetPrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/CharacterSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile encodingPrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile languagePrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Language;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mediaTypePrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)V
    .locals 5
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/application/StrictConneg;-><init>(Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)V

    .line 80
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    .line 82
    .local v0, "clientInfo":Lorg/restlet/data/ClientInfo;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v3

    if-nez p2, :cond_1

    move-object v1, v2

    :goto_0
    sget-object v4, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    invoke-virtual {p0, v3, v1, v4}, Lorg/restlet/engine/application/FlexibleConneg;->getEnrichedPreferences(Ljava/util/List;Lorg/restlet/data/Metadata;Lorg/restlet/data/Metadata;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/engine/application/FlexibleConneg;->languagePrefs:Ljava/util/List;

    .line 88
    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v3

    if-nez p2, :cond_2

    move-object v1, v2

    :goto_1
    sget-object v4, Lorg/restlet/data/MediaType;->ALL:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, v3, v1, v4}, Lorg/restlet/engine/application/FlexibleConneg;->getEnrichedPreferences(Ljava/util/List;Lorg/restlet/data/Metadata;Lorg/restlet/data/Metadata;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/engine/application/FlexibleConneg;->mediaTypePrefs:Ljava/util/List;

    .line 92
    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v3

    if-nez p2, :cond_3

    move-object v1, v2

    :goto_2
    sget-object v4, Lorg/restlet/data/CharacterSet;->ALL:Lorg/restlet/data/CharacterSet;

    invoke-virtual {p0, v3, v1, v4}, Lorg/restlet/engine/application/FlexibleConneg;->getEnrichedPreferences(Ljava/util/List;Lorg/restlet/data/Metadata;Lorg/restlet/data/Metadata;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/engine/application/FlexibleConneg;->characterSetPrefs:Ljava/util/List;

    .line 96
    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v1

    if-nez p2, :cond_4

    :goto_3
    sget-object v3, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    invoke-virtual {p0, v1, v2, v3}, Lorg/restlet/engine/application/FlexibleConneg;->getEnrichedPreferences(Ljava/util/List;Lorg/restlet/data/Metadata;Lorg/restlet/data/Metadata;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/engine/application/FlexibleConneg;->encodingPrefs:Ljava/util/List;

    .line 101
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p2}, Lorg/restlet/service/MetadataService;->getDefaultLanguage()Lorg/restlet/data/Language;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p2}, Lorg/restlet/service/MetadataService;->getDefaultMediaType()Lorg/restlet/data/MediaType;

    move-result-object v1

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p2}, Lorg/restlet/service/MetadataService;->getDefaultCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {p2}, Lorg/restlet/service/MetadataService;->getDefaultEncoding()Lorg/restlet/data/Encoding;

    move-result-object v2

    goto :goto_3
.end method


# virtual methods
.method protected canAdd(Lorg/restlet/data/Metadata;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/restlet/data/Metadata;",
            ">(TT;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "metadata":Lorg/restlet/data/Metadata;, "TT;"
    .local p2, "undesired":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    .line 115
    .local v0, "add":Z
    if-eqz p2, :cond_1

    .line 116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Metadata;

    .line 117
    .local v2, "u":Lorg/restlet/data/Metadata;, "TT;"
    invoke-virtual {v2, p1}, Lorg/restlet/data/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 124
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "u":Lorg/restlet/data/Metadata;, "TT;"
    :cond_1
    return v0
.end method

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
    .line 133
    iget-object v0, p0, Lorg/restlet/engine/application/FlexibleConneg;->characterSetPrefs:Ljava/util/List;

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
    .line 142
    iget-object v0, p0, Lorg/restlet/engine/application/FlexibleConneg;->encodingPrefs:Ljava/util/List;

    return-object v0
.end method

.method protected getEnrichedPreferences(Ljava/util/List;Lorg/restlet/data/Metadata;Lorg/restlet/data/Metadata;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/restlet/data/Metadata;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<TT;>;>;TT;TT;)",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "userPreferences":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<TT;>;>;"
    .local p2, "defaultValue":Lorg/restlet/data/Metadata;, "TT;"
    .local p3, "allValue":Lorg/restlet/data/Metadata;, "TT;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<TT;>;>;"
    const/4 v8, 0x0

    .line 170
    .local v8, "undesired":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/restlet/data/Preference;

    .line 171
    .local v6, "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    invoke-virtual {v6}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    .line 172
    if-nez v8, :cond_1

    .line 173
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "undesired":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .restart local v8    # "undesired":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    invoke-virtual {v6}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v6    # "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    :cond_2
    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 185
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/restlet/data/Preference;

    .line 186
    .local v9, "userPref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    invoke-virtual {v9}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/data/Metadata;->getParent()Lorg/restlet/data/Metadata;

    move-result-object v5

    .line 189
    .local v5, "parent":Lorg/restlet/data/Metadata;, "TT;"
    if-eqz v5, :cond_3

    .line 190
    invoke-virtual {p0, v5, v8}, Lorg/restlet/engine/application/FlexibleConneg;->canAdd(Lorg/restlet/data/Metadata;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 191
    new-instance v10, Lorg/restlet/data/Preference;

    const v11, 0x3ba3d70a    # 0.005f

    const v12, 0x3a83126f    # 0.001f

    invoke-virtual {v9}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-direct {v10, v5, v11}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;F)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    .end local v5    # "parent":Lorg/restlet/data/Metadata;, "TT;"
    .end local v9    # "userPref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v8}, Lorg/restlet/engine/application/FlexibleConneg;->canAdd(Lorg/restlet/data/Metadata;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 199
    new-instance v2, Lorg/restlet/data/Preference;

    const v10, 0x3b449ba6    # 0.003f

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v10}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;F)V

    .line 200
    .local v2, "defaultPref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual/range {p2 .. p2}, Lorg/restlet/data/Metadata;->getParent()Lorg/restlet/data/Metadata;

    move-result-object v1

    .line 203
    .local v1, "defaultParent":Lorg/restlet/data/Metadata;, "TT;"
    if-eqz v1, :cond_5

    invoke-virtual {p0, v1, v8}, Lorg/restlet/engine/application/FlexibleConneg;->canAdd(Lorg/restlet/data/Metadata;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 204
    new-instance v10, Lorg/restlet/data/Preference;

    const v11, 0x3b03126f    # 0.002f

    invoke-direct {v10, v1, v11}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;F)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v1    # "defaultParent":Lorg/restlet/data/Metadata;, "TT;"
    .end local v2    # "defaultPref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_2
    if-ltz v3, :cond_7

    .line 211
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/restlet/data/Preference;

    invoke-virtual {v10}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lorg/restlet/data/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 212
    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 209
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 216
    :cond_7
    new-instance v10, Lorg/restlet/data/Preference;

    const v11, 0x3a83126f    # 0.001f

    move-object/from16 v0, p3

    invoke-direct {v10, v0, v11}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;F)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-object v7
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
    .line 228
    iget-object v0, p0, Lorg/restlet/engine/application/FlexibleConneg;->languagePrefs:Ljava/util/List;

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
    .line 237
    iget-object v0, p0, Lorg/restlet/engine/application/FlexibleConneg;->mediaTypePrefs:Ljava/util/List;

    return-object v0
.end method
