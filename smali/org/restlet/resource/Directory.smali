.class public Lorg/restlet/resource/Directory;
.super Lorg/restlet/resource/Finder;
.source "Directory.java"


# instance fields
.field private volatile comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile deeplyAccessible:Z

.field private volatile indexName:Ljava/lang/String;

.field private volatile listingAllowed:Z

.field private volatile modifiable:Z

.field private volatile negotiatingContent:Z

.field private volatile rootRef:Lorg/restlet/data/Reference;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "rootUri"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p2}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/restlet/resource/Directory;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Reference;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Reference;)V
    .locals 6
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "rootLocalReference"    # Lorg/restlet/data/Reference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0, p1}, Lorg/restlet/resource/Finder;-><init>(Lorg/restlet/Context;)V

    .line 134
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "rootIdentifier":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Lorg/restlet/data/Reference;

    invoke-direct {v1, v0}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/restlet/resource/Directory;->rootRef:Lorg/restlet/data/Reference;

    .line 145
    :goto_0
    new-instance v1, Lorg/restlet/engine/util/AlphaNumericComparator;

    invoke-direct {v1}, Lorg/restlet/engine/util/AlphaNumericComparator;-><init>()V

    iput-object v1, p0, Lorg/restlet/resource/Directory;->comparator:Ljava/util/Comparator;

    .line 146
    iput-boolean v5, p0, Lorg/restlet/resource/Directory;->deeplyAccessible:Z

    .line 147
    const-string v1, "index"

    iput-object v1, p0, Lorg/restlet/resource/Directory;->indexName:Ljava/lang/String;

    .line 148
    iput-boolean v4, p0, Lorg/restlet/resource/Directory;->listingAllowed:Z

    .line 149
    iput-boolean v4, p0, Lorg/restlet/resource/Directory;->modifiable:Z

    .line 150
    iput-boolean v5, p0, Lorg/restlet/resource/Directory;->negotiatingContent:Z

    .line 151
    const-class v1, Lorg/restlet/engine/local/DirectoryServerResource;

    invoke-virtual {p0, v1}, Lorg/restlet/resource/Directory;->setTargetClass(Ljava/lang/Class;)V

    .line 152
    return-void

    .line 142
    :cond_0
    new-instance v1, Lorg/restlet/data/Reference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/restlet/resource/Directory;->rootRef:Lorg/restlet/data/Reference;

    goto :goto_0
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/restlet/resource/Directory;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/restlet/resource/Directory;->indexName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexRepresentation(Lorg/restlet/representation/Variant;Lorg/restlet/data/ReferenceList;)Lorg/restlet/representation/Representation;
    .locals 3
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .param p2, "indexContent"    # Lorg/restlet/data/ReferenceList;

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "result":Lorg/restlet/representation/Representation;
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_HTML:Lorg/restlet/data/MediaType;

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p2}, Lorg/restlet/data/ReferenceList;->getWebRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_URI_LIST:Lorg/restlet/data/MediaType;

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p2}, Lorg/restlet/data/ReferenceList;->getTextRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    goto :goto_0
.end method

.method public getIndexVariants(Lorg/restlet/data/ReferenceList;)Ljava/util/List;
    .locals 3
    .param p1, "indexContent"    # Lorg/restlet/data/ReferenceList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ReferenceList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/representation/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    new-instance v1, Lorg/restlet/representation/Variant;

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_HTML:Lorg/restlet/data/MediaType;

    invoke-direct {v1, v2}, Lorg/restlet/representation/Variant;-><init>(Lorg/restlet/data/MediaType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lorg/restlet/representation/Variant;

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_URI_LIST:Lorg/restlet/data/MediaType;

    invoke-direct {v1, v2}, Lorg/restlet/representation/Variant;-><init>(Lorg/restlet/data/MediaType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-object v0
.end method

.method public getRootRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/restlet/resource/Directory;->rootRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 246
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string v1, "org.restlet.directory"

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-super {p0, p1, p2}, Lorg/restlet/resource/Finder;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 248
    return-void
.end method

.method public isDeeplyAccessible()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/restlet/resource/Directory;->deeplyAccessible:Z

    return v0
.end method

.method public isListingAllowed()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lorg/restlet/resource/Directory;->listingAllowed:Z

    return v0
.end method

.method public isModifiable()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lorg/restlet/resource/Directory;->modifiable:Z

    return v0
.end method

.method public isNegotiatingContent()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/restlet/resource/Directory;->negotiatingContent:Z

    return v0
.end method

.method public setAlphaComparator()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/restlet/resource/Directory;->useAlphaComparator()V

    .line 299
    return-void
.end method

.method public setAlphaNumComparator()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/restlet/resource/Directory;->useAlphaNumComparator()V

    .line 315
    return-void
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/restlet/data/Reference;>;"
    iput-object p1, p0, Lorg/restlet/resource/Directory;->comparator:Ljava/util/Comparator;

    .line 348
    return-void
.end method

.method public setDeeplyAccessible(Z)V
    .locals 0
    .param p1, "deeplyAccessible"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lorg/restlet/resource/Directory;->deeplyAccessible:Z

    .line 358
    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0
    .param p1, "indexName"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lorg/restlet/resource/Directory;->indexName:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setListingAllowed(Z)V
    .locals 0
    .param p1, "listingAllowed"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lorg/restlet/resource/Directory;->listingAllowed:Z

    .line 380
    return-void
.end method

.method public setModifiable(Z)V
    .locals 0
    .param p1, "modifiable"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lorg/restlet/resource/Directory;->modifiable:Z

    .line 390
    return-void
.end method

.method public setNegotiatingContent(Z)V
    .locals 0
    .param p1, "negotiatingContent"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lorg/restlet/resource/Directory;->negotiatingContent:Z

    .line 401
    return-void
.end method

.method public setRootRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "rootRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 411
    iput-object p1, p0, Lorg/restlet/resource/Directory;->rootRef:Lorg/restlet/data/Reference;

    .line 412
    return-void
.end method

.method public useAlphaComparator()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lorg/restlet/engine/util/AlphabeticalComparator;

    invoke-direct {v0}, Lorg/restlet/engine/util/AlphabeticalComparator;-><init>()V

    invoke-virtual {p0, v0}, Lorg/restlet/resource/Directory;->setComparator(Ljava/util/Comparator;)V

    .line 324
    return-void
.end method

.method public useAlphaNumComparator()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lorg/restlet/engine/util/AlphabeticalComparator;

    invoke-direct {v0}, Lorg/restlet/engine/util/AlphabeticalComparator;-><init>()V

    invoke-virtual {p0, v0}, Lorg/restlet/resource/Directory;->setComparator(Ljava/util/Comparator;)V

    .line 338
    return-void
.end method
