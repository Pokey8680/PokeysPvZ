.class Lcom/ea/nimble/SynergyNetworkConnection$3;
.super Ljava/lang/Object;
.source "SynergyNetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkProgressHandler()V
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
    .line 190
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection$3;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$3;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->access$500(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection$3;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-interface {v0, v1}, Lcom/ea/nimble/SynergyNetworkConnectionCallback;->callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    .line 195
    return-void
.end method
