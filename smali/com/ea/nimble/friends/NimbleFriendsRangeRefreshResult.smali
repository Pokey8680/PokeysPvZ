.class public Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
.super Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
.source "NimbleFriendsRangeRefreshResult.java"


# instance fields
.field protected m_friendListEndInRefresh:Z

.field protected m_size:I

.field protected m_startIndex:I

.field protected m_totalFriendCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefreshSize()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_size:I

    return v0
.end method

.method public getRefreshStartIndex()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_startIndex:I

    return v0
.end method

.method public getTotalFriendCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    return v0
.end method

.method public isFriendListEndInRefresh()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    return v0
.end method
