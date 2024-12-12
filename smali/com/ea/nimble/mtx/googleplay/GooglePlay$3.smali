.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$3;
.super Landroid/content/BroadcastReceiver;
.source "GooglePlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$3;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 323
    const-string v0, "refreshing catalog items after language change"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$3;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->refreshAvailableCatalogItems()V

    .line 325
    return-void
.end method
