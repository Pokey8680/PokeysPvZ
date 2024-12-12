.class public Lorg/restlet/Request;
.super Lorg/restlet/Message;
.source "Request.java"


# instance fields
.field private volatile challengeResponse:Lorg/restlet/data/ChallengeResponse;

.field private volatile clientInfo:Lorg/restlet/data/ClientInfo;

.field private volatile conditions:Lorg/restlet/data/Conditions;

.field private volatile cookies:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hostRef:Lorg/restlet/data/Reference;

.field private volatile loggable:Z

.field private volatile maxForwards:I

.field private volatile method:Lorg/restlet/data/Method;

.field private volatile onResponse:Lorg/restlet/Uniform;

.field private volatile originalRef:Lorg/restlet/data/Reference;

.field private volatile protocol:Lorg/restlet/data/Protocol;

.field private volatile proxyChallengeResponse:Lorg/restlet/data/ChallengeResponse;

.field private volatile ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Range;",
            ">;"
        }
    .end annotation
.end field

.field private volatile referrerRef:Lorg/restlet/data/Reference;

.field private volatile resourceRef:Lorg/restlet/data/Reference;

.field private volatile rootRef:Lorg/restlet/data/Reference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 138
    move-object v0, v1

    check-cast v0, Lorg/restlet/data/Method;

    move-object v2, v1

    check-cast v2, Lorg/restlet/data/Reference;

    check-cast v1, Lorg/restlet/representation/Representation;

    invoke-direct {p0, v0, v2, v1}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Lorg/restlet/data/Reference;Lorg/restlet/representation/Representation;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Request;)V
    .locals 12
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    const/4 v9, 0x0

    .line 216
    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v8

    new-instance v10, Lorg/restlet/data/Reference;

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;)V

    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v11

    invoke-direct {p0, v8, v10, v11}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Lorg/restlet/data/Reference;Lorg/restlet/representation/Representation;)V

    .line 218
    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v8

    iput-object v8, p0, Lorg/restlet/Request;->challengeResponse:Lorg/restlet/data/ChallengeResponse;

    .line 221
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v7

    .line 222
    .local v7, "rci":Lorg/restlet/data/ClientInfo;
    new-instance v8, Lorg/restlet/data/ClientInfo;

    invoke-direct {v8}, Lorg/restlet/data/ClientInfo;-><init>()V

    iput-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    .line 224
    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/data/Preference;

    .line 225
    .local v3, "o":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;"
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v8}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v3    # "o":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;"
    :cond_0
    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/data/Preference;

    .line 229
    .local v4, "o":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;"
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v8}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    .end local v4    # "o":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;"
    :cond_1
    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/restlet/data/Preference;

    .line 233
    .local v5, "o":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;"
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v8}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 236
    .end local v5    # "o":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;"
    :cond_2
    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/restlet/data/Preference;

    .line 237
    .local v6, "o":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;"
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v8}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 240
    .end local v6    # "o":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;"
    :cond_3
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/ClientInfo;->setAddress(Ljava/lang/String;)V

    .line 241
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getAgent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/ClientInfo;->setAgent(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getForwardedAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    .local v2, "o":Ljava/lang/String;
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v8}, Lorg/restlet/data/ClientInfo;->getForwardedAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 247
    .end local v2    # "o":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getFrom()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/ClientInfo;->setFrom(Ljava/lang/String;)V

    .line 248
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getPort()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/ClientInfo;->setPort(I)V

    .line 250
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getAgentAttributes()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/ClientInfo;->setAgentAttributes(Ljava/util/Map;)V

    .line 251
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getAgentProducts()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/ClientInfo;->setAgentProducts(Ljava/util/List;)V

    .line 252
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->isAuthenticated()Z

    move-result v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/ClientInfo;->setAuthenticated(Z)V

    .line 254
    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getExpectations()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Expectation;

    .line 255
    .local v2, "o":Lorg/restlet/data/Expectation;
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v8}, Lorg/restlet/data/ClientInfo;->getExpectations()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 258
    .end local v2    # "o":Lorg/restlet/data/Expectation;
    :cond_5
    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getPrincipals()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Principal;

    .line 259
    .local v2, "o":Ljava/security/Principal;
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v8}, Lorg/restlet/data/ClientInfo;->getPrincipals()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 262
    .end local v2    # "o":Ljava/security/Principal;
    :cond_6
    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getRoles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/security/Role;

    .line 263
    .local v2, "o":Lorg/restlet/security/Role;
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v8}, Lorg/restlet/data/ClientInfo;->getRoles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 266
    .end local v2    # "o":Lorg/restlet/security/Role;
    :cond_7
    iget-object v8, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getUser()Lorg/restlet/security/User;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/ClientInfo;->setUser(Lorg/restlet/security/User;)V

    .line 269
    new-instance v8, Lorg/restlet/data/Conditions;

    invoke-direct {v8}, Lorg/restlet/data/Conditions;-><init>()V

    iput-object v8, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    .line 271
    invoke-virtual {p1}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/data/Conditions;->getMatch()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Tag;

    .line 272
    .local v2, "o":Lorg/restlet/data/Tag;
    iget-object v8, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    invoke-virtual {v8}, Lorg/restlet/data/Conditions;->getMatch()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 275
    .end local v2    # "o":Lorg/restlet/data/Tag;
    :cond_8
    iget-object v8, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    invoke-virtual {p1}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/data/Conditions;->getModifiedSince()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/Conditions;->setModifiedSince(Ljava/util/Date;)V

    .line 277
    invoke-virtual {p1}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/data/Conditions;->getNoneMatch()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Tag;

    .line 278
    .restart local v2    # "o":Lorg/restlet/data/Tag;
    iget-object v8, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    invoke-virtual {v8}, Lorg/restlet/data/Conditions;->getNoneMatch()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 281
    .end local v2    # "o":Lorg/restlet/data/Tag;
    :cond_9
    iget-object v8, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    invoke-virtual {p1}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/data/Conditions;->getRangeDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/Conditions;->setRangeDate(Ljava/util/Date;)V

    .line 282
    iget-object v8, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    invoke-virtual {p1}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/data/Conditions;->getRangeTag()Lorg/restlet/data/Tag;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/Conditions;->setRangeTag(Lorg/restlet/data/Tag;)V

    .line 283
    iget-object v8, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    invoke-virtual {p1}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/data/Conditions;->getUnmodifiedSince()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/restlet/data/Conditions;->setUnmodifiedSince(Ljava/util/Date;)V

    .line 286
    invoke-virtual {p1}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Cookie;

    .line 287
    .local v2, "o":Lorg/restlet/data/Cookie;
    invoke-virtual {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 290
    .end local v2    # "o":Lorg/restlet/data/Cookie;
    :cond_a
    invoke-virtual {p1}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v8

    iput-object v8, p0, Lorg/restlet/Request;->hostRef:Lorg/restlet/data/Reference;

    .line 291
    invoke-virtual {p1}, Lorg/restlet/Request;->getMaxForwards()I

    move-result v8

    iput v8, p0, Lorg/restlet/Request;->maxForwards:I

    .line 292
    invoke-virtual {p1}, Lorg/restlet/Request;->getOriginalRef()Lorg/restlet/data/Reference;

    move-result-object v8

    if-nez v8, :cond_b

    move-object v8, v9

    :goto_b
    iput-object v8, p0, Lorg/restlet/Request;->originalRef:Lorg/restlet/data/Reference;

    .line 294
    invoke-virtual {p1}, Lorg/restlet/Request;->getOnResponse()Lorg/restlet/Uniform;

    move-result-object v8

    iput-object v8, p0, Lorg/restlet/Request;->onResponse:Lorg/restlet/Uniform;

    .line 295
    invoke-virtual {p1}, Lorg/restlet/Request;->getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v8

    iput-object v8, p0, Lorg/restlet/Request;->proxyChallengeResponse:Lorg/restlet/data/ChallengeResponse;

    .line 296
    invoke-virtual {p1}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v8

    iput-object v8, p0, Lorg/restlet/Request;->protocol:Lorg/restlet/data/Protocol;

    .line 298
    invoke-virtual {p1}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Range;

    .line 299
    .local v2, "o":Lorg/restlet/data/Range;
    invoke-virtual {p0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 292
    .end local v2    # "o":Lorg/restlet/data/Range;
    :cond_b
    new-instance v8, Lorg/restlet/data/Reference;

    invoke-virtual {p1}, Lorg/restlet/Request;->getOriginalRef()Lorg/restlet/data/Reference;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;)V

    goto :goto_b

    .line 302
    :cond_c
    invoke-virtual {p1}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v8

    if-nez v8, :cond_d

    move-object v8, v9

    :goto_d
    iput-object v8, p0, Lorg/restlet/Request;->referrerRef:Lorg/restlet/data/Reference;

    .line 304
    invoke-virtual {p1}, Lorg/restlet/Request;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v8

    if-nez v8, :cond_e

    :goto_e
    iput-object v9, p0, Lorg/restlet/Request;->rootRef:Lorg/restlet/data/Reference;

    .line 307
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 308
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 302
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    new-instance v8, Lorg/restlet/data/Reference;

    invoke-virtual {p1}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;)V

    goto :goto_d

    .line 304
    :cond_e
    invoke-virtual {p1}, Lorg/restlet/Request;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v9

    goto :goto_e

    .line 311
    :cond_f
    invoke-virtual {p1}, Lorg/restlet/Request;->getCacheDirectives()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/CacheDirective;

    .line 312
    .local v2, "o":Lorg/restlet/data/CacheDirective;
    invoke-virtual {p0}, Lorg/restlet/Request;->getCacheDirectives()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 315
    .end local v2    # "o":Lorg/restlet/data/CacheDirective;
    :cond_10
    invoke-virtual {p1}, Lorg/restlet/Request;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/restlet/Request;->setOnSent(Lorg/restlet/Uniform;)V

    .line 317
    invoke-virtual {p1}, Lorg/restlet/Request;->getWarnings()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Warning;

    .line 318
    .local v2, "o":Lorg/restlet/data/Warning;
    invoke-virtual {p0}, Lorg/restlet/Request;->getWarnings()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 321
    .end local v2    # "o":Lorg/restlet/data/Warning;
    :cond_11
    invoke-virtual {p1}, Lorg/restlet/Request;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/restlet/Request;->setDate(Ljava/util/Date;)V

    .line 322
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Method;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "resourceUri"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p2}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Method;Ljava/lang/String;Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "resourceUri"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 206
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p2}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Lorg/restlet/data/Reference;Lorg/restlet/representation/Representation;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "resourceRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Lorg/restlet/data/Reference;Lorg/restlet/representation/Representation;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Method;Lorg/restlet/data/Reference;Lorg/restlet/representation/Representation;)V
    .locals 2
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "resourceRef"    # Lorg/restlet/data/Reference;
    .param p3, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p3}, Lorg/restlet/Message;-><init>(Lorg/restlet/representation/Representation;)V

    .line 165
    iput-object v1, p0, Lorg/restlet/Request;->challengeResponse:Lorg/restlet/data/ChallengeResponse;

    .line 166
    iput-object v1, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    .line 167
    iput-object v1, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    .line 168
    iput-object v1, p0, Lorg/restlet/Request;->cookies:Lorg/restlet/util/Series;

    .line 169
    iput-object v1, p0, Lorg/restlet/Request;->hostRef:Lorg/restlet/data/Reference;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/Request;->loggable:Z

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lorg/restlet/Request;->maxForwards:I

    .line 172
    iput-object p1, p0, Lorg/restlet/Request;->method:Lorg/restlet/data/Method;

    .line 173
    iput-object v1, p0, Lorg/restlet/Request;->originalRef:Lorg/restlet/data/Reference;

    .line 174
    iput-object v1, p0, Lorg/restlet/Request;->onResponse:Lorg/restlet/Uniform;

    .line 175
    iput-object v1, p0, Lorg/restlet/Request;->proxyChallengeResponse:Lorg/restlet/data/ChallengeResponse;

    .line 176
    iput-object v1, p0, Lorg/restlet/Request;->protocol:Lorg/restlet/data/Protocol;

    .line 177
    iput-object v1, p0, Lorg/restlet/Request;->ranges:Ljava/util/List;

    .line 178
    iput-object v1, p0, Lorg/restlet/Request;->referrerRef:Lorg/restlet/data/Reference;

    .line 179
    iput-object p2, p0, Lorg/restlet/Request;->resourceRef:Lorg/restlet/data/Reference;

    .line 180
    iput-object v1, p0, Lorg/restlet/Request;->rootRef:Lorg/restlet/data/Reference;

    .line 181
    return-void
