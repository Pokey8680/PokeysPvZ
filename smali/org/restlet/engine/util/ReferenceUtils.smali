.class public Lorg/restlet/engine/util/ReferenceUtils;
.super Ljava/lang/Object;
.source "ReferenceUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method public static format(Lorg/restlet/data/Reference;ZLorg/restlet/Request;)Ljava/lang/String;
    .locals 4
    .param p0, "resourceRef"    # Lorg/restlet/data/Reference;
    .param p1, "isProxied"    # Z
    .param p2, "request"    # Lorg/restlet/Request;

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0, p2}, Lorg/restlet/engine/util/ReferenceUtils;->update(Lorg/restlet/data/Reference;Lorg/restlet/Request;)Lorg/restlet/data/Reference;

    move-result-object v0

    .line 84
    .local v0, "requestRef":Lorg/restlet/data/Reference;
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {v0}, Lorg/restlet/data/Reference;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :cond_1
    invoke-virtual {v0}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_1
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :cond_2
    const-string v1, "/"

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v0}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static update(Lorg/restlet/data/Reference;Lorg/restlet/Request;)Lorg/restlet/data/Reference;
    .locals 2
    .param p0, "resourceRef"    # Lorg/restlet/data/Reference;
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 61
    .local v0, "result":Lorg/restlet/data/Reference;
    :goto_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/restlet/engine/security/AuthenticatorUtils;->updateReference(Lorg/restlet/data/Reference;Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;)Lorg/restlet/data/Reference;

    move-result-object v0

    .line 64
    return-object v0

    .line 57
    .end local v0    # "result":Lorg/restlet/data/Reference;
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v0

    goto :goto_0
.end method
