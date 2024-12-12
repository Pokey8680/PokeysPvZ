.class Lcom/ea/blast/DisplayAndroidDelegate$2;
.super Ljava/lang/Object;
.source "DisplayAndroidDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/DisplayAndroidDelegate;->DetachView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/DisplayAndroidDelegate;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ea/blast/DisplayAndroidDelegate;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/ea/blast/DisplayAndroidDelegate$2;->this$0:Lcom/ea/blast/DisplayAndroidDelegate;

    iput-object p2, p0, Lcom/ea/blast/DisplayAndroidDelegate$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate$2;->this$0:Lcom/ea/blast/DisplayAndroidDelegate;

    const-string v1, "DisplayAndroidDelegate.DetachView().run()"

    invoke-static {v0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->access$000(Lcom/ea/blast/DisplayAndroidDelegate;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v0, v0, Lcom/ea/blast/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ea/blast/DisplayAndroidDelegate$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate$2;->this$0:Lcom/ea/blast/DisplayAndroidDelegate;

    invoke-virtual {v0}, Lcom/ea/blast/DisplayAndroidDelegate;->notifyUiThreadOperationCompleted()V

    .line 275
    return-void
.end method
