.class Lcom/ea/nimble/identity/NimbleIdentityToken;
.super Ljava/lang/Object;
.source "NimbleIdentityToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NIMBLE_IDENTITY_REFRESH_TOKEN_EXPIRES_IN:Ljava/lang/String; = "refresh_token_expires_in"

.field private static final NIMBLE_IDENTITY_TOKEN_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final NIMBLE_IDENTITY_TOKEN_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final NIMBLE_IDENTITY_TOKEN_ID_TOKEN:Ljava/lang/String; = "id_token"

.field private static final NIMBLE_IDENTITY_TOKEN_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final NIMBLE_IDENTITY_TOKEN_TYPE:Ljava/lang/String; = "token_type"

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private accessToken:Ljava/lang/String;

.field private accessTokenExpiryTime:Ljava/util/Date;

.field private idToken:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private refreshTokenExpiryTime:Ljava/util/Date;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "input":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v4, "access_token"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->accessToken:Ljava/lang/String;

    .line 53
    const-string v4, "refresh_token"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->refreshToken:Ljava/lang/String;

    .line 54
    const-string v4, "id_token"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->idToken:Ljava/lang/String;

    .line 55
    const-string v4, "token_type"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->type:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    .local v0, "createTime":J
    const-string v4, "expires_in"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 60
    .local v2, "objExpiryTime":Ljava/lang/Object;
    new-instance v4, Ljava/util/Date;

    invoke-direct {p0, v2}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getTimeFromObject(Ljava/lang/Object;)J

    move-result-wide v6

    add-long/2addr v6, v0

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->accessTokenExpiryTime:Ljava/util/Date;

    .line 63
    const-string v4, "refresh_token_expires_in"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "objRefreshTokenExpiresIn":Ljava/lang/Object;
    new-instance v4, Ljava/util/Date;

    invoke-direct {p0, v3}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getTimeFromObject(Ljava/lang/Object;)J

    move-result-wide v6

    add-long/2addr v6, v0

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->refreshTokenExpiryTime:Ljava/util/Date;

    .line 65
    return-void
.end method

.method private getTimeFromObject(Ljava/lang/Object;)J
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 114
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 116
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 131
    .local v0, "dTime":D
    :goto_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v0

    double-to-long v2, v2

    .end local v0    # "dTime":D
    :goto_1
    return-wide v2

    .line 118
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 120
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .restart local v0    # "dTime":D
    goto :goto_0

    .line 122
    .end local v0    # "dTime":D
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 124
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    goto :goto_1

    .line 128
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    const-string v2, "Identity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get time from object of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const-wide/16 v0, 0x0

    .restart local v0    # "dTime":D
    goto :goto_0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessTokenExpiryTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->accessTokenExpiryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenExpiryTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->refreshTokenExpiryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->type:Ljava/lang/String;

    return-object v0
.end method
