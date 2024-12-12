.class Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "PushNotificationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$1;->this$0:Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v0, "got a message! someone loves me! wake up"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method
