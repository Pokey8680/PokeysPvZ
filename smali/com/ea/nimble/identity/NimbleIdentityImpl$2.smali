.class Lcom/ea/nimble/identity/NimbleIdentityImpl$2;
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
    .line 84
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$2;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$2;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-static {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->access$100(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V

    .line 89
    return-void
.end method
