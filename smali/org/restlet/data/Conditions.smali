.class public final Lorg/restlet/data/Conditions;
.super Ljava/lang/Object;
.source "Conditions.java"


# instance fields
.field private volatile match:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private volatile modifiedSince:Ljava/util/Date;

.field private volatile noneMatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private volatile rangeDate:Ljava/util/Date;

.field private volatile rangeTag:Lorg/restlet/data/Tag;

.field private volatile unmodifiedSince:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method


# virtual methods
.method public getMatch()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/restlet/data/Conditions;->match:Ljava/util/List;

    .line 103
    .local v0, "m":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    if-nez v0, :cond_1

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/Conditions;->match:Ljava/util/List;

    .line 106
    if-nez v0, :cond_0

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "m":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .local v1, "m":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/Conditions;->match:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 109
    .end local v1    # "m":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v0    # "m":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 111
    :cond_1
    return-object v0

    .line 109
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "m":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v1    # "m":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "m":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v0    # "m":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    goto :goto_0
.end method

.method public getModifiedSince()Ljava/util/Date;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/restlet/data/Conditions;->modifiedSince:Ljava/util/Date;

    return-object v0
.end method

.method public getNoneMatch()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/restlet/data/Conditions;->noneMatch:Ljava/util/List;

    .line 139
    .local v0, "n":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    if-nez v0, :cond_1

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/Conditions;->noneMatch:Ljava/util/List;

    .line 142
    if-nez v0, :cond_0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "n":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .local v1, "n":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/Conditions;->noneMatch:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 145
    .end local v1    # "n":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v0    # "n":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 147
    :cond_1
    return-object v0

    .line 145
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "n":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v1    # "n":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "n":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v0    # "n":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    goto :goto_0
.end method

.method public getRangeDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/restlet/data/Conditions;->rangeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRangeStatus(Lorg/restlet/data/Tag;Ljava/util/Date;)Lorg/restlet/data/Status;
    .locals 4
    .param p1, "tag"    # Lorg/restlet/data/Tag;
    .param p2, "modificationDate"    # Ljava/util/Date;

    .prologue
    .line 188
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_PRECONDITION_FAILED:Lorg/restlet/data/Status;

    .line 189
    .local v1, "result":Lorg/restlet/data/Status;
    invoke-virtual {p0}, Lorg/restlet/data/Conditions;->getRangeTag()Lorg/restlet/data/Tag;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {p0}, Lorg/restlet/data/Conditions;->getRangeTag()Lorg/restlet/data/Tag;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Tag;->ALL:Lorg/restlet/data/Tag;

    invoke-virtual {v2, v3}, Lorg/restlet/data/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    .local v0, "all":Z
    if-eqz p1, :cond_1

    .line 194
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Conditions;->getRangeTag()Lorg/restlet/data/Tag;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/restlet/data/Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    .line 205
    .end local v0    # "all":Z
    :cond_1
    :goto_0
    return-object v1

    .line 198
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/Conditions;->getRangeDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {p0}, Lorg/restlet/data/Conditions;->getRangeDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    sget-object v1, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    goto :goto_0
.end method

.method public getRangeStatus(Lorg/restlet/representation/RepresentationInfo;)Lorg/restlet/data/Status;
    .locals 2
    .param p1, "representationInfo"    # Lorg/restlet/representation/RepresentationInfo;

    .prologue
    const/4 v0, 0x0

    .line 171
    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/restlet/data/Conditions;->getRangeStatus(Lorg/restlet/data/Tag;Ljava/util/Date;)Lorg/restlet/data/Status;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/restlet/representation/RepresentationInfo;->getTag()Lorg/restlet/data/Tag;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/restlet/representation/RepresentationInfo;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_1
.end method

.method public getRangeTag()Lorg/restlet/data/Tag;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/restlet/data/Conditions;->rangeTag:Lorg/restlet/data/Tag;

    return-object v0
.end method

