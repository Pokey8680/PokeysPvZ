.class Lorg/restlet/engine/connector/BaseHelper$3;
.super Ljava/lang/Object;
.source "BaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/connector/BaseHelper;->handleOutbound(Lorg/restlet/Response;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/connector/BaseHelper;

.field final synthetic val$response:Lorg/restlet/Response;


# direct methods
.method constructor <init>(Lorg/restlet/engine/connector/BaseHelper;Lorg/restlet/Response;)V
    .locals 0

    .prologue
    .line 629
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper$3;, "Lorg/restlet/engine/connector/BaseHelper.3;"
    iput-object p1, p0, Lorg/restlet/engine/connector/BaseHelper$3;->this$0:Lorg/restlet/engine/connector/BaseHelper;

    iput-object p2, p0, Lorg/restlet/engine/connector/BaseHelper$3;->val$response:Lorg/restlet/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 632
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper$3;, "Lorg/restlet/engine/connector/BaseHelper.3;"
    :try_start_0
    iget-object v0, p0, Lorg/restlet/engine/connector/BaseHelper$3;->this$0:Lorg/restlet/engine/connector/BaseHelper;

    iget-object v1, p0, Lorg/restlet/engine/connector/BaseHelper$3;->val$response:Lorg/restlet/Response;

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/BaseHelper;->doHandleOutbound(Lorg/restlet/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    invoke-static {}, Lorg/restlet/engine/Engine;->clearThreadLocalVariables()V

    .line 636
    return-void

    .line 634
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/restlet/engine/Engine;->clearThreadLocalVariables()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper$3;, "Lorg/restlet/engine/connector/BaseHelper.3;"
    const-string v0, "Handle outbound messages"

    return-object v0
.end method
