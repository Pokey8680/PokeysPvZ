.class Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$2;
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
    .line 58
    iput-object p1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$2;->this$0:Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$2;->this$0:Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;

    invoke-static {v0, p2}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->access$000(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;Landroid/content/Intent;)V

    .line 64
    return-void
.end method