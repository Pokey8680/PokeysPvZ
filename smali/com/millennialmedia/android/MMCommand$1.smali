.class Lcom/millennialmedia/android/MMCommand$1;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMCommand;

.field final synthetic val$resp:Lcom/millennialmedia/android/MMJSResponse;

.field final synthetic val$webViewCallback:Lcom/millennialmedia/android/MMWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMJSResponse;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/millennialmedia/android/MMCommand$1;->this$0:Lcom/millennialmedia/android/MMCommand;

    iput-object p2, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webViewCallback:Lcom/millennialmedia/android/MMWebView;

    iput-object p3, p0, Lcom/millennialmedia/android/MMCommand$1;->val$resp:Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 163
    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand$1;->this$0:Lcom/millennialmedia/android/MMCommand;

    invoke-static {v1}, Lcom/millennialmedia/android/MMCommand;->access$000(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expandWithProperties"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webViewCallback:Lcom/millennialmedia/android/MMWebView;

    iput-boolean v5, v1, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

    .line 166
    :cond_0
    const-string v1, "javascript:%s(%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/android/MMCommand$1;->this$0:Lcom/millennialmedia/android/MMCommand;

    invoke-static {v4}, Lcom/millennialmedia/android/MMCommand;->access$100(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/millennialmedia/android/MMCommand$1;->val$resp:Lcom/millennialmedia/android/MMJSResponse;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMJSResponse;->toJSONString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "call":Ljava/lang/String;
    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webViewCallback:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 171
    return-void
.end method
