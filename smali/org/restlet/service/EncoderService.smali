.class public Lorg/restlet/service/EncoderService;
.super Lorg/restlet/service/Service;
.source "EncoderService.java"


# static fields
.field public static final ANY_SIZE:I = -0x1

.field public static final DEFAULT_MINIMUM_SIZE:I = 0x3e8


# instance fields
.field private final acceptedMediaTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredMediaTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mininumSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/restlet/service/EncoderService;-><init>(Z)V

    .line 110
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/restlet/service/Service;-><init>(Z)V

    .line 120
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/restlet/service/EncoderService;->mininumSize:J

    .line 121
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lorg/restlet/service/EncoderService;->getDefaultAcceptedMediaTypes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/restlet/service/EncoderService;->acceptedMediaTypes:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lorg/restlet/service/EncoderService;->getDefaultIgnoredMediaTypes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/restlet/service/EncoderService;->ignoredMediaTypes:Ljava/util/List;

    .line 125
    return-void
.end method

.method public static getDefaultAcceptedMediaTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/restlet/data/MediaType;

    const/4 v2, 0x0

    sget-object v3, Lorg/restlet/data/MediaType;->ALL:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    return-object v0
.end method

.method public static getDefaultIgnoredMediaTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    const/16 v1, 0xa

    new-array v1, v1, [Lorg/restlet/data/MediaType;

    const/4 v2, 0x0

    sget-object v3, Lorg/restlet/data/MediaType;->APPLICATION_CAB:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/restlet/data/MediaType;->APPLICATION_GNU_ZIP:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/restlet/data/MediaType;->APPLICATION_ZIP:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/restlet/data/MediaType;->APPLICATION_GNU_TAR:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_ARCHIVE:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/restlet/data/MediaType;->APPLICATION_STUFFIT:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/restlet/data/MediaType;->APPLICATION_TAR:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lorg/restlet/data/MediaType;->AUDIO_ALL:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lorg/restlet/data/MediaType;->IMAGE_ALL:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lorg/restlet/data/MediaType;->VIDEO_ALL:Lorg/restlet/data/MediaType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    return-object v0
.end method


# virtual methods
.method public canEncode(Lorg/restlet/representation/Representation;)Z
    .locals 14
    .param p1, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 137
    const/4 v6, 0x0

    .line 139
    .local v6, "result":Z
    if-eqz p1, :cond_1

    .line 140
    const/4 v1, 0x1

    .line 142
    .local v1, "identity":Z
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/restlet/data/Encoding;

    sget-object v10, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v7, v10}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 147
    :cond_0
    move v6, v1

    .line 150
    .end local v1    # "identity":Z
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    :cond_1
    if-eqz v6, :cond_3

    .line 152
    invoke-virtual {p0}, Lorg/restlet/service/EncoderService;->getMinimumSize()J

    move-result-wide v10

    cmp-long v7, v10, v12

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v10

    cmp-long v7, v10, v12

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v10

    invoke-virtual {p0}, Lorg/restlet/service/EncoderService;->getMinimumSize()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-ltz v7, :cond_4

    :cond_2
    move v6, v9

    .line 157
    :cond_3
    :goto_1
    if-eqz v6, :cond_6

    .line 159
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    .line 160
    .local v4, "mediaType":Lorg/restlet/data/MediaType;
    const/4 v0, 0x0

    .line 162
    .local v0, "accepted":Z
    invoke-virtual {p0}, Lorg/restlet/service/EncoderService;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 163
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/MediaType;>;"
    :goto_2
    if-nez v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 164
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/restlet/data/MediaType;

    invoke-virtual {v7, v4}, Lorg/restlet/data/MediaType;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v0

    goto :goto_2

    .end local v0    # "accepted":Z
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/MediaType;>;"
    .end local v4    # "mediaType":Lorg/restlet/data/MediaType;
    :cond_4
    move v6, v8

    .line 152
    goto :goto_1

    .line 167
    .restart local v0    # "accepted":Z
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/MediaType;>;"
    .restart local v4    # "mediaType":Lorg/restlet/data/MediaType;
    :cond_5
    move v6, v0

    .line 170
    .end local v0    # "accepted":Z
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/MediaType;>;"
    .end local v4    # "mediaType":Lorg/restlet/data/MediaType;
    :cond_6
    if-eqz v6, :cond_8

    .line 172
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    .line 173
    .restart local v4    # "mediaType":Lorg/restlet/data/MediaType;
    const/4 v5, 0x0

    .line 175
    .local v5, "rejected":Z
    invoke-virtual {p0}, Lorg/restlet/service/EncoderService;->getIgnoredMediaTypes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 176
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/MediaType;>;"
    :goto_3
    if-nez v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/restlet/data/MediaType;

    invoke-virtual {v7, v4}, Lorg/restlet/data/MediaType;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v5

    goto :goto_3

    .line 180
    :cond_7
    if-nez v5, :cond_9

    move v6, v9

    .line 183
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/MediaType;>;"
    .end local v4    # "mediaType":Lorg/restlet/data/MediaType;
    .end local v5    # "rejected":Z
    :cond_8
    :goto_4
    return v6

    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/MediaType;>;"
    .restart local v4    # "mediaType":Lorg/restlet/data/MediaType;
    .restart local v5    # "rejected":Z
    :cond_9
    move v6, v8

    .line 180
    goto :goto_4
.end method

.method public createInboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 188
    new-instance v0, Lorg/restlet/engine/application/Encoder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/restlet/engine/application/Encoder;-><init>(Lorg/restlet/Context;ZZLorg/restlet/service/EncoderService;)V

    return-object v0
.end method

.method public createOutboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 193
    new-instance v0, Lorg/restlet/engine/application/Encoder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/restlet/engine/application/Encoder;-><init>(Lorg/restlet/Context;ZZLorg/restlet/service/EncoderService;)V

    return-object v0
.end method

.method public getAcceptedMediaTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lorg/restlet/service/EncoderService;->acceptedMediaTypes:Ljava/util/List;

    return-object v0
.end method

.method public getIgnoredMediaTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lorg/restlet/service/EncoderService;->ignoredMediaTypes:Ljava/util/List;

    return-object v0
.end method

.method public getMinimumSize()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lorg/restlet/service/EncoderService;->mininumSize:J

    return-wide v0
.end method

.method public setMinimumSize(J)V
    .locals 1
    .param p1, "mininumSize"    # J

    .prologue
    .line 234
    iput-wide p1, p0, Lorg/restlet/service/EncoderService;->mininumSize:J

    .line 235
    return-void
.end method
