.class Lcom/ea/nimble/friends/UserInfoFromIdentity;
.super Ljava/lang/Object;
.source "UserInfoFromIdentity.java"


# instance fields
.field private externalRefValue:Ljava/lang/String;

.field private personaId:Ljava/lang/String;

.field private pidId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "pidId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/UserInfoFromIdentity;->pidId:Ljava/lang/String;

    .line 20
    const-string v0, "personaId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/UserInfoFromIdentity;->personaId:Ljava/lang/String;

    .line 21
    const-string v0, "externalRefValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/UserInfoFromIdentity;->externalRefValue:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getExternalRefValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ea/nimble/friends/UserInfoFromIdentity;->externalRefValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ea/nimble/friends/UserInfoFromIdentity;->personaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ea/nimble/friends/UserInfoFromIdentity;->pidId:Ljava/lang/String;

    return-object v0
.end method
