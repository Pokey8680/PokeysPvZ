.class Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SynergyIdManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/SynergyIdManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynergyIdManagerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyIdManagerImpl;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/SynergyIdManagerImpl;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;->this$0:Lcom/ea/nimble/SynergyIdManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/SynergyIdManagerImpl;Lcom/ea/nimble/SynergyIdManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/SynergyIdManagerImpl;
    .param p2, "x1"    # Lcom/ea/nimble/SynergyIdManagerImpl$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;-><init>(Lcom/ea/nimble/SynergyIdManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;->this$0:Lcom/ea/nimble/SynergyIdManagerImpl;

    invoke-static {v0}, Lcom/ea/nimble/SynergyIdManagerImpl;->access$000(Lcom/ea/nimble/SynergyIdManagerImpl;)V

    .line 28
    :cond_0
    return-void
.end method