.end method

.method public static getCurrent()Lorg/restlet/Request;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lorg/restlet/Response;->getCurrent()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/restlet/Response;->getCurrent()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abort()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public commit(Lorg/restlet/Response;)V
    .locals 0
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 341
    return-void
.end method

.method public getChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/restlet/Request;->challengeResponse:Lorg/restlet/data/ChallengeResponse;

    return-object v0
.end method

.method public getClientInfo()Lorg/restlet/data/ClientInfo;
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    .line 363
    .local v0, "c":Lorg/restlet/data/ClientInfo;
    if-nez v0, :cond_1

    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    .line 366
    if-nez v0, :cond_0

    .line 367
    new-instance v1, Lorg/restlet/data/ClientInfo;

    invoke-direct {v1}, Lorg/restlet/data/ClientInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "c":Lorg/restlet/data/ClientInfo;
    .local v1, "c":Lorg/restlet/data/ClientInfo;
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 369
    .end local v1    # "c":Lorg/restlet/data/ClientInfo;
    .restart local v0    # "c":Lorg/restlet/data/ClientInfo;
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 371
    :cond_1
    return-object v0

    .line 369
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "c":Lorg/restlet/data/ClientInfo;
    .restart local v1    # "c":Lorg/restlet/data/ClientInfo;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "c":Lorg/restlet/data/ClientInfo;
    .restart local v0    # "c":Lorg/restlet/data/ClientInfo;
    goto :goto_0