.method public getStatus(Lorg/restlet/data/Method;Lorg/restlet/representation/RepresentationInfo;)Lorg/restlet/data/Status;
    .locals 3
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "representationInfo"    # Lorg/restlet/representation/RepresentationInfo;

    .prologue
    const/4 v0, 0x0

    .line 371
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-nez p2, :cond_1

    move-object v1, v0

    :goto_1
    if-nez p2, :cond_2

    :goto_2
    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/restlet/data/Conditions;->getStatus(Lorg/restlet/data/Method;ZLorg/restlet/data/Tag;Ljava/util/Date;)Lorg/restlet/data/Status;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/restlet/representation/RepresentationInfo;->getTag()Lorg/restlet/data/Tag;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lorg/restlet/representation/RepresentationInfo;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_2
.end method

.method public getStatus(Lorg/restlet/data/Method;ZLorg/restlet/data/Tag;Ljava/util/Date;)Lorg/restlet/data/Status;
    .locals 16
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "entityExists"    # Z
    .param p3, "tag"    # Lorg/restlet/data/Tag;
    .param p4, "modificationDate"    # Ljava/util/Date;

    .prologue
    .line 237
    const/4 v10, 0x0

    .line 240
    .local v10, "result":Lorg/restlet/data/Status;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/restlet/data/Conditions;->match:Ljava/util/List;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/restlet/data/Conditions;->match:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 241
    const/4 v7, 0x0

    .line 242
    .local v7, "matched":Z
    const/4 v2, 0x0

    .line 243
    .local v2, "failed":Z
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getMatch()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getMatch()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/restlet/data/Tag;

    sget-object v15, Lorg/restlet/data/Tag;->ALL:Lorg/restlet/data/Tag;

    invoke-virtual {v14, v15}, Lorg/restlet/data/Tag;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v1, 0x1

    .line 245
    .local v1, "all":Z
    :goto_0
    const/4 v12, 0x0

    .line 247
    .local v12, "statusMessage":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 249
    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 254
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getMatch()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 255
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Tag;>;"
    :goto_1
    if-nez v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 256
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/restlet/data/Tag;

    .line 257
    .local v6, "matchTag":Lorg/restlet/data/Tag;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v14}, Lorg/restlet/data/Tag;->equals(Ljava/lang/Object;Z)Z

    move-result v7

    goto :goto_1

    .line 243
    .end local v1    # "all":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Tag;>;"
    .end local v6    # "matchTag":Lorg/restlet/data/Tag;
    .end local v12    # "statusMessage":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    .restart local v1    # "all":Z
    .restart local v12    # "statusMessage":Ljava/lang/String;
    :cond_1
    move v7, v1

    .line 272
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    if-nez v7, :cond_7

    :cond_3
    const/4 v2, 0x1

    .line 274
    :goto_3
    if-eqz v2, :cond_4

    .line 275
    sget-object v10, Lorg/restlet/data/Status;->CLIENT_ERROR_PRECONDITION_FAILED:Lorg/restlet/data/Status;

    .line 276
    if-eqz v12, :cond_4

    .line 277
    new-instance v11, Lorg/restlet/data/Status;

    invoke-direct {v11, v10, v12}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .end local v10    # "result":Lorg/restlet/data/Status;
    .local v11, "result":Lorg/restlet/data/Status;
    move-object v10, v11

    .line 283
    .end local v1    # "all":Z
    .end local v2    # "failed":Z
    .end local v7    # "matched":Z
    .end local v11    # "result":Lorg/restlet/data/Status;
    .end local v12    # "statusMessage":Ljava/lang/String;
    .restart local v10    # "result":Lorg/restlet/data/Status;
    :cond_4
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/restlet/data/Conditions;->noneMatch:Ljava/util/List;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/restlet/data/Conditions;->noneMatch:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d

    .line 285
    const/4 v7, 0x0

    .line 287
    .restart local v7    # "matched":Z
    if-eqz p2, :cond_b

    .line 289
    if-eqz p3, :cond_15

    .line 294
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getNoneMatch()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 295
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Tag;>;"
    :goto_4
    if-nez v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 296
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/restlet/data/Tag;

    .line 297
    .local v9, "noneMatchTag":Lorg/restlet/data/Tag;
    sget-object v14, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    sget-object v14, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_5
    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v14}, Lorg/restlet/data/Tag;->equals(Ljava/lang/Object;Z)Z

    move-result v7

    goto :goto_4

    .line 268
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Tag;>;"
    .end local v9    # "noneMatchTag":Lorg/restlet/data/Tag;
    .restart local v1    # "all":Z
    .restart local v2    # "failed":Z
    .restart local v12    # "statusMessage":Ljava/lang/String;
    :cond_6
    move v2, v1

    .line 269
    const-string v12, "A non existing resource can\'t match any tag."

    goto :goto_2

    .line 272
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 297
    .end local v1    # "all":Z
    .end local v2    # "failed":Z
    .end local v12    # "statusMessage":Ljava/lang/String;
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Tag;>;"
    .restart local v9    # "noneMatchTag":Lorg/restlet/data/Tag;
    :cond_8
    const/4 v14, 0x0

    goto :goto_5

    .line 303
    .end local v9    # "noneMatchTag":Lorg/restlet/data/Tag;
    :cond_9
    if-eqz v7, :cond_b

    .line 307
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getModifiedSince()Ljava/util/Date;

    move-result-object v8

    .line 308
    .local v8, "modifiedSince":Ljava/util/Date;
    if-eqz v8, :cond_13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-static {v14, v8}, Lorg/restlet/engine/util/DateUtils;->after(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v14

    if-nez v14, :cond_a

    if-eqz p4, :cond_a

    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lorg/restlet/engine/util/DateUtils;->after(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v14

    if-eqz v14, :cond_13

    :cond_a
    const/4 v3, 0x1

    .line 312
    .local v3, "isModifiedSince":Z
    :goto_6
    if-nez v3, :cond_14

    const/4 v7, 0x1

    .line 320
    .end local v3    # "isModifiedSince":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Tag;>;"
    .end local v8    # "modifiedSince":Ljava/util/Date;
    :cond_b
    :goto_7
    if-eqz v7, :cond_d

    .line 321
    sget-object v14, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    sget-object v14, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 322
    :cond_c
    sget-object v10, Lorg/restlet/data/Status;->REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

    .line 330
    .end local v7    # "matched":Z
    :cond_d
    :goto_8
    if-nez v10, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getModifiedSince()Ljava/util/Date;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 331
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getModifiedSince()Ljava/util/Date;

    move-result-object v8

    .line 332
    .restart local v8    # "modifiedSince":Ljava/util/Date;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-static {v14, v8}, Lorg/restlet/engine/util/DateUtils;->after(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v14

    if-nez v14, :cond_e

    if-eqz p4, :cond_e

    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lorg/restlet/engine/util/DateUtils;->after(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v14

    if-eqz v14, :cond_18

    :cond_e
    const/4 v3, 0x1

    .line 336
    .restart local v3    # "isModifiedSince":Z
    :goto_9
    if-nez v3, :cond_10

    .line 337
    sget-object v14, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    sget-object v14, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 338
    :cond_f
    sget-object v10, Lorg/restlet/data/Status;->REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

    .line 346
    .end local v3    # "isModifiedSince":Z
    .end local v8    # "modifiedSince":Ljava/util/Date;
    :cond_10
    :goto_a
    if-nez v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getUnmodifiedSince()Ljava/util/Date;

    move-result-object v14

    if-eqz v14, :cond_12

    .line 347
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getUnmodifiedSince()Ljava/util/Date;

    move-result-object v13

    .line 348
    .local v13, "unModifiedSince":Ljava/util/Date;
    if-eqz v13, :cond_11

    if-eqz p4, :cond_11

    move-object/from16 v0, p4

    invoke-static {v0, v13}, Lorg/restlet/engine/util/DateUtils;->before(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v14

    if-nez v14, :cond_1a

    :cond_11
    const/4 v4, 0x1

    .line 352
    .local v4, "isUnModifiedSince":Z
    :goto_b
    if-nez v4, :cond_12

    .line 353
    sget-object v10, Lorg/restlet/data/Status;->CLIENT_ERROR_PRECONDITION_FAILED:Lorg/restlet/data/Status;

    .line 357
    .end local v4    # "isUnModifiedSince":Z
    .end local v13    # "unModifiedSince":Ljava/util/Date;
    :cond_12
    return-object v10

    .line 308
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Tag;>;"
    .restart local v7    # "matched":Z
    .restart local v8    # "modifiedSince":Ljava/util/Date;
    :cond_13
    const/4 v3, 0x0

    goto :goto_6

    .line 312
    .restart local v3    # "isModifiedSince":Z
    :cond_14
    const/4 v7, 0x0

    goto :goto_7

    .line 315
    .end local v3    # "isModifiedSince":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Tag;>;"
    .end local v8    # "modifiedSince":Ljava/util/Date;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getNoneMatch()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/data/Conditions;->getNoneMatch()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/restlet/data/Tag;

    sget-object v15, Lorg/restlet/data/Tag;->ALL:Lorg/restlet/data/Tag;

    invoke-virtual {v14, v15}, Lorg/restlet/data/Tag;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v7, 0x1

    :goto_c
    goto/16 :goto_7

    :cond_16
    const/4 v7, 0x0

    goto :goto_c

    .line 324
    :cond_17
    sget-object v10, Lorg/restlet/data/Status;->CLIENT_ERROR_PRECONDITION_FAILED:Lorg/restlet/data/Status;

    goto :goto_8

    .line 332
    .end local v7    # "matched":Z
    .restart local v8    # "modifiedSince":Ljava/util/Date;
    :cond_18
    const/4 v3, 0x0

    goto :goto_9

    .line 340
    .restart local v3    # "isModifiedSince":Z
    :cond_19
    sget-object v10, Lorg/restlet/data/Status;->CLIENT_ERROR_PRECONDITION_FAILED:Lorg/restlet/data/Status;

    goto :goto_a

    .line 348
    .end local v3    # "isModifiedSince":Z
    .end local v8    # "modifiedSince":Ljava/util/Date;
    .restart local v13    # "unModifiedSince":Ljava/util/Date;
    :cond_1a
    const/4 v4, 0x0

    goto :goto_b
.end method

.method public getUnmodifiedSince()Ljava/util/Date;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/restlet/data/Conditions;->unmodifiedSince:Ljava/util/Date;

    return-object v0
.end method

.method public hasSome()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/restlet/data/Conditions;->match:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/restlet/data/Conditions;->match:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/restlet/data/Conditions;->noneMatch:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/restlet/data/Conditions;->noneMatch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/Conditions;->getModifiedSince()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/restlet/data/Conditions;->getUnmodifiedSince()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSomeRange()Z
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/restlet/data/Conditions;->getRangeTag()Lorg/restlet/data/Tag;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Conditions;->getRangeDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMatch(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    iput-object p1, p0, Lorg/restlet/data/Conditions;->match:Ljava/util/List;

    .line 423
    return-void
.end method

.method public setModifiedSince(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 436
    invoke-static {p1}, Lorg/restlet/engine/util/DateUtils;->unmodifiable(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Conditions;->modifiedSince:Ljava/util/Date;

    .line 437
    return-void
.end method

.method public setNoneMatch(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    iput-object p1, p0, Lorg/restlet/data/Conditions;->noneMatch:Ljava/util/List;

    .line 451
    return-void
.end method

.method public setRangeDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "rangeDate"    # Ljava/util/Date;

    .prologue
    .line 464
    iput-object p1, p0, Lorg/restlet/data/Conditions;->rangeDate:Ljava/util/Date;

    .line 465
    return-void
.end method

.method public setRangeTag(Lorg/restlet/data/Tag;)V
    .locals 0
    .param p1, "rangeTag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 478
    iput-object p1, p0, Lorg/restlet/data/Conditions;->rangeTag:Lorg/restlet/data/Tag;

    .line 479
    return-void
.end method

.method public setUnmodifiedSince(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 492
    invoke-static {p1}, Lorg/restlet/engine/util/DateUtils;->unmodifiable(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Conditions;->unmodifiedSince:Ljava/util/Date;

    .line 493
    return-void
.end method
