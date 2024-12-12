.class public Lcom/ea/nimble/friends/NimbleFriendsError;
.super Lcom/ea/nimble/Error;
.source "NimbleFriendsError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    }
.end annotation


# static fields
.field public static final NIMBLE_FRIENDS_ERROR_DOMAIN:Ljava/lang/String; = "NimbleFriendsError"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "NimbleFriendsError"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    const-string v0, "NimbleFriendsError"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v0, "NimbleFriendsError"

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method
