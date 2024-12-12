.class Lcom/ea/nimble/FacebookImpl$4;
.super Ljava/lang/Object;
.source "FacebookImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/FacebookImpl;->retrieveFriends(IILcom/ea/nimble/IFacebook$FacebookFriendsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/FacebookImpl;

.field final synthetic val$callback:Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;

.field final synthetic val$limit:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/ea/nimble/FacebookImpl;IILcom/ea/nimble/IFacebook$FacebookFriendsCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/FacebookImpl;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/ea/nimble/FacebookImpl$4;->this$0:Lcom/ea/nimble/FacebookImpl;

    iput p2, p0, Lcom/ea/nimble/FacebookImpl$4;->val$offset:I

    iput p3, p0, Lcom/ea/nimble/FacebookImpl$4;->val$limit:I

    iput-object p4, p0, Lcom/ea/nimble/FacebookImpl$4;->val$callback:Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 499
    const-string v6, "name,id,picture.type(normal)"

    .line 500
    .local v6, "fields":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v3, "params":Landroid/os/Bundle;
    const-string v1, "offset"

    iget v2, p0, Lcom/ea/nimble/FacebookImpl$4;->val$offset:I

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    const-string v1, "limit"

    iget v2, p0, Lcom/ea/nimble/FacebookImpl$4;->val$limit:I

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    const-string v1, "fields"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "me/friends"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/ea/nimble/FacebookImpl$4$1;

    invoke-direct {v5, p0}, Lcom/ea/nimble/FacebookImpl$4$1;-><init>(Lcom/ea/nimble/FacebookImpl$4;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 538
    .local v0, "request":Lcom/facebook/Request;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 539
    return-void
.end method
