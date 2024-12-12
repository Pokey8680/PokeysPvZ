.class Lcom/ea/nimble/identity/NimbleIdentityImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "NimbleIdentityImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/NimbleIdentityImpl;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$1;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$1;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-static {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->access$000(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V

    .line 80
    return-void
.end method