.end method

.method public getConditions()Lorg/restlet/data/Conditions;
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    .line 383
    .local v0, "c":Lorg/restlet/data/Conditions;
    if-nez v0, :cond_1

    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    .line 386
    if-nez v0, :cond_0

    .line 387
    new-instance v1, Lorg/restlet/data/Conditions;

    invoke-direct {v1}, Lorg/restlet/data/Conditions;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "c":Lorg/restlet/data/Conditions;
    .local v1, "c":Lorg/restlet/data/Conditions;
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 389
    .end local v1    # "c":Lorg/restlet/data/Conditions;
    .restart local v0    # "c":Lorg/restlet/data/Conditions;
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 391
    :cond_1
    return-object v0

    .line 389
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "c":Lorg/restlet/data/Conditions;
    .restart local v1    # "c":Lorg/restlet/data/Conditions;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "c":Lorg/restlet/data/Conditions;
    .restart local v0    # "c":Lorg/restlet/data/Conditions;
    goto :goto_0
.end method

.method public getCookies()Lorg/restlet/util/Series;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lorg/restlet/Request;->cookies:Lorg/restlet/util/Series;

    .line 406
    .local v0, "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    if-nez v0, :cond_1

    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Request;->cookies:Lorg/restlet/util/Series;

    .line 409
    if-nez v0, :cond_0

    .line 410
    new-instance v1, Lorg/restlet/util/Series;

    const-class v2, Lorg/restlet/data/Cookie;

    invoke-direct {v1, v2}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    .local v1, "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Request;->cookies:Lorg/restlet/util/Series;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 412
    .end local v1    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    .restart local v0    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 414
    :cond_1
    return-object v0

    .line 412
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    .restart local v1    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    .restart local v0    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    goto :goto_0
.end method

