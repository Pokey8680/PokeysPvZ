.class public Lorg/restlet/engine/util/CallResolver;
.super Lorg/restlet/util/Resolver;
.source "CallResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/Resolver",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final request:Lorg/restlet/Request;

.field private final response:Lorg/restlet/Response;


# direct methods
.method public constructor <init>(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 0
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/restlet/util/Resolver;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    .line 67
    iput-object p2, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    .line 68
    return-void
.end method

.method private getReferenceContent(Ljava/lang/String;Lorg/restlet/data/Reference;)Ljava/lang/String;
    .locals 3
    .param p1, "partName"    # Ljava/lang/String;
    .param p2, "reference"    # Lorg/restlet/data/Reference;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "result":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 83
    const-string v1, "a"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const-string v1, "b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/restlet/engine/util/CallResolver;->getReferenceContent(Ljava/lang/String;Lorg/restlet/data/Reference;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "e"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getRelativePart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    const-string v1, "f"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getFragment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_4
    const-string v1, "h"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_5
    const-string v1, "i"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_6
    const-string v1, "p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 97
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_7
    const-string v1, "q"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 99
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_8
    const-string v1, "r"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getRemainingPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1, "variableName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    const/4 v2, 0x0

    .line 113
    .local v2, "result":Ljava/lang/Object;
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    .end local v2    # "result":Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_1

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 125
    :cond_1
    if-nez v2, :cond_3

    .line 126
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    if-eqz v4, :cond_2

    .line 127
    const-string v4, "c"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->isConfidential()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 238
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    if-eqz v4, :cond_3

    .line 239
    const-string v4, "ECS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 240
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 242
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 327
    :cond_3
    :goto_1
    return-object v2

    .line 129
    :cond_4
    const-string v4, "cia"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ClientInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    .local v2, "result":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v2    # "result":Ljava/lang/String;
    :cond_5
    const-string v4, "ciua"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 132
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ClientInfo;->getUpstreamAddress()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v2    # "result":Ljava/lang/String;
    :cond_6
    const-string v4, "cig"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 134
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ClientInfo;->getAgent()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v2    # "result":Ljava/lang/String;
    :cond_7
    const-string v4, "cri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 136
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v0

    .line 137
    .local v0, "cr":Lorg/restlet/data/ChallengeResponse;
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v0    # "cr":Lorg/restlet/data/ChallengeResponse;
    .end local v2    # "result":Ljava/lang/String;
    :cond_8
    const-string v4, "crs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 141
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v0

    .line 142
    .restart local v0    # "cr":Lorg/restlet/data/ChallengeResponse;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {v0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ChallengeScheme;->getTechnicalName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 145
    .end local v0    # "cr":Lorg/restlet/data/ChallengeResponse;
    .end local v2    # "result":Ljava/lang/String;
    :cond_9
    const-string v4, "d"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 146
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sget-object v4, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 148
    .end local v2    # "result":Ljava/lang/String;
    :cond_a
    const-string v4, "ecs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 149
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 151
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 154
    .end local v2    # "result":Ljava/lang/String;
    :cond_b
    const-string v4, "ee"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 155
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v3, "value":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 161
    if-lez v1, :cond_c

    .line 162
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_c
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/data/Encoding;

    invoke-virtual {v4}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 169
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/StringBuilder;
    :cond_e
    const-string v4, "eed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 170
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getExpirationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 172
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getExpirationDate()Ljava/util/Date;

    move-result-object v5

    sget-object v4, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 176
    .end local v2    # "result":Ljava/lang/String;
    :cond_f
    const-string v4, "el"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 177
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .restart local v3    # "value":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 183
    if-lez v1, :cond_10

    .line 184
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_10
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/data/Language;

    invoke-virtual {v4}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 189
    :cond_11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 191
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/StringBuilder;
    :cond_12
    const-string v4, "emd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 192
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getModificationDate()Ljava/util/Date;

    move-result-object v5

    sget-object v4, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 198
    .end local v2    # "result":Ljava/lang/String;
    :cond_13
    const-string v4, "emt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 199
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 201
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/MediaType;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 204
    .end local v2    # "result":Ljava/lang/String;
    :cond_14
    const-string v4, "es"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 205
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    .line 207
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 210
    .end local v2    # "result":Ljava/lang/String;
    :cond_15
    const-string v4, "et"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 211
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getTag()Lorg/restlet/data/Tag;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 213
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getTag()Lorg/restlet/data/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 215
    .end local v2    # "result":Ljava/lang/String;
    :cond_16
    const-string v4, "f"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 216
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v5}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/restlet/engine/util/CallResolver;->getReferenceContent(Ljava/lang/String;Lorg/restlet/data/Reference;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 218
    .end local v2    # "result":Ljava/lang/String;
    :cond_17
    const-string v4, "h"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 219
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v5}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/restlet/engine/util/CallResolver;->getReferenceContent(Ljava/lang/String;Lorg/restlet/data/Reference;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 221
    .end local v2    # "result":Ljava/lang/String;
    :cond_18
    const-string v4, "m"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 222
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 223
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 225
    .end local v2    # "result":Ljava/lang/String;
    :cond_19
    const-string v4, "o"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 226
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v5}, Lorg/restlet/Request;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/restlet/engine/util/CallResolver;->getReferenceContent(Ljava/lang/String;Lorg/restlet/data/Reference;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 228
    .end local v2    # "result":Ljava/lang/String;
    :cond_1a
    const-string v4, "p"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 229
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 230
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v4}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 232
    .end local v2    # "result":Ljava/lang/String;
    :cond_1b
    const-string v4, "r"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/restlet/engine/util/CallResolver;->request:Lorg/restlet/Request;

    invoke-virtual {v5}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/restlet/engine/util/CallResolver;->getReferenceContent(Ljava/lang/String;Lorg/restlet/data/Reference;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 245
    .end local v2    # "result":Ljava/lang/String;
    :cond_1c
    const-string v4, "EE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 246
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .restart local v3    # "value":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1e

    .line 252
    if-lez v1, :cond_1d

    .line 253
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_1d
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/data/Encoding;

    invoke-virtual {v4}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 258
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 260
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/StringBuilder;
    :cond_1f
    const-string v4, "EED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 261
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getExpirationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 263
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getExpirationDate()Ljava/util/Date;

    move-result-object v5

    sget-object v4, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 267
    .end local v2    # "result":Ljava/lang/String;
    :cond_20
    const-string v4, "EL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 268
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .restart local v3    # "value":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_22

    .line 274
    if-lez v1, :cond_21

    .line 275
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_21
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/data/Language;

    invoke-virtual {v4}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 280
    :cond_22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 282
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/StringBuilder;
    :cond_23
    const-string v4, "EMD"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 283
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 285
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getModificationDate()Ljava/util/Date;

    move-result-object v5

    sget-object v4, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 289
    .end local v2    # "result":Ljava/lang/String;
    :cond_24
    const-string v4, "EMT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 290
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 292
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/MediaType;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 295
    .end local v2    # "result":Ljava/lang/String;
    :cond_25
    const-string v4, "ES"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 296
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 298
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 301
    .end local v2    # "result":Ljava/lang/String;
    :cond_26
    const-string v4, "ET"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 302
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getTag()Lorg/restlet/data/Tag;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 304
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getTag()Lorg/restlet/data/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 306
    .end local v2    # "result":Ljava/lang/String;
    :cond_27
    const-string v4, "R"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 307
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v5}, Lorg/restlet/Response;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/restlet/engine/util/CallResolver;->getReferenceContent(Ljava/lang/String;Lorg/restlet/data/Reference;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 309
    .end local v2    # "result":Ljava/lang/String;
    :cond_28
    const-string v4, "S"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 310
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 311
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Status;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 314
    .end local v2    # "result":Ljava/lang/String;
    :cond_29
    const-string v4, "SIA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 315
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ServerInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 316
    .end local v2    # "result":Ljava/lang/String;
    :cond_2a
    const-string v4, "SIG"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 317
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ServerInfo;->getAgent()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 318
    .end local v2    # "result":Ljava/lang/String;
    :cond_2b
    const-string v4, "SIP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 319
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ServerInfo;->getPort()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 320
    iget-object v4, p0, Lorg/restlet/engine/util/CallResolver;->response:Lorg/restlet/Response;

    invoke-virtual {v4}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ServerInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto/16 :goto_1
.end method
