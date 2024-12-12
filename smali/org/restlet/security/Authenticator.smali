.class public abstract Lorg/restlet/security/Authenticator;
.super Lorg/restlet/routing/Filter;
.source "Authenticator.java"


# instance fields
.field private volatile enroler:Lorg/restlet/security/Enroler;

.field private volatile multiAuthenticating:Z

.field private volatile optional:Z


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/security/Authenticator;-><init>(Lorg/restlet/Context;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Z)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "optional"    # Z

    .prologue
    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Context;->getDefaultEnroler()Lorg/restlet/security/Enroler;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/security/Authenticator;-><init>(Lorg/restlet/Context;ZLorg/restlet/security/Enroler;)V

    .line 98
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/Context;ZLorg/restlet/security/Enroler;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "optional"    # Z
    .param p3, "enroler"    # Lorg/restlet/security/Enroler;

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/restlet/security/Authenticator;-><init>(Lorg/restlet/Context;ZZLorg/restlet/security/Enroler;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;ZZLorg/restlet/security/Enroler;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "multiAuthenticating"    # Z
    .param p3, "optional"    # Z
    .param p4, "enroler"    # Lorg/restlet/security/Enroler;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;)V

    .line 116
    iput-boolean p2, p0, Lorg/restlet/security/Authenticator;->multiAuthenticating:Z

    .line 117
    iput-boolean p3, p0, Lorg/restlet/security/Authenticator;->optional:Z

    .line 118
    iput-object p4, p0, Lorg/restlet/security/Authenticator;->enroler:Lorg/restlet/security/Enroler;

    .line 119
    return-void
.end method


# virtual methods
.method protected abstract authenticate(Lorg/restlet/Request;Lorg/restlet/Response;)Z
.end method

.method protected authenticated(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 7
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/restlet/security/Authenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 162
    .local v0, "loggable":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/restlet/security/Authenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The authentication succeeded for the identifer \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" using the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " scheme."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/restlet/data/ClientInfo;->setAuthenticated(Z)V

    .line 178
    :cond_1
    invoke-virtual {p2}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 181
    invoke-virtual {p0}, Lorg/restlet/security/Authenticator;->getEnroler()Lorg/restlet/security/Enroler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {p0}, Lorg/restlet/security/Authenticator;->getEnroler()Lorg/restlet/security/Enroler;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/restlet/security/Enroler;->enrole(Lorg/restlet/data/ClientInfo;)V

    .line 185
    :cond_2
    return v2

    .end local v0    # "loggable":Z
    :cond_3
    move v0, v2

    .line 159
    goto :goto_0
.end method

.method protected beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Lorg/restlet/security/Authenticator;->isMultiAuthenticating()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/ClientInfo;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/restlet/security/Authenticator;->authenticate(Lorg/restlet/Request;Lorg/restlet/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {p0, p1, p2}, Lorg/restlet/security/Authenticator;->authenticated(Lorg/restlet/Request;Lorg/restlet/Response;)I

    move-result v0

    .line 211
    :cond_1
    :goto_0
    return v0

    .line 204
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/security/Authenticator;->isOptional()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    sget-object v1, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    invoke-virtual {p2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/restlet/security/Authenticator;->unauthenticated(Lorg/restlet/Request;Lorg/restlet/Response;)I

    move-result v0

    goto :goto_0
.end method

.method public getEnroler()Lorg/restlet/security/Enroler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/restlet/security/Authenticator;->enroler:Lorg/restlet/security/Enroler;

    return-object v0
.end method

.method public isMultiAuthenticating()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/restlet/security/Authenticator;->multiAuthenticating:Z

    return v0
.end method

.method public isOptional()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lorg/restlet/security/Authenticator;->optional:Z

    return v0
.end method

.method public setEnroler(Lorg/restlet/security/Enroler;)V
    .locals 0
    .param p1, "enroler"    # Lorg/restlet/security/Enroler;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/restlet/security/Authenticator;->enroler:Lorg/restlet/security/Enroler;

    .line 260
    return-void
.end method

.method public setMultiAuthenticating(Z)V
    .locals 0
    .param p1, "multiAuthenticating"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lorg/restlet/security/Authenticator;->multiAuthenticating:Z

    .line 274
    return-void
.end method

.method public setOptional(Z)V
    .locals 0
    .param p1, "optional"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lorg/restlet/security/Authenticator;->optional:Z

    .line 288
    return-void
.end method

.method protected unauthenticated(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/restlet/security/Authenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 305
    .local v0, "loggable":Z
    :goto_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lorg/restlet/security/Authenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The authentication failed for the identifer \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" using the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scheme."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 316
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 317
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/restlet/data/ClientInfo;->setAuthenticated(Z)V

    .line 321
    :cond_1
    const/4 v1, 0x2

    return v1

    .end local v0    # "loggable":Z
    :cond_2
    move v0, v1

    .line 302
    goto :goto_0
.end method