.method public getHostRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/restlet/Request;->hostRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getMaxForwards()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lorg/restlet/Request;->maxForwards:I

    return v0
.end method

.method public getMethod()Lorg/restlet/data/Method;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/restlet/Request;->method:Lorg/restlet/data/Method;

    return-object v0
.end method

.method public getOnResponse()Lorg/restlet/Uniform;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lorg/restlet/Request;->onResponse:Lorg/restlet/Uniform;

    return-object v0
.end method

.method public getOriginalRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/restlet/Request;->originalRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getProtocol()Lorg/restlet/data/Protocol;
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lorg/restlet/Request;->protocol:Lorg/restlet/data/Protocol;

    .line 479
    .local v0, "result":Lorg/restlet/data/Protocol;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    .line 484
    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    .line 490
    :cond_0
    :goto_0
    return-object v0

    .line 485
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lorg/restlet/Request;->proxyChallengeResponse:Lorg/restlet/data/ChallengeResponse;

    return-object v0
.end method

.method public getRanges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lorg/restlet/Request;->ranges:Ljava/util/List;

    .line 514
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    if-nez v0, :cond_1

    .line 515
    monitor-enter p0

    .line 516
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Request;->ranges:Ljava/util/List;

    .line 517
    if-nez v0, :cond_0

    .line 518
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Request;->ranges:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 520
    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 522
    :cond_1
    return-object v0

    .line 520
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    .restart local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    goto :goto_0
.end method

