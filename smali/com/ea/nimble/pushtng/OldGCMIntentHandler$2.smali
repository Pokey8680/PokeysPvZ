.class Lcom/ea/nimble/pushtng/OldGCMIntentHandler$2;
.super Ljava/lang/Object;
.source "OldGCMIntentHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/pushtng/OldGCMIntentHandler;->showMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/pushtng/OldGCMIntentHandler;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/ea/nimble/pushtng/OldGCMIntentHandler;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/pushtng/OldGCMIntentHandler;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/ea/nimble/pushtng/OldGCMIntentHandler$2;->this$0:Lcom/ea/nimble/pushtng/OldGCMIntentHandler;

    iput-object p2, p0, Lcom/ea/nimble/pushtng/OldGCMIntentHandler$2;->val$alertDialog:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ea/nimble/pushtng/OldGCMIntentHandler$2;->val$alertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 229
    return-void
.end method
