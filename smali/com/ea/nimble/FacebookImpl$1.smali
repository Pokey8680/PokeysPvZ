.class Lcom/ea/nimble/FacebookImpl$1;
.super Ljava/lang/Object;
.source "FacebookImpl.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/FacebookImpl;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/FacebookImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/FacebookImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/FacebookImpl;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ea/nimble/FacebookImpl$1;->this$0:Lcom/ea/nimble/FacebookImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    sget-object v3, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    if-eq p2, v3, :cond_0

    sget-object v3, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    if-ne p2, v3, :cond_1

    .line 129
    :cond_0
    new-instance v3, Lcom/ea/nimble/FacebookImpl$1$1;

    invoke-direct {v3, p0}, Lcom/ea/nimble/FacebookImpl$1$1;-><init>(Lcom/ea/nimble/FacebookImpl$1;)V

    invoke-static {p1, v3}, Lcom/facebook/Request;->executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;

    .line 160
    :cond_1
    sget-object v3, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    if-eq p2, v3, :cond_2

    sget-object v3, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    if-eq p2, v3, :cond_2

    sget-object v3, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    if-ne p2, v3, :cond_3

    .line 163
    :cond_2
    const-string v3, "nimble.notification.facebook.statuschanged"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    :cond_3
    sget-object v3, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-eq p2, v3, :cond_4

    sget-object v3, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    if-ne p2, v3, :cond_6

    .line 168
    :cond_4
    sput-boolean v1, Lcom/ea/nimble/FacebookImpl;->bHasSeenOpening:Z

    .line 191
    :cond_5
    :goto_0
    return-void

    .line 171
    :cond_6
    sget-object v3, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-ne p2, v3, :cond_7

    sget-boolean v3, Lcom/ea/nimble/FacebookImpl;->bHasSeenOpening:Z

    if-eqz v3, :cond_5

    .line 175
    :cond_7
    invoke-static {}, Lcom/ea/nimble/FacebookImpl;->access$200()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 181
    invoke-static {}, Lcom/ea/nimble/FacebookImpl;->access$200()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_9

    invoke-static {}, Lcom/ea/nimble/FacebookImpl;->access$200()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_9

    .line 183
    invoke-static {}, Lcom/ea/nimble/FacebookImpl;->access$200()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IFacebook$FacebookCallback;

    .line 184
    .local v0, "callback":Lcom/ea/nimble/IFacebook$FacebookCallback;
    if-eqz v0, :cond_9

    .line 185
    iget-object v3, p0, Lcom/ea/nimble/FacebookImpl$1;->this$0:Lcom/ea/nimble/FacebookImpl;

    if-nez p3, :cond_a

    sget-object v4, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    if-eq p2, v4, :cond_8

    sget-object v4, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    if-ne p2, v4, :cond_a

    :cond_8
    :goto_1
    invoke-interface {v0, v3, v1, p3}, Lcom/ea/nimble/IFacebook$FacebookCallback;->callback(Lcom/ea/nimble/IFacebook;ZLjava/lang/Exception;)V

    .line 190
    .end local v0    # "callback":Lcom/ea/nimble/IFacebook$FacebookCallback;
    :cond_9
    invoke-static {}, Lcom/ea/nimble/FacebookImpl;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .restart local v0    # "callback":Lcom/ea/nimble/IFacebook$FacebookCallback;
    :cond_a
    move v1, v2

    .line 185
    goto :goto_1
.end method
