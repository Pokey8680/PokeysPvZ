.class public Lcom/ea/nimble/inappmessage/InAppMessage;
.super Ljava/lang/Object;
.source "InAppMessage.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.inappmessage"

.field public static final MESSAGE_EXCLUDE_ID:Ljava/lang/String; = "messageExcludeID"

.field static final MESSAGE_PERSISTENCE_ID:Ljava/lang/String; = "currentInAppMessage"

.field public static final NOTIFICATION_IN_APP_MESSAGE_REFRESH:Ljava/lang/String; = "nimble.inappmessage.notification.message_refresh"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/inappmessage/IInAppMessage;
    .locals 1

    .prologue
    .line 21
    const-string v0, "com.ea.nimble.inappmessage"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/inappmessage/IInAppMessage;

    return-object v0
.end method

.method private static initialize()V
    .locals 3

    .prologue
    .line 27
    const-string v0, "IAM"

    const-string v1, "IAM initialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;

    invoke-direct {v0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;-><init>()V

    const-string v1, "com.ea.nimble.inappmessage"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 29
    return-void
.end method
