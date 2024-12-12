.class public Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;
.super Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
.source "NimbleFriendsRefreshBasicInfo.java"


# instance fields
.field private m_nextPage:Z

.field private m_range:I

.field private m_startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;-><init>()V

    .line 7
    iput v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_startIndex:I

    .line 10
    iput v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_range:I

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_nextPage:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_nextPage:Z

    .line 19
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "range"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;-><init>()V

    .line 7
    iput v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_startIndex:I

    .line 10
    iput v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_range:I

    .line 13
    iput-boolean v1, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_nextPage:Z

    .line 24
    iput p1, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_startIndex:I

    .line 25
    iput p2, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_range:I

    .line 26
    iput-boolean v1, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_nextPage:Z

    .line 27
    return-void
.end method


# virtual methods
.method getNextPage()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_nextPage:Z

    return v0
.end method

.method getRange()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_range:I

    return v0
.end method

.method getStartIndex()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->m_startIndex:I

    return v0
.end method
