.class public Lorg/restlet/engine/application/Encoder;
.super Lorg/restlet/routing/Filter;
.source "Encoder.java"


# instance fields
.field private final encoderService:Lorg/restlet/service/EncoderService;

.field private final encodingRequest:Z

.field private final encodingResponse:Z


# direct methods
.method public constructor <init>(Lorg/restlet/Context;ZZLorg/restlet/service/EncoderService;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "encodingRequest"    # Z
    .param p3, "encodingResponse"    # Z
    .param p4, "encoderService"    # Lorg/restlet/service/EncoderService;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;)V

    .line 92
    iput-boolean p2, p0, Lorg/restlet/engine/application/Encoder;->encodingRequest:Z

    .line 93
    iput-boolean p3, p0, Lorg/restlet/engine/application/Encoder;->encodingResponse:Z

    .line 94
    iput-object p4, p0, Lorg/restlet/engine/application/Encoder;->encoderService:Lorg/restlet/service/EncoderService;

    .line 95
    return-void
.end method


# virtual methods
.method public afterHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/restlet/engine/application/Encoder;->isEncodingResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/application/Encoder;->getEncoderService()Lorg/restlet/service/EncoderService;

    move-result-object v0

    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/service/EncoderService;->canEncode(Lorg/restlet/representation/Representation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/application/Encoder;->encode(Lorg/restlet/data/ClientInfo;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 114
    :cond_0
    return-void
.end method

.method public beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/restlet/engine/application/Encoder;->isEncodingRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/application/Encoder;->getEncoderService()Lorg/restlet/service/EncoderService;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/service/EncoderService;->canEncode(Lorg/restlet/representation/Representation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/application/Encoder;->encode(Lorg/restlet/data/ClientInfo;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public encode(Lorg/restlet/data/ClientInfo;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "client"    # Lorg/restlet/data/ClientInfo;
    .param p2, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 150
    move-object v1, p2

    .line 151
    .local v1, "result":Lorg/restlet/representation/Representation;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/application/Encoder;->getBestEncoding(Lorg/restlet/data/ClientInfo;)Lorg/restlet/data/Encoding;

    move-result-object v0

    .line 153
    .local v0, "bestEncoding":Lorg/restlet/data/Encoding;
    if-eqz v0, :cond_0

    .line 154
    new-instance v1, Lorg/restlet/engine/application/EncodeRepresentation;

    .end local v1    # "result":Lorg/restlet/representation/Representation;
    invoke-direct {v1, v0, p2}, Lorg/restlet/engine/application/EncodeRepresentation;-><init>(Lorg/restlet/data/Encoding;Lorg/restlet/representation/Representation;)V

    .line 157
    .restart local v1    # "result":Lorg/restlet/representation/Representation;
    :cond_0
    return-object v1
.end method

.method public getBestEncoding(Lorg/restlet/data/ClientInfo;)Lorg/restlet/data/Encoding;
    .locals 8
    .param p1, "client"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "bestEncoding":Lorg/restlet/data/Encoding;
    const/4 v2, 0x0

    .line 170
    .local v2, "currentEncoding":Lorg/restlet/data/Encoding;
    const/4 v3, 0x0

    .line 171
    .local v3, "currentPref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;"
    const/4 v1, 0x0

    .line 173
    .local v1, "bestScore":F
    invoke-virtual {p0}, Lorg/restlet/engine/application/Encoder;->getSupportedEncodings()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 174
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "currentEncoding":Lorg/restlet/data/Encoding;
    check-cast v2, Lorg/restlet/data/Encoding;

    .line 177
    .restart local v2    # "currentEncoding":Lorg/restlet/data/Encoding;
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 178
    .local v5, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "currentPref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;"
    check-cast v3, Lorg/restlet/data/Preference;

    .line 181
    .restart local v3    # "currentPref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;"
    invoke-virtual {v3}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v6

    check-cast v6, Lorg/restlet/data/Encoding;

    sget-object v7, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    invoke-virtual {v6, v7}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v6

    check-cast v6, Lorg/restlet/data/Encoding;

    invoke-virtual {v6, v2}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 184
    :cond_2
    invoke-virtual {v3}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v6

    cmpl-float v6, v6, v1

    if-lez v6, :cond_1

    .line 185
    invoke-virtual {v3}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v1

    .line 186
    move-object v0, v2

    goto :goto_0

    .line 192
    .end local v5    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    :cond_3
    return-object v0
.end method

.method public getEncoderService()Lorg/restlet/service/EncoderService;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/restlet/engine/application/Encoder;->encoderService:Lorg/restlet/service/EncoderService;

    return-object v0
.end method

.method public getSupportedEncodings()Ljava/util/List;
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
    .line 211
    invoke-static {}, Lorg/restlet/engine/application/EncodeRepresentation;->getSupportedEncodings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEncodingRequest()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lorg/restlet/engine/application/Encoder;->encodingRequest:Z

    return v0
.end method

.method public isEncodingResponse()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/restlet/engine/application/Encoder;->encodingResponse:Z

    return v0
.end method
