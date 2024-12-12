.class public abstract Lorg/restlet/engine/security/AuthenticatorHelper;
.super Lorg/restlet/engine/Helper;
.source "AuthenticatorHelper.java"


# instance fields
.field private volatile challengeScheme:Lorg/restlet/data/ChallengeScheme;

.field private volatile clientSide:Z

.field private volatile serverSide:Z


# direct methods
.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;ZZ)V
    .locals 0
    .param p1, "challengeScheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "clientSide"    # Z
    .param p3, "serverSide"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/restlet/engine/Helper;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/restlet/engine/security/AuthenticatorHelper;->challengeScheme:Lorg/restlet/data/ChallengeScheme;

    .line 81
    iput-boolean p2, p0, Lorg/restlet/engine/security/AuthenticatorHelper;->clientSide:Z

    .line 82
    iput-boolean p3, p0, Lorg/restlet/engine/security/AuthenticatorHelper;->serverSide:Z

    .line 83
    return-void
.end method


# virtual methods
.method public formatRequest(Lorg/restlet/engine/header/ChallengeWriter;Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Lorg/restlet/util/Series;)V
    .locals 0
    .param p1, "cw"    # Lorg/restlet/engine/header/ChallengeWriter;
    .param p2, "challenge"    # Lorg/restlet/data/ChallengeRequest;
    .param p3, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/header/ChallengeWriter;",
            "Lorg/restlet/data/ChallengeRequest;",
            "Lorg/restlet/Response;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    .local p4, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    return-void
.end method

.method public formatResponse(Lorg/restlet/engine/header/ChallengeWriter;Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/util/Series;)V
    .locals 0
    .param p1, "cw"    # Lorg/restlet/engine/header/ChallengeWriter;
    .param p2, "challenge"    # Lorg/restlet/data/ChallengeResponse;
    .param p3, "request"    # Lorg/restlet/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/header/ChallengeWriter;",
            "Lorg/restlet/data/ChallengeResponse;",
            "Lorg/restlet/Request;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p4, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    return-void
.end method

.method public getChallengeScheme()Lorg/restlet/data/ChallengeScheme;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/restlet/engine/security/AuthenticatorHelper;->challengeScheme:Lorg/restlet/data/ChallengeScheme;

    return-object v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public isClientSide()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/restlet/engine/security/AuthenticatorHelper;->clientSide:Z

    return v0
.end method

.method public isServerSide()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/restlet/engine/security/AuthenticatorHelper;->serverSide:Z

    return v0
.end method

.method public parseRequest(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Lorg/restlet/util/Series;)V
    .locals 0
    .param p1, "challenge"    # Lorg/restlet/data/ChallengeRequest;
    .param p2, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeRequest;",
            "Lorg/restlet/Response;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    return-void
.end method

.method public parseResponse(Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/util/Series;)V
    .locals 0
    .param p1, "challenge"    # Lorg/restlet/data/ChallengeResponse;
    .param p2, "request"    # Lorg/restlet/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeResponse;",
            "Lorg/restlet/Request;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    return-void
.end method

.method public setChallengeScheme(Lorg/restlet/data/ChallengeScheme;)V
    .locals 0
    .param p1, "challengeScheme"    # Lorg/restlet/data/ChallengeScheme;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/restlet/engine/security/AuthenticatorHelper;->challengeScheme:Lorg/restlet/data/ChallengeScheme;

    .line 191
    return-void
.end method

.method public setClientSide(Z)V
    .locals 0
    .param p1, "clientSide"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lorg/restlet/engine/security/AuthenticatorHelper;->clientSide:Z

    .line 201
    return-void
.end method

.method public setServerSide(Z)V
    .locals 0
    .param p1, "serverSide"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lorg/restlet/engine/security/AuthenticatorHelper;->serverSide:Z

    .line 211
    return-void
.end method

.method public updateReference(Lorg/restlet/data/Reference;Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;)Lorg/restlet/data/Reference;
    .locals 0
    .param p1, "resourceRef"    # Lorg/restlet/data/Reference;
    .param p2, "challengeResponse"    # Lorg/restlet/data/ChallengeResponse;
    .param p3, "request"    # Lorg/restlet/Request;

    .prologue
    .line 229
    return-object p1
.end method
