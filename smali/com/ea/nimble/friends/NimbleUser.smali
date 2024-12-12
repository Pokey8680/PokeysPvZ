.class public Lcom/ea/nimble/friends/NimbleUser;
.super Ljava/lang/Object;
.source "NimbleUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;
    }
.end annotation


# instance fields
.field protected addedToAllFriends:Z

.field protected authenticatorId:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;

.field protected extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected friendType:Ljava/lang/String;

.field protected imageUrl:Ljava/lang/String;

.field protected personaId:Ljava/lang/String;

.field protected pid:Ljava/lang/String;

.field protected playedCurrentGame:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

.field protected refreshTimestamp:Ljava/util/Date;

.field protected userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->playedCurrentGame:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/friends/NimbleUser;)V
    .locals 2
    .param p1, "nimbleUserObject"    # Lcom/ea/nimble/friends/NimbleUser;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->playedCurrentGame:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    .line 63
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->displayName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->authenticatorId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->userId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->pid:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPersonaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->personaId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPlayedCurrentGame()Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->playedCurrentGame:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    .line 69
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->imageUrl:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getRefreshTimestamp()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->refreshTimestamp:Ljava/util/Date;

    .line 71
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getFriendType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->friendType:Ljava/lang/String;

    .line 72
    iget-boolean v0, p1, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    iput-boolean v0, p0, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    .line 74
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->extraInfo:Ljava/util/Map;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getExtraInfo()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->extraInfo:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public getAuthenticatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->authenticatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->extraInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getFriendType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->friendType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleUser;->authenticatorId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleUser;->authenticatorId:Ljava/lang/String;

    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleUser;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleUser;->userId:Ljava/lang/String;

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    const-string v1, "https://graph.facebook.com/%s/picture?type=normal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleUser;->userId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->imageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPersonaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->personaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayedCurrentGame()Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->playedCurrentGame:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    return-object v0
.end method

.method public getRefreshTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->refreshTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleUser;->userId:Ljava/lang/String;

    return-object v0
.end method

.method isUserUpdated(Lcom/ea/nimble/friends/NimbleUser;)Z
    .locals 3
    .param p1, "nimbleUser"    # Lcom/ea/nimble/friends/NimbleUser;

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 208
    .local v0, "isUpdated":Z
    if-nez p1, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 288
    :goto_0
    return v1

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 218
    const/4 v0, 0x1

    .line 227
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPid()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getPid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 232
    const/4 v0, 0x1

    .line 241
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPersonaId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 242
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPersonaId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getPersonaId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 246
    const/4 v0, 0x1

    .line 255
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 256
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_4

    .line 258
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 260
    const/4 v0, 0x1

    .line 269
    :cond_4
    :goto_4
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPlayedCurrentGame()Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 271
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getPlayedCurrentGame()Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    move-result-object v1

    if-nez v1, :cond_a

    .line 273
    const/4 v0, 0x1

    :cond_5
    :goto_5
    move v1, v0

    .line 288
    goto :goto_0

    .line 221
    :cond_6
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    const/4 v0, 0x1

    goto :goto_1

    .line 235
    :cond_7
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    const/4 v0, 0x1

    goto :goto_2

    .line 249
    :cond_8
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPersonaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getPersonaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 251
    const/4 v0, 0x1

    goto :goto_3

    .line 263
    :cond_9
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 265
    const/4 v0, 0x1

    goto :goto_4

    .line 276
    :cond_a
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPlayedCurrentGame()Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getPlayedCurrentGame()Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 278
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected setAuthenticatorId(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticatorId"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->authenticatorId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method protected setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->displayName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method protected setExtraInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->extraInfo:Ljava/util/Map;

    .line 166
    return-void
.end method

.method protected setFriendType(Ljava/lang/String;)V
    .locals 0
    .param p1, "friendType"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->friendType:Ljava/lang/String;

    .line 196
    return-void
.end method

.method protected setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->imageUrl:Ljava/lang/String;

    .line 156
    return-void
.end method

.method protected setPersonaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "personaId"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->personaId:Ljava/lang/String;

    .line 176
    return-void
.end method

.method protected setPid(Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->pid:Ljava/lang/String;

    .line 123
    return-void
.end method

.method protected setPlayedCurrentGame(Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;)V
    .locals 0
    .param p1, "playedCurrentGame"    # Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->playedCurrentGame:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    .line 133
    return-void
.end method

.method protected setRefreshTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timeStamp"    # Ljava/util/Date;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->refreshTimestamp:Ljava/util/Date;

    .line 186
    return-void
.end method

.method protected setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleUser;->userId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 297
    iget-object v6, p0, Lcom/ea/nimble/friends/NimbleUser;->playedCurrentGame:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    sget-object v7, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    if-ne v6, v7, :cond_0

    .line 299
    const-string v2, "YES"

    .line 316
    .local v2, "playedGameOrNot":Ljava/lang/String;
    :goto_0
    const-string v5, ""

    .line 319
    .local v5, "timeStamp":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 320
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    const-string v6, "America/Los_Angeles"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 321
    iget-object v6, p0, Lcom/ea/nimble/friends/NimbleUser;->refreshTimestamp:Ljava/util/Date;

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 329
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 330
    .local v0, "descriptionOfTheFriend":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayName("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") friendId("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") pid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ea/nimble/friends/NimbleUser;->pid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "personaId("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 331
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getPersonaId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") imageUrl("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") authenticatorId("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 332
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") playedCurrentGame("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "refreshTimestamp("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getExtraInfo()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_3

    .line 337
    const-string v4, ""

    .line 343
    .local v4, "stringOfExtraInfo":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ExtraInfo("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 302
    .end local v0    # "descriptionOfTheFriend":Ljava/lang/String;
    .end local v2    # "playedGameOrNot":Ljava/lang/String;
    .end local v4    # "stringOfExtraInfo":Ljava/lang/String;
    .end local v5    # "timeStamp":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/ea/nimble/friends/NimbleUser;->playedCurrentGame:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    sget-object v7, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->NOT_PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    if-ne v6, v7, :cond_1

    .line 304
    const-string v2, "NO"

    .restart local v2    # "playedGameOrNot":Ljava/lang/String;
    goto/16 :goto_0

    .line 307
    .end local v2    # "playedGameOrNot":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/ea/nimble/friends/NimbleUser;->playedCurrentGame:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    sget-object v7, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    if-ne v6, v7, :cond_2

    .line 309
    const-string v2, "NOT AVAILABLE"

    .restart local v2    # "playedGameOrNot":Ljava/lang/String;
    goto/16 :goto_0

    .line 313
    .end local v2    # "playedGameOrNot":Ljava/lang/String;
    :cond_2
    const-string v2, "UNKNOWN"

    .restart local v2    # "playedGameOrNot":Ljava/lang/String;
    goto/16 :goto_0

    .line 324
    .restart local v5    # "timeStamp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, ""

    goto/16 :goto_1

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "descriptionOfTheFriend":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleUser;->getExtraInfo()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "stringOfExtraInfo":Ljava/lang/String;
    goto :goto_2
.end method
