.class Lcom/ea/nimble/inappmessage/InAppMessageImpl$1;
.super Ljava/lang/Object;
.source "InAppMessageImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/inappmessage/InAppMessageImpl;->showInAppMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/inappmessage/InAppMessageImpl;

.field final synthetic val$msg:Lcom/ea/nimble/inappmessage/Message;


# direct methods
.method constructor <init>(Lcom/ea/nimble/inappmessage/InAppMessageImpl;Lcom/ea/nimble/inappmessage/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/inappmessage/InAppMessageImpl;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl$1;->this$0:Lcom/ea/nimble/inappmessage/InAppMessageImpl;

    iput-object p2, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl$1;->val$msg:Lcom/ea/nimble/inappmessage/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl$1;->val$msg:Lcom/ea/nimble/inappmessage/Message;

    iget-object v2, v2, Lcom/ea/nimble/inappmessage/Message;->m_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method
