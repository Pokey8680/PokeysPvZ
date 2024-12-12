.class Lcom/popcap/pvz_row/PvZActivity$8;
.super Ljava/lang/Object;
.source "PvZActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/PvZActivity;->PauseUserMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/PvZActivity;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/PvZActivity;)V
    .locals 0

    .prologue
    .line 933
    iput-object p1, p0, Lcom/popcap/pvz_row/PvZActivity$8;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 939
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    sget-object v2, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v2, v1}, Lcom/popcap/pvz_row/PvZActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 942
    sget-object v2, Lcom/popcap/pvz_row/PvZActivity;->gAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 944
    iget-object v2, p0, Lcom/popcap/pvz_row/PvZActivity$8;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/popcap/pvz_row/PvZActivity;->SetIsUserMusicPlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
