.class public interface abstract Lcom/ea/nimble/IFacebook;
.super Ljava/lang/Object;
.source "IFacebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/IFacebook$FqlRequestCallBack;,
        Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;,
        Lcom/ea/nimble/IFacebook$FacebookCallback;
    }
.end annotation


# static fields
.field public static final NIMBLE_NOTIFICATION_FACEBOOK_STATUS_CHANGED:Ljava/lang/String; = "nimble.notification.facebook.statuschanged"


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getApplicationId()Ljava/lang/String;
.end method

.method public abstract getExpirationDate()Ljava/util/Date;
.end method

.method public abstract getGraphUser()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasOpenSession()Z
.end method

.method public abstract login(Ljava/util/List;Lcom/ea/nimble/IFacebook$FacebookCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/IFacebook$FacebookCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract logout()V
.end method

.method public abstract refreshSession(Ljava/lang/String;Ljava/util/Date;)V
.end method

.method public abstract retrieveFriends(IILcom/ea/nimble/IFacebook$FacebookFriendsCallback;)V
.end method

.method public abstract sendAppRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/IFacebook$FacebookCallback;)V
.end method
