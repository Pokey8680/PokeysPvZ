.class public abstract Lorg/restlet/engine/local/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field private volatile metadataService:Lorg/restlet/service/MetadataService;


# direct methods
.method public constructor <init>(Lorg/restlet/service/MetadataService;)V
    .locals 0
    .param p1, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lorg/restlet/engine/local/Entity;->metadataService:Lorg/restlet/service/MetadataService;

    .line 278
    return-void
.end method

.method public static getBaseName(Ljava/lang/String;Lorg/restlet/service/MetadataService;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    const/4 v4, 0x0

    .line 71
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "result":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    .local v0, "baseName":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 74
    .local v1, "extensionFound":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    if-nez v1, :cond_2

    .line 75
    aget-object v5, v3, v2

    invoke-virtual {p1, v5}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 76
    :goto_1
    if-nez v1, :cond_0

    .line 77
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 75
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getExtensions(Ljava/lang/String;Lorg/restlet/service/MetadataService;)Ljava/util/Collection;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "metadataService"    # Lorg/restlet/service/MetadataService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/restlet/service/MetadataService;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 95
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 99
    .local v0, "extensionFound":Z
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    if-nez v0, :cond_1

    .line 100
    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 99
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    :cond_1
    if-eqz v0, :cond_2

    .line 103
    add-int/lit8 v1, v1, -0x1

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 104
    aget-object v4, v3, v1

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    :cond_2
    return-object v2
.end method

.method public static getExtensions(Lorg/restlet/representation/Variant;Lorg/restlet/service/MetadataService;)Ljava/util/Collection;
    .locals 6
    .param p0, "variant"    # Lorg/restlet/representation/Variant;
    .param p1, "metadataService"    # Lorg/restlet/service/MetadataService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/representation/Variant;",
            "Lorg/restlet/service/MetadataService;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 124
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/restlet/service/MetadataService;->getExtension(Lorg/restlet/data/Metadata;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "extension":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/restlet/service/MetadataService;->getExtension(Lorg/restlet/data/Metadata;)Ljava/lang/String;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/data/Language;

    .line 134
    .local v3, "language":Lorg/restlet/data/Language;
    invoke-virtual {p1, v3}, Lorg/restlet/service/MetadataService;->getExtension(Lorg/restlet/data/Metadata;)Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v3    # "language":Lorg/restlet/data/Language;
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Encoding;

    .line 140
    .local v0, "encoding":Lorg/restlet/data/Encoding;
    invoke-virtual {p1, v0}, Lorg/restlet/service/MetadataService;->getExtension(Lorg/restlet/data/Metadata;)Ljava/lang/String;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    .end local v0    # "encoding":Lorg/restlet/data/Encoding;
    :cond_5
    return-object v4
.end method

.method public static updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V
    .locals 14
    .param p0, "entryName"    # Ljava/lang/String;
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .param p2, "applyDefault"    # Z
    .param p3, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    .line 164
    if-eqz p1, :cond_b

    .line 165
    const-string v12, "\\."

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, "tokens":[Ljava/lang/String;
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_0
    array-length v12, v11

    if-ge v9, v12, :cond_7

    .line 170
    aget-object v12, v11, v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v1

    .line 172
    .local v1, "current":Lorg/restlet/data/Metadata;
    if-eqz v1, :cond_0

    .line 174
    instance-of v12, v1, Lorg/restlet/data/MediaType;

    if-eqz v12, :cond_2

    move-object v12, v1

    .line 175
    check-cast v12, Lorg/restlet/data/MediaType;

    invoke-virtual {p1, v12}, Lorg/restlet/representation/Variant;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 203
    :cond_0
    :goto_1
    aget-object v12, v11, v9

    const/16 v13, 0x2d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 204
    .local v2, "dashIndex":I
    const/4 v12, -0x1

    if-eq v2, v12, :cond_1

    .line 209
    aget-object v12, v11, v9

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, "primaryPart":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v1

    .line 212
    instance-of v12, v1, Lorg/restlet/data/Language;

    if-eqz v12, :cond_1

    .line 213
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v13

    move-object v12, v1

    check-cast v12, Lorg/restlet/data/Language;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v10    # "primaryPart":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "dashIndex":I
    :cond_2
    instance-of v12, v1, Lorg/restlet/data/CharacterSet;

    if-eqz v12, :cond_3

    move-object v12, v1

    .line 177
    check-cast v12, Lorg/restlet/data/CharacterSet;

    invoke-virtual {p1, v12}, Lorg/restlet/representation/Variant;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    goto :goto_1

    .line 178
    :cond_3
    instance-of v12, v1, Lorg/restlet/data/Encoding;

    if-eqz v12, :cond_5

    .line 180
    const/4 v7, 0x0

    .line 181
    .local v7, "found":Z
    const/4 v8, 0x0

    .line 182
    .local v8, "i":I
    :goto_2
    if-nez v7, :cond_4

    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_4

    .line 183
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/restlet/data/Metadata;

    invoke-virtual {v1, v12}, Lorg/restlet/data/Metadata;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v7

    .line 182
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 186
    :cond_4
    if-nez v7, :cond_0

    .line 187
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v13

    move-object v12, v1

    check-cast v12, Lorg/restlet/data/Encoding;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v7    # "found":Z
    .end local v8    # "i":I
    :cond_5
    instance-of v12, v1, Lorg/restlet/data/Language;

    if-eqz v12, :cond_0

    .line 191
    const/4 v7, 0x0

    .line 192
    .restart local v7    # "found":Z
    const/4 v8, 0x0

    .line 193
    .restart local v8    # "i":I
    :goto_3
    if-nez v7, :cond_6

    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_6

    .line 194
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/restlet/data/Metadata;

    invoke-virtual {v1, v12}, Lorg/restlet/data/Metadata;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v7

    .line 193
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 197
    :cond_6
    if-nez v7, :cond_0

    .line 198
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v13

    move-object v12, v1

    check-cast v12, Lorg/restlet/data/Language;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 218
    .end local v1    # "current":Lorg/restlet/data/Metadata;
    .end local v7    # "found":Z
    .end local v8    # "i":I
    :cond_7
    if-eqz p2, :cond_b

    .line 220
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 221
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/service/MetadataService;->getDefaultLanguage()Lorg/restlet/data/Language;

    move-result-object v5

    .line 224
    .local v5, "defaultLanguage":Lorg/restlet/data/Language;
    if-eqz v5, :cond_8

    sget-object v12, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    invoke-virtual {v5, v12}, Lorg/restlet/data/Language;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 226
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v5    # "defaultLanguage":Lorg/restlet/data/Language;
    :cond_8
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v12

    if-nez v12, :cond_9

    .line 232
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/service/MetadataService;->getDefaultMediaType()Lorg/restlet/data/MediaType;

    move-result-object v6

    .line 235
    .local v6, "defaultMediaType":Lorg/restlet/data/MediaType;
    if-eqz v6, :cond_9

    sget-object v12, Lorg/restlet/data/MediaType;->ALL:Lorg/restlet/data/MediaType;

    invoke-virtual {v6, v12}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 237
    invoke-virtual {p1, v6}, Lorg/restlet/representation/Variant;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 242
    .end local v6    # "defaultMediaType":Lorg/restlet/data/MediaType;
    :cond_9
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 243
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/service/MetadataService;->getDefaultEncoding()Lorg/restlet/data/Encoding;

    move-result-object v4

    .line 246
    .local v4, "defaultEncoding":Lorg/restlet/data/Encoding;
    if-eqz v4, :cond_a

    sget-object v12, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    invoke-virtual {v4, v12}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    sget-object v12, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v4, v12}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 249
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v4    # "defaultEncoding":Lorg/restlet/data/Encoding;
    :cond_a
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v12

    if-nez v12, :cond_b

    .line 255
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/service/MetadataService;->getDefaultCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v3

    .line 258
    .local v3, "defaultCharacterSet":Lorg/restlet/data/CharacterSet;
    if-eqz v3, :cond_b

    sget-object v12, Lorg/restlet/data/CharacterSet;->ALL:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v3, v12}, Lorg/restlet/data/CharacterSet;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 260
    invoke-virtual {p1, v3}, Lorg/restlet/representation/Variant;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 265
    .end local v3    # "defaultCharacterSet":Lorg/restlet/data/CharacterSet;
    .end local v9    # "j":I
    .end local v11    # "tokens":[Ljava/lang/String;
    :cond_b
    return-void
.end method


# virtual methods
.method public abstract exists()Z
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/local/Entity;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/local/Entity;->getBaseName(Ljava/lang/String;Lorg/restlet/service/MetadataService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/local/Entity;",
            ">;"
        }
    .end annotation
.end method

.method public getExtensions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/local/Entity;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/local/Entity;->getExtensions(Ljava/lang/String;Lorg/restlet/service/MetadataService;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataService()Lorg/restlet/service/MetadataService;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/restlet/engine/local/Entity;->metadataService:Lorg/restlet/service/MetadataService;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParent()Lorg/restlet/engine/local/Entity;
.end method

.method public abstract getRepresentation(Lorg/restlet/data/MediaType;I)Lorg/restlet/representation/Representation;
.end method

.method public getVariant()Lorg/restlet/representation/Variant;
    .locals 4

    .prologue
    .line 351
    new-instance v0, Lorg/restlet/representation/Variant;

    invoke-direct {v0}, Lorg/restlet/representation/Variant;-><init>()V

    .line 352
    .local v0, "result":Lorg/restlet/representation/Variant;
    invoke-virtual {p0}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/restlet/engine/local/Entity;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    .line 353
    return-object v0
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isNormal()Z
.end method
