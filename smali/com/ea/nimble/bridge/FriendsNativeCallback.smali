.class public Lcom/ea/nimble/bridge/FriendsNativeCallback;
.super Ljava/lang/Object;
.source "FriendsNativeCallback.java"

# interfaces
.implements Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
.implements Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;
.implements Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/ea/nimble/bridge/FriendsNativeCallback;->m_id:I

    .line 21
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ea/nimble/bridge/FriendsNativeCallback;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    .line 45
    return-void
.end method

.method public onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V
    .locals 3
    .param p1, "friendList"    # Lcom/ea/nimble/friends/NimbleFriendsList;
    .param p2, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .param p3, "result"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;

    .prologue
    .line 26
    iget v0, p0, Lcom/ea/nimble/bridge/FriendsNativeCallback;->m_id:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public onCallback(Ljava/util/ArrayList;Lcom/ea/nimble/Error;)V
    .locals 3
    .param p2, "error"    # Lcom/ea/nimble/Error;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;",
            "Lcom/ea/nimble/Error;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    iget v0, p0, Lcom/ea/nimble/bridge/FriendsNativeCallback;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public onCallback(ZLcom/ea/nimble/Error;)V
    .locals 4
    .param p1, "sentSuccessfully"    # Z
    .param p2, "error"    # Lcom/ea/nimble/Error;

    .prologue
    .line 38
    iget v0, p0, Lcom/ea/nimble/bridge/FriendsNativeCallback;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 39
    return-void
.end method
