.class public interface abstract Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;
.super Ljava/lang/Object;
.source "INimbleOriginFriendsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/friends/INimbleOriginFriendsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NimbleUserSearchCallback"
.end annotation


# virtual methods
.method public abstract onCallback(Ljava/util/ArrayList;Lcom/ea/nimble/Error;)V
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
.end method
