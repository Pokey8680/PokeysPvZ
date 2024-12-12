.class Lcom/ea/nimble/NetworkImpl$1;
.super Ljava/lang/Object;
.source "NetworkImpl.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/NetworkImpl;->verifyReachability(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/NetworkImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/NetworkImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/NetworkImpl;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl$1;->this$0:Lcom/ea/nimble/NetworkImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 1
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl$1;->this$0:Lcom/ea/nimble/NetworkImpl;

    invoke-static {v0, p1}, Lcom/ea/nimble/NetworkImpl;->access$500(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkConnectionHandle;)V

    .line 463
    return-void
.end method
