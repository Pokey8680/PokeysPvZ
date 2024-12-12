.class public abstract Lorg/restlet/engine/local/EntityClientHelper;
.super Lorg/restlet/engine/local/LocalClientHelper;
.source "EntityClientHelper.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 0
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/restlet/engine/local/LocalClientHelper;-><init>(Lorg/restlet/Client;)V

    .line 68
    return-void
.end method


# virtual methods
.method public createReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "encodedParentDirPath"    # Ljava/lang/String;
    .param p3, "encodedEntityName"    # Ljava/lang/String;
    .param p4, "decodedVariantName"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lorg/restlet/data/Reference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3, p4}, Lorg/restlet/engine/local/EntityClientHelper;->getReencodedVariantEntityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "result":Lorg/restlet/data/Reference;
    return-object v0
.end method

.method public abstract getEntity(Ljava/lang/String;)Lorg/restlet/engine/local/Entity;
.end method

.method protected getReencodedVariantEntityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "encodedEntityName"    # Ljava/lang/String;
    .param p2, "decodedVariantEntityName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    .local v5, "i":I
    const/4 v6, 0x0

    .line 123
    .local v6, "j":I
    const/4 v7, 0x0

    .line 124
    .local v7, "stop":Z
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 125
    .local v4, "encodeds":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 127
    .local v2, "decodeds":[C
    const/4 v5, 0x0

    :goto_0
    array-length v8, v2

    if-ge v5, v8, :cond_4

    array-length v8, v4

    if-ge v6, v8, :cond_4

    if-nez v7, :cond_4

    .line 128
    aget-char v1, v2, v5

    .line 129
    .local v1, "decodedChar":C
    aget-char v3, v4, v6

    .line 131
    .local v3, "encodedChar":C
    const/16 v8, 0x25

    if-ne v3, v8, :cond_1

    .line 132
    add-int/lit8 v8, v6, 0x3

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "dec":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v1, v8, :cond_0

    .line 135
    add-int/lit8 v6, v6, 0x3

    .line 127
    .end local v0    # "dec":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    .restart local v0    # "dec":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "dec":Ljava/lang/String;
    :cond_1
    if-ne v1, v3, :cond_2

    .line 140
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 142
    :cond_2
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "dec":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v1, v8, :cond_3

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 147
    :cond_3
    const/4 v7, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "dec":Ljava/lang/String;
    .end local v1    # "decodedChar":C
    .end local v3    # "encodedChar":C
    :cond_4
    if-eqz v7, :cond_5

    .line 153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 162
    :goto_2
    return-object v8

    .line 157
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v6, v8, :cond_6

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 162
    :cond_6
    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method protected handleEntityGet(Lorg/restlet/Request;Lorg/restlet/Response;Lorg/restlet/engine/local/Entity;)V
    .locals 27
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "entity"    # Lorg/restlet/engine/local/Entity;

    .prologue
    .line 177
    const/16 v17, 0x0

    .line 180
    .local v17, "output":Lorg/restlet/representation/Representation;
    const/4 v14, 0x0

    .line 181
    .local v14, "found":Z
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 183
    .local v16, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    if-nez v14, :cond_0

    .line 184
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/restlet/data/Preference;

    .line 185
    .local v20, "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;"
    invoke-virtual/range {v20 .. v20}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v24

    check-cast v24, Lorg/restlet/data/MediaType;

    sget-object v25, Lorg/restlet/data/MediaType;->TEXT_URI_LIST:Lorg/restlet/data/MediaType;

    invoke-virtual/range {v24 .. v25}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 186
    goto :goto_0

    .line 188
    .end local v20    # "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;"
    :cond_0
    if-eqz v14, :cond_4

    .line 192
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->getBaseName()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "baseName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->getParent()Lorg/restlet/engine/local/Entity;

    move-result-object v18

    .line 197
    .local v18, "parent":Lorg/restlet/engine/local/Entity;
    if-eqz v18, :cond_3

    .line 198
    invoke-virtual/range {v18 .. v18}, Lorg/restlet/engine/local/Entity;->getChildren()Ljava/util/List;

    move-result-object v9

    .line 200
    .local v9, "entities":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/engine/local/Entity;>;"
    if-eqz v9, :cond_3

    .line 201
    new-instance v21, Lorg/restlet/data/ReferenceList;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/restlet/data/ReferenceList;-><init>(I)V

    .line 202
    .local v21, "rl":Lorg/restlet/data/ReferenceList;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v22

    .line 203
    .local v22, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 204
    .local v19, "path":Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "encodedParentDirectoryURI":Ljava/lang/String;
    const-string v24, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "encodedEntityName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/restlet/engine/local/Entity;

    .line 210
    .local v11, "entry":Lorg/restlet/engine/local/Entity;
    invoke-virtual {v11}, Lorg/restlet/engine/local/Entity;->getBaseName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 211
    invoke-virtual {v11}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v8, v7, v2}, Lorg/restlet/engine/local/EntityClientHelper;->createReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    .end local v11    # "entry":Lorg/restlet/engine/local/Entity;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Lorg/restlet/data/ReferenceList;->getTextRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v17

    .line 296
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v7    # "encodedEntityName":Ljava/lang/String;
    .end local v8    # "encodedParentDirectoryURI":Ljava/lang/String;
    .end local v9    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/engine/local/Entity;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "parent":Lorg/restlet/engine/local/Entity;
    .end local v19    # "path":Ljava/lang/String;
    .end local v21    # "rl":Lorg/restlet/data/ReferenceList;
    .end local v22    # "scheme":Ljava/lang/String;
    :cond_3
    :goto_2
    if-nez v17, :cond_c

    .line 297
    sget-object v24, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 303
    :goto_3
    return-void

    .line 221
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->exists()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 222
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 224
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->getChildren()Ljava/util/List;

    move-result-object v5

    .line 225
    .local v5, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/engine/local/Entity;>;"
    new-instance v21, Lorg/restlet/data/ReferenceList;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/restlet/data/ReferenceList;-><init>(I)V

    .line 226
    .restart local v21    # "rl":Lorg/restlet/data/ReferenceList;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "directoryUri":Ljava/lang/String;
    const-string v24, "/"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 231
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 234
    :cond_5
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/restlet/engine/local/Entity;

    .line 235
    .restart local v11    # "entry":Lorg/restlet/engine/local/Entity;
    invoke-virtual {v11}, Lorg/restlet/engine/local/Entity;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 236
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/String;)Z

    goto :goto_4

    .line 239
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/String;)Z

    goto :goto_4

    .line 244
    .end local v11    # "entry":Lorg/restlet/engine/local/Entity;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lorg/restlet/data/ReferenceList;->getTextRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v17

    .line 245
    goto/16 :goto_2

    .line 247
    .end local v5    # "children":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/engine/local/Entity;>;"
    .end local v6    # "directoryUri":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v21    # "rl":Lorg/restlet/data/ReferenceList;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/EntityClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/restlet/service/MetadataService;->getDefaultMediaType()Lorg/restlet/data/MediaType;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/EntityClientHelper;->getTimeToLive()I

    move-result v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/restlet/engine/local/Entity;->getRepresentation(Lorg/restlet/data/MediaType;I)Lorg/restlet/representation/Representation;

    move-result-object v17

    .line 249
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/EntityClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    goto/16 :goto_2

    .line 257
    :cond_9
    const/16 v23, 0x0

    .line 261
    .local v23, "uniqueVariant":Lorg/restlet/engine/local/Entity;
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->getBaseName()Ljava/lang/String;

    move-result-object v4

    .line 262
    .restart local v4    # "baseName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->getVariant()Lorg/restlet/representation/Variant;

    move-result-object v10

    .line 265
    .local v10, "entityVariant":Lorg/restlet/representation/Variant;
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->getParent()Lorg/restlet/engine/local/Entity;

    move-result-object v18

    .line 266
    .restart local v18    # "parent":Lorg/restlet/engine/local/Entity;
    if-eqz v18, :cond_b

    .line 267
    invoke-virtual/range {v18 .. v18}, Lorg/restlet/engine/local/Entity;->getChildren()Ljava/util/List;

    move-result-object v13

    .line 269
    .local v13, "files":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/engine/local/Entity;>;"
    if-eqz v13, :cond_b

    .line 270
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/restlet/engine/local/Entity;

    .line 271
    .restart local v11    # "entry":Lorg/restlet/engine/local/Entity;
    invoke-virtual {v11}, Lorg/restlet/engine/local/Entity;->getBaseName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 272
    invoke-virtual {v11}, Lorg/restlet/engine/local/Entity;->getVariant()Lorg/restlet/representation/Variant;

    move-result-object v12

    .line 274
    .local v12, "entryVariant":Lorg/restlet/representation/Variant;
    invoke-virtual {v10, v12}, Lorg/restlet/representation/Variant;->isCompatible(Lorg/restlet/representation/Variant;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 276
    move-object/from16 v23, v11

    .line 284
    .end local v11    # "entry":Lorg/restlet/engine/local/Entity;
    .end local v12    # "entryVariant":Lorg/restlet/representation/Variant;
    .end local v13    # "files":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/engine/local/Entity;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_b
    if-eqz v23, :cond_3

    .line 286
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/EntityClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/restlet/service/MetadataService;->getDefaultMediaType()Lorg/restlet/data/MediaType;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/EntityClientHelper;->getTimeToLive()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Lorg/restlet/engine/local/Entity;->getRepresentation(Lorg/restlet/data/MediaType;I)Lorg/restlet/representation/Representation;

    move-result-object v17

    .line 289
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/EntityClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    goto/16 :goto_2

    .line 299
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v10    # "entityVariant":Lorg/restlet/representation/Variant;
    .end local v18    # "parent":Lorg/restlet/engine/local/Entity;
    .end local v23    # "uniqueVariant":Lorg/restlet/engine/local/Entity;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 300
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 301
    sget-object v24, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto/16 :goto_3
.end method

.method protected handleLocal(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "decodedPath"    # Ljava/lang/String;

    .prologue
    .line 308
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    invoke-virtual {p0, p3}, Lorg/restlet/engine/local/EntityClientHelper;->getEntity(Ljava/lang/String;)Lorg/restlet/engine/local/Entity;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/engine/local/EntityClientHelper;->handleEntityGet(Lorg/restlet/Request;Lorg/restlet/Response;Lorg/restlet/engine/local/Entity;)V

    .line 316
    :goto_0
    return-void

    .line 312
    :cond_1
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 313
    invoke-virtual {p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
