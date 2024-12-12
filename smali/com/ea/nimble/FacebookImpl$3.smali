.class Lcom/ea/nimble/FacebookImpl$3;
.super Ljava/lang/Object;
.source "FacebookImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/FacebookImpl;->sendAppRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/IFacebook$FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/FacebookImpl;

.field final synthetic val$callback:Lcom/ea/nimble/IFacebook$FacebookCallback;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/FacebookImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/IFacebook$FacebookCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/FacebookImpl;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/ea/nimble/FacebookImpl$3;->this$0:Lcom/ea/nimble/FacebookImpl;

    iput-object p2, p0, Lcom/ea/nimble/FacebookImpl$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/nimble/FacebookImpl$3;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/nimble/FacebookImpl$3;->val$target:Ljava/lang/String;

    iput-object p5, p0, Lcom/ea/nimble/FacebookImpl$3;->val$callback:Lcom/ea/nimble/IFacebook$FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x400

    .line 444
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 445
    .local v1, "activity":Landroid/app/Activity;
    const-string v0, "apprequests"

    .line 446
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v5, "params":Landroid/os/Bundle;
    const-string v6, "title"

    iget-object v7, p0, Lcom/ea/nimble/FacebookImpl$3;->val$title:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v6, "message"

    iget-object v7, p0, Lcom/ea/nimble/FacebookImpl$3;->val$message:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v6, "to"

    iget-object v7, p0, Lcom/ea/nimble/FacebookImpl$3;->val$target:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v2, Lcom/facebook/widget/WebDialog$Builder;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v6

    invoke-direct {v2, v1, v6, v0, v5}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 451
    .local v2, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v6, Lcom/ea/nimble/FacebookImpl$3$1;

    invoke-direct {v6, p0}, Lcom/ea/nimble/FacebookImpl$3$1;-><init>(Lcom/ea/nimble/FacebookImpl$3;)V

    invoke-virtual {v2, v6}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 461
    invoke-virtual {v2}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v3

    .line 463
    .local v3, "dialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v3}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 464
    .local v4, "dialog_window":Landroid/view/Window;
    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 465
    invoke-virtual {v3}, Lcom/facebook/widget/WebDialog;->show()V

    .line 466
    return-void
.end method
