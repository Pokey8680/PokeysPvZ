.class Lcom/ea/nimble/FacebookImpl$1$1;
.super Ljava/lang/Object;
.source "FacebookImpl.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/FacebookImpl$1;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/FacebookImpl$1;


# direct methods
.method constructor <init>(Lcom/ea/nimble/FacebookImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/FacebookImpl$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ea/nimble/FacebookImpl$1$1;->this$1:Lcom/ea/nimble/FacebookImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 8
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    const-string v2, "Facebook GraphUser data received"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 138
    const-string v2, "Facebook graph user info successfully retrieved"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lcom/ea/nimble/FacebookImpl$1$1;->this$1:Lcom/ea/nimble/FacebookImpl$1;

    iget-object v2, v2, Lcom/ea/nimble/FacebookImpl$1;->this$0:Lcom/ea/nimble/FacebookImpl;

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/FacebookImpl;->access$002(Lcom/ea/nimble/FacebookImpl;Ljava/util/Map;)Ljava/util/Map;

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/ea/nimble/FacebookImpl$1$1;->this$1:Lcom/ea/nimble/FacebookImpl$1;

    iget-object v2, v2, Lcom/ea/nimble/FacebookImpl$1;->this$0:Lcom/ea/nimble/FacebookImpl;

    invoke-static {v2}, Lcom/ea/nimble/FacebookImpl;->access$000(Lcom/ea/nimble/FacebookImpl;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/ea/nimble/FacebookImpl$1$1;->this$1:Lcom/ea/nimble/FacebookImpl$1;

    iget-object v2, v2, Lcom/ea/nimble/FacebookImpl$1;->this$0:Lcom/ea/nimble/FacebookImpl;

    invoke-static {v2}, Lcom/ea/nimble/FacebookImpl;->access$000(Lcom/ea/nimble/FacebookImpl;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "avatar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://graph.facebook.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/picture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lcom/ea/nimble/FacebookImpl$1$1;->this$1:Lcom/ea/nimble/FacebookImpl$1;

    iget-object v2, v2, Lcom/ea/nimble/FacebookImpl$1;->this$0:Lcom/ea/nimble/FacebookImpl;

    invoke-static {v2}, Lcom/ea/nimble/FacebookImpl;->access$100(Lcom/ea/nimble/FacebookImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to get facebook user id"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Lcom/ea/nimble/FacebookImpl$1$1;->this$1:Lcom/ea/nimble/FacebookImpl$1;

    iget-object v2, v2, Lcom/ea/nimble/FacebookImpl$1;->this$0:Lcom/ea/nimble/FacebookImpl;

    invoke-static {v2}, Lcom/ea/nimble/FacebookImpl;->access$100(Lcom/ea/nimble/FacebookImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "Failed to retrieve graph user info"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
