.class public interface abstract Lcom/ea/nimble/friends/INimbleOriginFriendsService;
.super Ljava/lang/Object;
.source "INimbleOriginFriendsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;,
        Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;
    }
.end annotation


# virtual methods
.method public abstract acceptFriendInvitation(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
.end method

.method public abstract declineFriendInvitation(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
.end method

.method public abstract listFriendInvitationsReceived(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
.end method

.method public abstract listFriendInvitationsSent(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
.end method

.method public abstract searchUserByDisplayName(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
.end method

.method public abstract searchUserByEmail(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
.end method

.method public abstract sendFriendInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
.end method

.method public abstract sendInvitationOverEmail(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendInvitationOverSMS(Ljava/util/ArrayList;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;",
            ")V"
        }
    .end annotation
.end method
