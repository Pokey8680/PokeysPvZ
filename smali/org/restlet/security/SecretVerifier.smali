.class public abstract Lorg/restlet/security/SecretVerifier;
.super Ljava/lang/Object;
.source "SecretVerifier.java"

# interfaces
.implements Lorg/restlet/security/Verifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare([C[C)Z
    .locals 5
    .param p0, "secret1"    # [C
    .param p1, "secret2"    # [C

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "result":Z
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 64
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_2

    .line 65
    const/4 v0, 0x1

    .line 67
    .local v0, "equals":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    if-eqz v0, :cond_1

    .line 68
    aget-char v3, p0, v1

    aget-char v4, p1, v1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 67
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    :cond_1
    move v2, v0

    .line 75
    .end local v0    # "equals":Z
    .end local v1    # "i":I
    :cond_2
    return v2
.end method


# virtual methods
.method protected createUser(Ljava/lang/String;)Lorg/restlet/security/User;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/restlet/security/User;

    invoke-direct {v0, p1}, Lorg/restlet/security/User;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createUser(Ljava/lang/String;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/security/User;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/restlet/security/SecretVerifier;->createUser(Ljava/lang/String;)Lorg/restlet/security/User;

    move-result-object v0

    return-object v0
.end method

.method protected getIdentifier(Lorg/restlet/Request;Lorg/restlet/Response;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 117
    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSecret(Lorg/restlet/Request;Lorg/restlet/Response;)[C
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v0

    return-object v0
.end method

.method public abstract verify(Ljava/lang/String;[C)I
.end method

.method public verify(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 5
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 147
    const/4 v1, 0x4

    .line 149
    .local v1, "result":I
    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v3

    if-nez v3, :cond_1

    .line 150
    const/4 v1, 0x0

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/restlet/security/SecretVerifier;->getIdentifier(Lorg/restlet/Request;Lorg/restlet/Response;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "identifier":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/security/SecretVerifier;->getSecret(Lorg/restlet/Request;Lorg/restlet/Response;)[C

    move-result-object v2

    .line 154
    .local v2, "secret":[C
    invoke-virtual {p0, v0, v2}, Lorg/restlet/security/SecretVerifier;->verify(Ljava/lang/String;[C)I

    move-result v1

    .line 156
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 157
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v3

    invoke-virtual {p0, v0, p1, p2}, Lorg/restlet/security/SecretVerifier;->createUser(Ljava/lang/String;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/security/User;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/ClientInfo;->setUser(Lorg/restlet/security/User;)V

    goto :goto_0
.end method
