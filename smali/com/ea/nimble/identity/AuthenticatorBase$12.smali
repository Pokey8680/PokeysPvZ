.class Lcom/ea/nimble/identity/AuthenticatorBase$12;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->exchangeDataForToken(Ljava/lang/String;)V
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
    .line 889
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$12;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 1
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$12;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1400(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/NetworkConnectionHandle;)V

    .line 895
    return-void
.end method
