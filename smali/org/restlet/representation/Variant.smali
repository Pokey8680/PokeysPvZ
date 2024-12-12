.class public Lorg/restlet/representation/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# instance fields
.field private volatile characterSet:Lorg/restlet/data/CharacterSet;

.field private volatile encodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;"
        }
    .end annotation
.end field

.field private volatile languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Language;",
            ">;"
        }
    .end annotation
.end field

.field private volatile locationRef:Lorg/restlet/data/Reference;

.field private volatile mediaType:Lorg/restlet/data/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/representation/Variant;-><init>(Lorg/restlet/data/MediaType;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/representation/Variant;-><init>(Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;)V
    .locals 2
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "language"    # Lorg/restlet/data/Language;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v1, p0, Lorg/restlet/representation/Variant;->characterSet:Lorg/restlet/data/CharacterSet;

    .line 102
    iput-object v1, p0, Lorg/restlet/representation/Variant;->encodings:Ljava/util/List;

    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :goto_0
    iput-object p1, p0, Lorg/restlet/representation/Variant;->mediaType:Lorg/restlet/data/MediaType;

    .line 111
    iput-object v1, p0, Lorg/restlet/representation/Variant;->locationRef:Lorg/restlet/data/Reference;

    .line 112
    return-void

    .line 107
    :cond_0
    iput-object v1, p0, Lorg/restlet/representation/Variant;->languages:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public createClientInfo()Lorg/restlet/data/ClientInfo;
    .locals 7

    .prologue
    .line 121
    new-instance v3, Lorg/restlet/data/ClientInfo;

    invoke-direct {v3}, Lorg/restlet/data/ClientInfo;-><init>()V

    .line 123
    .local v3, "result":Lorg/restlet/data/ClientInfo;
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/restlet/data/Preference;

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 129
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Encoding;

    .line 130
    .local v0, "encoding":Lorg/restlet/data/Encoding;
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/restlet/data/Preference;

    invoke-direct {v5, v0}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v0    # "encoding":Lorg/restlet/data/Encoding;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 136
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Language;

    .line 137
    .local v2, "language":Lorg/restlet/data/Language;
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/restlet/data/Preference;

    invoke-direct {v5, v2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "language":Lorg/restlet/data/Language;
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 143
    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/restlet/data/Preference;

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_3
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    instance-of v1, p1, Lorg/restlet/representation/Variant;

    .line 161
    .local v1, "result":Z
    if-eqz v1, :cond_a

    if-eq p1, p0, :cond_a

    move-object v0, p1

    .line 162
    check-cast v0, Lorg/restlet/representation/Variant;

    .line 165
    .local v0, "otherVariant":Lorg/restlet/representation/Variant;
    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/CharacterSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_1
    move v1, v3

    .line 173
    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 174
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_4
    move v1, v3

    .line 180
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 181
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    :cond_6
    if-eqz v1, :cond_7

    .line 186
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 190
    :cond_7
    if-eqz v1, :cond_a

    .line 191
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Lorg/restlet/representation/Variant;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v4

    if-eqz v4, :cond_9

    :cond_8
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/representation/Variant;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/Reference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_9
    move v1, v3

    .line 198
    .end local v0    # "otherVariant":Lorg/restlet/representation/Variant;
    :cond_a
    :goto_2
    return v1

    .restart local v0    # "otherVariant":Lorg/restlet/representation/Variant;
    :cond_b
    move v1, v2

    .line 166
    goto :goto_0

    :cond_c
    move v1, v2

    .line 174
    goto :goto_1

    :cond_d
    move v1, v2

    .line 191
    goto :goto_2
.end method

.method public getCharacterSet()Lorg/restlet/data/CharacterSet;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/restlet/representation/Variant;->characterSet:Lorg/restlet/data/CharacterSet;

    return-object v0
.end method

.method public getEncodings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lorg/restlet/representation/Variant;->encodings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lorg/restlet/representation/Variant$1;

    invoke-direct {v0, p0}, Lorg/restlet/representation/Variant$1;-><init>(Lorg/restlet/representation/Variant;)V

    iput-object v0, p0, Lorg/restlet/representation/Variant;->encodings:Ljava/util/List;

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/Variant;->encodings:Ljava/util/List;

    return-object v0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lorg/restlet/representation/Variant;->languages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lorg/restlet/representation/Variant$2;

    invoke-direct {v0, p0}, Lorg/restlet/representation/Variant$2;-><init>(Lorg/restlet/representation/Variant;)V

    iput-object v0, p0, Lorg/restlet/representation/Variant;->languages:Ljava/util/List;

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/Variant;->languages:Ljava/util/List;

    return-object v0
.end method

.method public getLocationRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/restlet/representation/Variant;->locationRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getMediaType()Lorg/restlet/data/MediaType;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/restlet/representation/Variant;->mediaType:Lorg/restlet/data/MediaType;

    return-object v0
.end method

.method public includes(Lorg/restlet/representation/Variant;)Z
    .locals 5
    .param p1, "other"    # Lorg/restlet/representation/Variant;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 395
    if-eqz p1, :cond_8

    move v0, v2

    .line 398
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/CharacterSet;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_0
    move v0, v2

    .line 404
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/MediaType;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    move v0, v2

    .line 410
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 411
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    move v0, v2

    .line 417
    :cond_5
    :goto_3
    if-eqz v0, :cond_7

    .line 418
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_6
    move v0, v2

    .line 423
    :cond_7
    :goto_4
    return v0

    .end local v0    # "result":Z
    :cond_8
    move v0, v1

    .line 395
    goto :goto_0

    .restart local v0    # "result":Z
    :cond_9
    move v0, v1

    .line 399
    goto :goto_1

    :cond_a
    move v0, v1

    .line 405
    goto :goto_2

    :cond_b
    move v0, v1

    .line 411
    goto :goto_3

    :cond_c
    move v0, v1

    .line 418
    goto :goto_4
.end method

.method public isCompatible(Lorg/restlet/representation/Variant;)Z
    .locals 1
    .param p1, "other"    # Lorg/restlet/representation/Variant;

    .prologue
    .line 434
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/restlet/representation/Variant;->includes(Lorg/restlet/representation/Variant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/restlet/representation/Variant;->includes(Lorg/restlet/representation/Variant;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCharacterSet(Lorg/restlet/data/CharacterSet;)V
    .locals 0
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 447
    iput-object p1, p0, Lorg/restlet/representation/Variant;->characterSet:Lorg/restlet/data/CharacterSet;

    .line 448
    return-void
.end method

.method public setEncodings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "encodings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Encoding;>;"
    iput-object p1, p0, Lorg/restlet/representation/Variant;->encodings:Ljava/util/List;

    .line 461
    return-void
.end method

.method public setLanguages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    iput-object p1, p0, Lorg/restlet/representation/Variant;->languages:Ljava/util/List;

    .line 474
    return-void
.end method

.method public setLocationRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "locationUri"    # Ljava/lang/String;

    .prologue
    .line 501
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/representation/Variant;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 502
    return-void
.end method

.method public setLocationRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "location"    # Lorg/restlet/data/Reference;

    .prologue
    .line 488
    iput-object p1, p0, Lorg/restlet/representation/Variant;->locationRef:Lorg/restlet/data/Reference;

    .line 489
    return-void
.end method

.method public setMediaType(Lorg/restlet/data/MediaType;)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 514
    iput-object p1, p0, Lorg/restlet/representation/Variant;->mediaType:Lorg/restlet/data/MediaType;

    .line 515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 522
    .local v0, "first":Z
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 523
    const/4 v0, 0x0

    .line 524
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 528
    if-nez v0, :cond_4

    .line 529
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 537
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 538
    if-nez v0, :cond_5

    .line 539
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :goto_1
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 547
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 548
    if-nez v0, :cond_6

    .line 549
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :goto_2
    invoke-virtual {p0}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    :cond_3
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 531
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 551
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
