.class Lcom/ea/nimble/identity/AuthenticatorAnonymous$1;
.super Ljava/lang/Object;
.source "AuthenticatorAnonymous.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/AuthenticatorAnonymous;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$1;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$1;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-static {v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->access$000(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    .line 61
    return-void
.end method
