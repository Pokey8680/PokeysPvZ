.class Lcom/ea/nimble/inappmessage/InAppMessageImpl$3;
.super Ljava/lang/Object;
.source "InAppMessageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$alertDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/ea/nimble/inappmessage/InAppMessageImpl;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/inappmessage/InAppMessageImpl;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl$3;->this$0:Lcom/ea/nimble/inappmessage/InAppMessageImpl;

    iput-object p2, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl$3;->val$alertDialog:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl$3;->val$alertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 165
    return-void
.end method
