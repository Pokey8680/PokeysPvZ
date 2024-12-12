.class Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/NetworkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/NetworkImpl;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/NetworkImpl;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;->this$0:Lcom/ea/nimble/NetworkImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/NetworkImpl;
    .param p2, "x1"    # Lcom/ea/nimble/NetworkImpl$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;-><init>(Lcom/ea/nimble/NetworkImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    const-string v0, "Network reachability changed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;->this$0:Lcom/ea/nimble/NetworkImpl;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;->this$0:Lcom/ea/nimble/NetworkImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/ea/nimble/NetworkImpl;->access$000(Lcom/ea/nimble/NetworkImpl;Z)V

    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
