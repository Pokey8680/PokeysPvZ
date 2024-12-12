.class public Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
.super Ljava/lang/Object;
.source "NimbleIdentityUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private avatarUri:Ljava/lang/String;

.field private dateOfBirth:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expiryTime:Ljava/util/Date;

.field private pid:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public clone()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    .locals 2

    .prologue
    .line 55
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->clone()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->avatarUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->expiryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getuserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarUri"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->avatarUri:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setDateOfBirth(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateOfBirth"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->dateOfBirth:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->displayName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->email:Ljava/lang/String;

    .line 133
    return-void
.end method

.method setExpiryTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "expiryTime"    # Ljava/util/Date;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->expiryTime:Ljava/util/Date;

    .line 206
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->pid:Ljava/lang/String;

    .line 81
    return-void
.end method

.method setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->userId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->userName:Ljava/lang/String;

    .line 175
    return-void
.end method