.method public getReferrerRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lorg/restlet/Request;->referrerRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getResourceRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/restlet/Request;->resourceRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getRootRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lorg/restlet/Request;->rootRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public isAsynchronous()Z
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lorg/restlet/Request;->getOnResponse()Lorg/restlet/Uniform;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConfidential()Z
    .locals 1

    .prologue
    .line 592
    invoke-virtual {p0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Protocol;->isConfidential()Z

    move-result v0

    goto :goto_0
.end method

.method public isEntityAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 606
    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {p0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-virtual {p0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 609
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 613
    :goto_1
    return v1

    .end local v0    # "result":Z
    :cond_1
    move v0, v1

    .line 606
    goto :goto_0

    .line 613
    .restart local v0    # "result":Z
    :cond_2
    invoke-super {p0}, Lorg/restlet/Message;->isEntityAvailable()Z

    move-result v1

    goto :goto_1
.end method

.method public isExpectingResponse()Z
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Method;->isReplying()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoggable()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lorg/restlet/Request;->loggable:Z

    return v0
.end method

.method public isSynchronous()Z
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lorg/restlet/Request;->getOnResponse()Lorg/restlet/Uniform;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 0
    .param p1, "challengeResponse"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 654
    iput-object p1, p0, Lorg/restlet/Request;->challengeResponse:Lorg/restlet/data/ChallengeResponse;

    .line 655
    return-void
.end method

.method public setClientInfo(Lorg/restlet/data/ClientInfo;)V
    .locals 0
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 664
    iput-object p1, p0, Lorg/restlet/Request;->clientInfo:Lorg/restlet/data/ClientInfo;

    .line 665
    return-void
.end method

.method public setConditions(Lorg/restlet/data/Conditions;)V
    .locals 0
    .param p1, "conditions"    # Lorg/restlet/data/Conditions;

    .prologue
    .line 674
    iput-object p1, p0, Lorg/restlet/Request;->conditions:Lorg/restlet/data/Conditions;

    .line 675
    return-void
.end method

.method public setCookies(Lorg/restlet/util/Series;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, "cookies":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    invoke-virtual {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v1

    monitor-enter v1

    .line 688
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 689
    invoke-virtual {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/Series;->clear()V

    .line 693
    :cond_0
    if-eqz p1, :cond_1

    .line 694
    invoke-virtual {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/Series;->addAll(Ljava/util/Collection;)Z

    .line 697
    :cond_1
    monitor-exit v1

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHostRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostUri"    # Ljava/lang/String;

    .prologue
    .line 719
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/Request;->setHostRef(Lorg/restlet/data/Reference;)V

    .line 720
    return-void
.end method

.method public setHostRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "hostRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 708
    iput-object p1, p0, Lorg/restlet/Request;->hostRef:Lorg/restlet/data/Reference;

    .line 709
    return-void
.end method

.method public setLoggable(Z)V
    .locals 0
    .param p1, "loggable"    # Z

    .prologue
    .line 729
    iput-boolean p1, p0, Lorg/restlet/Request;->loggable:Z

    .line 730
    return-void
.end method

.method public setMaxForwards(I)V
    .locals 0
    .param p1, "maxForwards"    # I

    .prologue
    .line 739
    iput p1, p0, Lorg/restlet/Request;->maxForwards:I

    .line 740
    return-void
.end method

.method public setMethod(Lorg/restlet/data/Method;)V
    .locals 0
    .param p1, "method"    # Lorg/restlet/data/Method;

    .prologue
    .line 749
    iput-object p1, p0, Lorg/restlet/Request;->method:Lorg/restlet/data/Method;

    .line 750
    return-void
.end method

.method public setOnResponse(Lorg/restlet/Uniform;)V
    .locals 0
    .param p1, "onResponseCallback"    # Lorg/restlet/Uniform;

    .prologue
    .line 760
    iput-object p1, p0, Lorg/restlet/Request;->onResponse:Lorg/restlet/Uniform;

    .line 761
    return-void
.end method

.method public setOriginalRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "originalRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 771
    iput-object p1, p0, Lorg/restlet/Request;->originalRef:Lorg/restlet/data/Reference;

    .line 772
    return-void
.end method

.method public setProtocol(Lorg/restlet/data/Protocol;)V
    .locals 0
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 781
    iput-object p1, p0, Lorg/restlet/Request;->protocol:Lorg/restlet/data/Protocol;

    .line 782
    return-void
.end method

.method public setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 0
    .param p1, "challengeResponse"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 793
    iput-object p1, p0, Lorg/restlet/Request;->proxyChallengeResponse:Lorg/restlet/data/ChallengeResponse;

    .line 794
    return-void
.end method

.method public setRanges(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Range;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    invoke-virtual {p0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 807
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 810
    if-eqz p1, :cond_0

    .line 811
    invoke-virtual {p0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 814
    :cond_0
    monitor-exit v1

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setReferrerRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "referrerUri"    # Ljava/lang/String;

    .prologue
    .line 844
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/Request;->setReferrerRef(Lorg/restlet/data/Reference;)V

    .line 845
    return-void
.end method

.method public setReferrerRef(Lorg/restlet/data/Reference;)V
    .locals 2
    .param p1, "referrerRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 825
    iput-object p1, p0, Lorg/restlet/Request;->referrerRef:Lorg/restlet/data/Reference;

    .line 828
    iget-object v0, p0, Lorg/restlet/Request;->referrerRef:Lorg/restlet/data/Reference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/restlet/Request;->referrerRef:Lorg/restlet/data/Reference;

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lorg/restlet/Request;->referrerRef:Lorg/restlet/data/Reference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/restlet/data/Reference;->setFragment(Ljava/lang/String;)V

    .line 832
    :cond_0
    return-void
.end method

.method public setResourceRef(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceUri"    # Ljava/lang/String;

    .prologue
    .line 870
    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 872
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/Request;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 877
    :goto_0
    return-void

    .line 875
    :cond_0
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/Request;->setResourceRef(Lorg/restlet/data/Reference;)V

    goto :goto_0
.end method

.method public setResourceRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "resourceRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 858
    iput-object p1, p0, Lorg/restlet/Request;->resourceRef:Lorg/restlet/data/Reference;

    .line 859
    return-void
.end method

.method public setRootRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "rootRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 886
    iput-object p1, p0, Lorg/restlet/Request;->rootRef:Lorg/restlet/data/Reference;

    .line 887
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Method;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Protocol;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Protocol;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
