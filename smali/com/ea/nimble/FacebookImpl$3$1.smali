.class Lcom/ea/nimble/FacebookImpl$3$1;
.super Ljava/lang/Object;
.source "FacebookImpl.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/FacebookImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/FacebookImpl$3;


# direct methods
.method constructor <init>(Lcom/ea/nimble/FacebookImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/FacebookImpl$3;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/ea/nimble/FacebookImpl$3$1;->this$1:Lcom/ea/nimble/FacebookImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 4
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/ea/nimble/FacebookImpl$3$1;->this$1:Lcom/ea/nimble/FacebookImpl$3;

    iget-object v1, v0, Lcom/ea/nimble/FacebookImpl$3;->val$callback:Lcom/ea/nimble/IFacebook$FacebookCallback;

    iget-object v0, p0, Lcom/ea/nimble/FacebookImpl$3$1;->this$1:Lcom/ea/nimble/FacebookImpl$3;

    iget-object v2, v0, Lcom/ea/nimble/FacebookImpl$3;->this$0:Lcom/ea/nimble/FacebookImpl;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_1

    instance-of v3, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-nez v3, :cond_1

    .end local p2    # "error":Lcom/facebook/FacebookException;
    :goto_1
    invoke-interface {v1, v2, v0, p2}, Lcom/ea/nimble/IFacebook$FacebookCallback;->callback(Lcom/ea/nimble/IFacebook;ZLjava/lang/Exception;)V

    .line 459
    return-void

    .line 456
    .restart local p2    # "error":Lcom/facebook/FacebookException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1
.end method
