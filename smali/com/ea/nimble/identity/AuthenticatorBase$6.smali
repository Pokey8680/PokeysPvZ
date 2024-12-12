.class Lcom/ea/nimble/identity/AuthenticatorBase$6;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$6;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$6;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$500(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    .line 129
    return-void
.end method
