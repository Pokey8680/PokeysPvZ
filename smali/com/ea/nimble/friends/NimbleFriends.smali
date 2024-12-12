.class public Lcom/ea/nimble/friends/NimbleFriends;
.super Ljava/lang/Object;
.source "NimbleFriends.java"


# static fields
.field public static final NIMBLE_COMPONENT_ID_FRIENDS:Ljava/lang/String; = "com.ea.nimble.friends"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/friends/INimbleFriends;
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.ea.nimble.friends"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/INimbleFriends;

    return-object v0
.end method
