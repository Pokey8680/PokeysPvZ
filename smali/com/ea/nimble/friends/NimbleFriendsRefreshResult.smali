.class public Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
.super Ljava/lang/Object;
.source "NimbleFriendsRefreshResult.java"


# instance fields
.field protected m_error:Lcom/ea/nimble/Error;

.field protected m_success:Z

.field protected m_userList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_userList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getError()Lcom/ea/nimble/Error;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_error:Lcom/ea/nimble/Error;

    return-object v0
.end method

.method public getUpdatedFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_userList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_success:Z

    return v0
.end method
