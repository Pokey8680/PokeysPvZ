.class Lorg/restlet/engine/adapter/ClientAdapter$1;
.super Ljava/lang/Object;
.source "ClientAdapter.java"

# interfaces
.implements Lorg/restlet/Uniform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/adapter/ClientAdapter;->commit(Lorg/restlet/engine/adapter/ClientCall;Lorg/restlet/Request;Lorg/restlet/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/adapter/ClientAdapter;

.field final synthetic val$httpCall:Lorg/restlet/engine/adapter/ClientCall;

.field final synthetic val$userCallback:Lorg/restlet/Uniform;


# direct methods
.method constructor <init>(Lorg/restlet/engine/adapter/ClientAdapter;Lorg/restlet/engine/adapter/ClientCall;Lorg/restlet/Uniform;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->this$0:Lorg/restlet/engine/adapter/ClientAdapter;

    iput-object p2, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->val$httpCall:Lorg/restlet/engine/adapter/ClientCall;

    iput-object p3, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->val$userCallback:Lorg/restlet/Uniform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 7
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->this$0:Lorg/restlet/engine/adapter/ClientAdapter;

    new-instance v2, Lorg/restlet/data/Status;

    iget-object v3, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->val$httpCall:Lorg/restlet/engine/adapter/ClientCall;

    invoke-virtual {v3}, Lorg/restlet/engine/adapter/ClientCall;->getStatusCode()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->val$httpCall:Lorg/restlet/engine/adapter/ClientCall;

    invoke-virtual {v5}, Lorg/restlet/engine/adapter/ClientCall;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/restlet/data/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->val$httpCall:Lorg/restlet/engine/adapter/ClientCall;

    invoke-virtual {v1, p2, v2, v3}, Lorg/restlet/engine/adapter/ClientAdapter;->updateResponse(Lorg/restlet/Response;Lorg/restlet/data/Status;Lorg/restlet/engine/adapter/ClientCall;)V

    .line 98
    iget-object v1, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->val$userCallback:Lorg/restlet/Uniform;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->val$userCallback:Lorg/restlet/Uniform;

    invoke-interface {v1, p1, p2}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/restlet/engine/adapter/ClientAdapter$1;->this$0:Lorg/restlet/engine/adapter/ClientAdapter;

    invoke-virtual {v1}, Lorg/restlet/engine/adapter/ClientAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unexpected error or exception inside the user call back"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
