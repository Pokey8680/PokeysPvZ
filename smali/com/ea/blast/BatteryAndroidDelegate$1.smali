.class Lcom/ea/blast/BatteryAndroidDelegate$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryAndroidDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/BatteryAndroidDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/BatteryAndroidDelegate;


# direct methods
.method constructor <init>(Lcom/ea/blast/BatteryAndroidDelegate;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ea/blast/BatteryAndroidDelegate$1;->this$0:Lcom/ea/blast/BatteryAndroidDelegate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 36
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/ea/blast/BatteryAndroidDelegate$1;->this$0:Lcom/ea/blast/BatteryAndroidDelegate;

    invoke-virtual {v3}, Lcom/ea/blast/BatteryAndroidDelegate;->NativeOnPowerDisconnected()V

    .line 45
    :goto_0
    const-string v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, "maxLevel":I
    const-string v3, "level"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, "rawLevel":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float v0, v3, v4

    .line 49
    .local v0, "levelPercent":F
    iget-object v3, p0, Lcom/ea/blast/BatteryAndroidDelegate$1;->this$0:Lcom/ea/blast/BatteryAndroidDelegate;

    invoke-virtual {v3, v0}, Lcom/ea/blast/BatteryAndroidDelegate;->NativeOnBatteryLevelChanged(F)V

    .line 50
    return-void

    .line 42
    .end local v0    # "levelPercent":F
    .end local v1    # "maxLevel":I
    .end local v2    # "rawLevel":I
    :cond_0
    iget-object v3, p0, Lcom/ea/blast/BatteryAndroidDelegate$1;->this$0:Lcom/ea/blast/BatteryAndroidDelegate;

    invoke-virtual {v3}, Lcom/ea/blast/BatteryAndroidDelegate;->NativeOnPowerConnected()V

    goto :goto_0
.end method
