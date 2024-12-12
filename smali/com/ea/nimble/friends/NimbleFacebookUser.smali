.class Lcom/ea/nimble/friends/NimbleFacebookUser;
.super Lcom/ea/nimble/friends/NimbleUser;
.source "NimbleFacebookUser.java"


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "facebookFriend"    # Lorg/json/JSONObject;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleUser;-><init>()V

    .line 15
    const-string v2, "facebook"

    iput-object v2, p0, Lcom/ea/nimble/friends/NimbleFacebookUser;->authenticatorId:Ljava/lang/String;

    .line 18
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/nimble/friends/NimbleFacebookUser;->userId:Ljava/lang/String;

    .line 21
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/nimble/friends/NimbleFacebookUser;->displayName:Ljava/lang/String;

    .line 24
    const-string v2, "picture"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 25
    .local v1, "pictureJSON":Lorg/json/JSONObject;
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    .local v0, "dataJSON":Lorg/json/JSONObject;
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/nimble/friends/NimbleFacebookUser;->imageUrl:Ljava/lang/String;

    .line 29
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/ea/nimble/friends/NimbleFacebookUser;->refreshTimestamp:Ljava/util/Date;

    .line 32
    sget-object v2, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    invoke-virtual {p0, v2}, Lcom/ea/nimble/friends/NimbleFacebookUser;->setPlayedCurrentGame(Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;)V

    .line 33
    return-void
.end method
