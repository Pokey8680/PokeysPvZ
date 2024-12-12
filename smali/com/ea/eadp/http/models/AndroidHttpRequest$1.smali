.class Lcom/ea/eadp/http/models/AndroidHttpRequest$1;
.super Ljava/lang/Object;
.source "AndroidHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequestAsync(Ljava/lang/String;Lcom/ea/eadp/http/models/HttpRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/eadp/http/models/AndroidHttpRequest;

.field final synthetic val$listener:Lcom/ea/eadp/http/models/HttpRequestListener;

.field final synthetic val$method:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/eadp/http/models/AndroidHttpRequest;Ljava/lang/String;Lcom/ea/eadp/http/models/HttpRequestListener;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest$1;->this$0:Lcom/ea/eadp/http/models/AndroidHttpRequest;

    iput-object p2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest$1;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest$1;->val$listener:Lcom/ea/eadp/http/models/HttpRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest$1;->this$0:Lcom/ea/eadp/http/models/AndroidHttpRequest;

    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest$1;->val$method:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->access$000(Lcom/ea/eadp/http/models/AndroidHttpRequest;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpResponse;

    move-result-object v0

    .line 117
    .local v0, "response":Lcom/ea/eadp/http/models/HttpResponse;
    iget-object v1, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest$1;->val$listener:Lcom/ea/eadp/http/models/HttpRequestListener;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest$1;->val$listener:Lcom/ea/eadp/http/models/HttpRequestListener;

    invoke-interface {v1, v0}, Lcom/ea/eadp/http/models/HttpRequestListener;->onComplete(Lcom/ea/eadp/http/models/HttpResponse;)V

    .line 120
    :cond_0
    return-void
.end method
