.class public Lorg/restlet/engine/application/Decoder;
.super Lorg/restlet/routing/Filter;
.source "Decoder.java"


# instance fields
.field private final decodingRequest:Z

.field private final decodingResponse:Z


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 2
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 74
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/restlet/engine/application/Decoder;-><init>(Lorg/restlet/Context;ZZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;ZZ)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "decodingRequest"    # Z
    .param p3, "decodingResponse"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;)V

    .line 90
    iput-boolean p2, p0, Lorg/restlet/engine/application/Decoder;->decodingRequest:Z

    .line 91
    iput-boolean p3, p0, Lorg/restlet/engine/application/Decoder;->decodingResponse:Z

    .line 92
    return-void
.end method


# virtual methods
.method public afterHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/restlet/engine/application/Decoder;->isDecodingResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/Decoder;->canDecode(Lorg/restlet/representation/Representation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/Decoder;->decode(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 109
    :cond_0
    return-void
.end method

.method public beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/restlet/engine/application/Decoder;->isDecodingRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/Decoder;->canDecode(Lorg/restlet/representation/Representation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/Decoder;->decode(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canDecode(Lorg/restlet/representation/Representation;)Z
    .locals 7
    .param p1, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v4

    .line 144
    .local v2, "result":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "found":Z
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    :goto_1
    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/data/Encoding;

    sget-object v6, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v3, v6}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v4

    :goto_2
    goto :goto_1

    .end local v0    # "found":Z
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    .end local v2    # "result":Z
    :cond_0
    move v2, v5

    .line 141
    goto :goto_0

    .restart local v0    # "found":Z
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    .restart local v2    # "result":Z
    :cond_1
    move v0, v5

    .line 149
    goto :goto_2

    .line 152
    :cond_2
    move v2, v0

    .line 154
    .end local v0    # "found":Z
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    :cond_3
    return v2
.end method

.method public decode(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 6
    .param p1, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 166
    move-object v3, p1

    .line 171
    .local v3, "result":Lorg/restlet/representation/Representation;
    const/4 v4, 0x1

    .line 173
    .local v4, "supported":Z
    const/4 v1, 0x1

    .line 174
    .local v1, "identityEncodings":Z
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 175
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Encoding;

    .line 177
    .local v0, "encoding":Lorg/restlet/data/Encoding;
    invoke-static {}, Lorg/restlet/engine/application/DecodeRepresentation;->getSupportedEncodings()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 179
    sget-object v5, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v0, v5}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 180
    goto :goto_0

    .line 182
    .end local v0    # "encoding":Lorg/restlet/data/Encoding;
    :cond_0
    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 183
    new-instance v3, Lorg/restlet/engine/application/DecodeRepresentation;

    .end local v3    # "result":Lorg/restlet/representation/Representation;
    invoke-direct {v3, p1}, Lorg/restlet/engine/application/DecodeRepresentation;-><init>(Lorg/restlet/representation/Representation;)V

    .line 186
    .restart local v3    # "result":Lorg/restlet/representation/Representation;
    :cond_1
    return-object v3
.end method

.method public isDecodingRequest()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/restlet/engine/application/Decoder;->decodingRequest:Z

    return v0
.end method

.method public isDecodingResponse()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/restlet/engine/application/Decoder;->decodingResponse:Z

    return v0
.end method
