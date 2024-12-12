.class Lcom/ea/nimble/FacebookImpl$4$1;
.super Ljava/lang/Object;
.source "FacebookImpl.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/FacebookImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/FacebookImpl$4;


# direct methods
.method constructor <init>(Lcom/ea/nimble/FacebookImpl$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/FacebookImpl$4;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/ea/nimble/FacebookImpl$4$1;->this$1:Lcom/ea/nimble/FacebookImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 10
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 509
    invoke-virtual {p1}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 514
    iget-object v4, p0, Lcom/ea/nimble/FacebookImpl$4$1;->this$1:Lcom/ea/nimble/FacebookImpl$4;

    iget-object v4, v4, Lcom/ea/nimble/FacebookImpl$4;->val$callback:Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;

    invoke-static {}, Lcom/ea/nimble/Facebook;->getComponent()Lcom/ea/nimble/IFacebook;

    move-result-object v5

    new-instance v6, Lcom/ea/nimble/NimbleFacebookError;

    sget-object v7, Lcom/ea/nimble/NimbleFacebookError$Code;->FBSERVER_ERROR:Lcom/ea/nimble/NimbleFacebookError$Code;

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/NimbleFacebookError;-><init>(Lcom/ea/nimble/NimbleFacebookError$Code;Ljava/lang/String;)V

    invoke-interface {v4, v5, v9, v6}, Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;->callback(Lcom/ea/nimble/IFacebook;Lorg/json/JSONArray;Lcom/ea/nimble/Error;)V

    .line 536
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v2

    .line 520
    .local v2, "graphObject":Lcom/facebook/model/GraphObject;
    if-eqz v2, :cond_1

    .line 522
    invoke-interface {v2}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 525
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 526
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/ea/nimble/FacebookImpl$4$1;->this$1:Lcom/ea/nimble/FacebookImpl$4;

    iget-object v4, v4, Lcom/ea/nimble/FacebookImpl$4;->val$callback:Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;

    invoke-static {}, Lcom/ea/nimble/Facebook;->getComponent()Lcom/ea/nimble/IFacebook;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v6}, Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;->callback(Lcom/ea/nimble/IFacebook;Lorg/json/JSONArray;Lcom/ea/nimble/Error;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    .end local v0    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "JSON Exception encountered when parsing the facebook FQL query"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iget-object v4, p0, Lcom/ea/nimble/FacebookImpl$4$1;->this$1:Lcom/ea/nimble/FacebookImpl$4;

    iget-object v4, v4, Lcom/ea/nimble/FacebookImpl$4;->val$callback:Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;

    invoke-static {}, Lcom/ea/nimble/Facebook;->getComponent()Lcom/ea/nimble/IFacebook;

    move-result-object v5

    new-instance v6, Lcom/ea/nimble/NimbleFacebookError;

    sget-object v7, Lcom/ea/nimble/NimbleFacebookError$Code;->RESPONSE_PARSE_ERROR:Lcom/ea/nimble/NimbleFacebookError$Code;

    invoke-virtual {v7}, Lcom/ea/nimble/NimbleFacebookError$Code;->intValue()I

    move-result v7

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/NimbleFacebookError;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5, v9, v6}, Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;->callback(Lcom/ea/nimble/IFacebook;Lorg/json/JSONArray;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 535
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    iget-object v4, p0, Lcom/ea/nimble/FacebookImpl$4$1;->this$1:Lcom/ea/nimble/FacebookImpl$4;

    iget-object v4, v4, Lcom/ea/nimble/FacebookImpl$4;->val$callback:Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;

    invoke-static {}, Lcom/ea/nimble/Facebook;->getComponent()Lcom/ea/nimble/IFacebook;

    move-result-object v5

    invoke-interface {v4, v5, v9, v9}, Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;->callback(Lcom/ea/nimble/IFacebook;Lorg/json/JSONArray;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method
