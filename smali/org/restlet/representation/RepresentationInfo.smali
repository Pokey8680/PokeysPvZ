.class public Lorg/restlet/representation/RepresentationInfo;
.super Lorg/restlet/representation/Variant;
.source "RepresentationInfo.java"


# instance fields
.field private volatile modificationDate:Ljava/util/Date;

.field private volatile tag:Lorg/restlet/data/Tag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/representation/RepresentationInfo;-><init>(Lorg/restlet/data/MediaType;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v0}, Lorg/restlet/representation/RepresentationInfo;-><init>(Lorg/restlet/data/MediaType;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Ljava/util/Date;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "modificationDate"    # Ljava/util/Date;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/representation/RepresentationInfo;-><init>(Lorg/restlet/data/MediaType;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Ljava/util/Date;Lorg/restlet/data/Tag;)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "modificationDate"    # Ljava/util/Date;
    .param p3, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/restlet/representation/Variant;-><init>(Lorg/restlet/data/MediaType;)V

    .line 103
    iput-object p2, p0, Lorg/restlet/representation/RepresentationInfo;->modificationDate:Ljava/util/Date;

    .line 104
    iput-object p3, p0, Lorg/restlet/representation/RepresentationInfo;->tag:Lorg/restlet/data/Tag;

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Lorg/restlet/data/Tag;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/representation/RepresentationInfo;-><init>(Lorg/restlet/data/MediaType;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Variant;Ljava/util/Date;)V
    .locals 1
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .param p2, "modificationDate"    # Ljava/util/Date;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/representation/RepresentationInfo;-><init>(Lorg/restlet/representation/Variant;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Variant;Ljava/util/Date;Lorg/restlet/data/Tag;)V
    .locals 1
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .param p2, "modificationDate"    # Ljava/util/Date;
    .param p3, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/restlet/representation/Variant;-><init>()V

    .line 142
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/RepresentationInfo;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 143
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/RepresentationInfo;->setEncodings(Ljava/util/List;)V

    .line 144
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/RepresentationInfo;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 145
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/RepresentationInfo;->setLanguages(Ljava/util/List;)V

    .line 146
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/RepresentationInfo;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 147
    invoke-virtual {p0, p2}, Lorg/restlet/representation/RepresentationInfo;->setModificationDate(Ljava/util/Date;)V

    .line 148
    invoke-virtual {p0, p3}, Lorg/restlet/representation/RepresentationInfo;->setTag(Lorg/restlet/data/Tag;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Variant;Lorg/restlet/data/Tag;)V
    .locals 1
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .param p2, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/representation/RepresentationInfo;-><init>(Lorg/restlet/representation/Variant;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 161
    return-void
.end method


# virtual methods
.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/restlet/representation/RepresentationInfo;->modificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTag()Lorg/restlet/data/Tag;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/restlet/representation/RepresentationInfo;->tag:Lorg/restlet/data/Tag;

    return-object v0
.end method

.method public setModificationDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "modificationDate"    # Ljava/util/Date;

    .prologue
    .line 199
    invoke-static {p1}, Lorg/restlet/engine/util/DateUtils;->unmodifiable(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/representation/RepresentationInfo;->modificationDate:Ljava/util/Date;

    .line 200
    return-void
.end method

.method public setTag(Lorg/restlet/data/Tag;)V
    .locals 0
    .param p1, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 212
    iput-object p1, p0, Lorg/restlet/representation/RepresentationInfo;->tag:Lorg/restlet/data/Tag;

    .line 213
    return-void
.end method
