.class public Lorg/restlet/security/ChallengeAuthenticator;
.super Lorg/restlet/security/Authenticator;
.source "ChallengeAuthenticator.java"


# instance fields
.field private volatile realm:Ljava/lang/String;

.field private volatile rechallenging:Z

.field private final scheme:Lorg/restlet/data/ChallengeScheme;

.field private volatile verifier:Lorg/restlet/security/Verifier;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "challengeScheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/restlet/security/ChallengeAuthenticator;-><init>(Lorg/restlet/Context;ZLorg/restlet/data/ChallengeScheme;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;ZLorg/restlet/data/ChallengeScheme;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "optional"    # Z
    .param p3, "challengeScheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Context;->getDefaultVerifier()Lorg/restlet/security/Verifier;

    move-result-object v5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/security/ChallengeAuthenticator;-><init>(Lorg/restlet/Context;ZLorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/security/Verifier;)V

    .line 94
    return-void

    .line 92
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/Context;ZLorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/security/Verifier;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "optional"    # Z
    .param p3, "challengeScheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "verifier"    # Lorg/restlet/security/Verifier;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lorg/restlet/security/Authenticator;-><init>(Lorg/restlet/Context;Z)V

    .line 113
    iput-object p4, p0, Lorg/restlet/security/ChallengeAuthenticator;->realm:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/security/ChallengeAuthenticator;->rechallenging:Z

    .line 115
    iput-object p3, p0, Lorg/restlet/security/ChallengeAuthenticator;->scheme:Lorg/restlet/data/ChallengeScheme;

    .line 116
    iput-object p5, p0, Lorg/restlet/security/ChallengeAuthenticator;->verifier:Lorg/restlet/security/Verifier;

    .line 117
    return-void
.end method


# virtual methods
.method protected authenticate(Lorg/restlet/Request;Lorg/restlet/Response;)Z
    .locals 7
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "result":Z
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 160
    .local v1, "loggable":Z
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getVerifier()Lorg/restlet/security/Verifier;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 161
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getVerifier()Lorg/restlet/security/Verifier;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Lorg/restlet/security/Verifier;->verify(Lorg/restlet/Request;Lorg/restlet/Response;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 238
    :cond_0
    :goto_1
    :pswitch_0
    return v2

    .end local v1    # "loggable":Z
    :cond_1
    move v1, v4

    .line 157
    goto :goto_0

    .line 164
    .restart local v1    # "loggable":Z
    :pswitch_1
    const/4 v2, 0x1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v0

    .line 170
    .local v0, "challengeResponse":Lorg/restlet/data/ChallengeResponse;
    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication succeeded. Valid credentials provided for identifier: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "Authentication succeeded. Valid credentials provided."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    .end local v0    # "challengeResponse":Lorg/restlet/data/ChallengeResponse;
    :pswitch_2
    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v5, "Authentication failed. No credentials provided."

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 188
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->isOptional()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    invoke-virtual {p0, p2, v4}, Lorg/restlet/security/ChallengeAuthenticator;->challenge(Lorg/restlet/Response;Z)V

    goto :goto_1

    .line 194
    :pswitch_3
    if-eqz v1, :cond_4

    .line 195
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v5, "Authentication failed. Invalid credentials provided."

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 199
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->isOptional()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->isRechallenging()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 201
    invoke-virtual {p0, p2, v4}, Lorg/restlet/security/ChallengeAuthenticator;->challenge(Lorg/restlet/Response;Z)V

    goto :goto_1

    .line 203
    :cond_5
    invoke-virtual {p0, p2}, Lorg/restlet/security/ChallengeAuthenticator;->forbid(Lorg/restlet/Response;)V

    goto :goto_1

    .line 208
    :pswitch_4
    if-eqz v1, :cond_6

    .line 209
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "Authentication failed. Stale credentials provided."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 213
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->isOptional()Z

    move-result v4

    if-nez v4, :cond_0

    .line 214
    invoke-virtual {p0, p2, v3}, Lorg/restlet/security/ChallengeAuthenticator;->challenge(Lorg/restlet/Response;Z)V

    goto/16 :goto_1

    .line 218
    :pswitch_5
    if-eqz v1, :cond_7

    .line 219
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v5, "Authentication failed. Identifier is unknown."

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 223
    :cond_7
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->isOptional()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->isRechallenging()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 225
    invoke-virtual {p0, p2, v4}, Lorg/restlet/security/ChallengeAuthenticator;->challenge(Lorg/restlet/Response;Z)V

    goto/16 :goto_1

    .line 227
    :cond_8
    invoke-virtual {p0, p2}, Lorg/restlet/security/ChallengeAuthenticator;->forbid(Lorg/restlet/Response;)V

    goto/16 :goto_1

    .line 233
    :cond_9
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "Authentication failed. No verifier provided."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 234
    sget-object v3, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v4, "Authentication failed. No verifier provided."

    invoke-virtual {p2, v3, v4}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public challenge(Lorg/restlet/Response;Z)V
    .locals 4
    .param p1, "response"    # Lorg/restlet/Response;
    .param p2, "stale"    # Z

    .prologue
    .line 251
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 254
    .local v0, "loggable":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "An authentication challenge was requested."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 259
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_UNAUTHORIZED:Lorg/restlet/data/Status;

    invoke-virtual {p1, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 260
    invoke-virtual {p1}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/restlet/security/ChallengeAuthenticator;->createChallengeRequest(Z)Lorg/restlet/data/ChallengeRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-void

    .line 251
    .end local v0    # "loggable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createChallengeRequest(Z)Lorg/restlet/data/ChallengeRequest;
    .locals 3
    .param p1, "stale"    # Z

    .prologue
    .line 271
    new-instance v0, Lorg/restlet/data/ChallengeRequest;

    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/ChallengeRequest;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;)V

    return-object v0
.end method

.method public forbid(Lorg/restlet/Response;)V
    .locals 5
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 285
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 288
    .local v0, "loggable":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lorg/restlet/security/ChallengeAuthenticator;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication or authorization failed for this URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 295
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_FORBIDDEN:Lorg/restlet/data/Status;

    invoke-virtual {p1, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 296
    return-void

    .line 285
    .end local v0    # "loggable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/restlet/security/ChallengeAuthenticator;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Lorg/restlet/data/ChallengeScheme;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/restlet/security/ChallengeAuthenticator;->scheme:Lorg/restlet/data/ChallengeScheme;

    return-object v0
.end method

.method public getVerifier()Lorg/restlet/security/Verifier;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/restlet/security/ChallengeAuthenticator;->verifier:Lorg/restlet/security/Verifier;

    return-object v0
.end method

.method public isRechallenging()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lorg/restlet/security/ChallengeAuthenticator;->rechallenging:Z

    return v0
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lorg/restlet/security/ChallengeAuthenticator;->realm:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setRechallenging(Z)V
    .locals 0
    .param p1, "rechallenging"    # Z

    .prologue
    .line 356
    iput-boolean p1, p0, Lorg/restlet/security/ChallengeAuthenticator;->rechallenging:Z

    .line 357
    return-void
.end method

.method public setVerifier(Lorg/restlet/security/Verifier;)V
    .locals 0
    .param p1, "verifier"    # Lorg/restlet/security/Verifier;

    .prologue
    .line 366
    iput-object p1, p0, Lorg/restlet/security/ChallengeAuthenticator;->verifier:Lorg/restlet/security/Verifier;

    .line 367
    return-void
.end method
