.class public Lcom/ea/nimble/friends/NimbleFriendsRefreshIdentityInfo;
.super Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
.source "NimbleFriendsRefreshIdentityInfo.java"


# instance fields
.field private userIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshIdentityInfo;->userIds:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public getTargetedFriendIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsRefreshIdentityInfo;->userIds:Ljava/util/ArrayList;

    return-object v0
.end method
