.class public Lcom/ea/blast/BatteryAndroidDelegate;
.super Ljava/lang/Object;
.source "BatteryAndroidDelegate.java"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Lcom/ea/blast/BatteryAndroidDelegate$1;

    invoke-direct {v1, p0}, Lcom/ea/blast/BatteryAndroidDelegate$1;-><init>(Lcom/ea/blast/BatteryAndroidDelegate;)V

    iput-object v1, p0, Lcom/ea/blast/BatteryAndroidDelegate;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v2, p0, Lcom/ea/blast/BatteryAndroidDelegate;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/ea/blast/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    return-void
.end method


# virtual methods
.method public GetBatteryLevel()F
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 76
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    sget-object v5, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Lcom/ea/blast/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 81
    const-string v5, "scale"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, "maxLevel":I
    const-string v5, "level"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 83
    .local v4, "rawLevel":I
    int-to-float v5, v4

    int-to-float v6, v3

    div-float v2, v5, v6

    .line 86
    .end local v3    # "maxLevel":I
    .end local v4    # "rawLevel":I
    :goto_0
    return v2

    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public IsPowerConnected()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    sget-object v3, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/ea/blast/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 61
    const-string v3, "plugged"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 70
    :goto_0
    return v2

    .line 67
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public native NativeOnBatteryLevelChanged(F)V
.end method

.method public native NativeOnPowerConnected()V
.end method

.method public native NativeOnPowerDisconnected()V
.end method

.method protected finnish()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v1, p0, Lcom/ea/blast/BatteryAndroidDelegate;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    return-void
.end method
