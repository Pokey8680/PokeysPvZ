.class Lcom/ea/nimble/SynergyNetworkConnection$1;
.super Ljava/lang/Object;
.source "SynergyNetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyNetworkConnection;->send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyNetworkConnection;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyNetworkConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/SynergyNetworkConnection;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->access$100(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v0, p1}, Lcom/ea/nimble/SynergyNetworkConnection;->access$102(Lcom/ea/nimble/SynergyNetworkConnection;Lcom/ea/nimble/NetworkConnectionHandle;)Lcom/ea/nimble/NetworkConnectionHandle;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->access$200(Lcom/ea/nimble/SynergyNetworkConnection;)V

    .line 50
    invoke-interface {p1, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    .line 51
    invoke-interface {p1, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    .line 52
    invoke-interface {p1, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    .line 55
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->access$300(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->access$300(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-interface {v0, v1}, Lcom/ea/nimble/SynergyNetworkConnectionCallback;->callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    .line 59
    :cond_1
    return-void
.end method
