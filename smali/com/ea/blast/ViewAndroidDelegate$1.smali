.class Lcom/ea/blast/ViewAndroidDelegate$1;
.super Ljava/lang/Object;
.source "ViewAndroidDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/ViewAndroidDelegate;->SetViewFrame(ILjava/lang/Object;IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/ViewAndroidDelegate;

.field final synthetic val$height:I

.field final synthetic val$matchParent:Z

.field final synthetic val$view:Ljava/lang/Object;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/Object;ZIIII)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->this$0:Lcom/ea/blast/ViewAndroidDelegate;

    iput-object p2, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$view:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$matchParent:Z

    iput p4, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$width:I

    iput p5, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$height:I

    iput p6, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$x:I

    iput p7, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 43
    iget-object v3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->this$0:Lcom/ea/blast/ViewAndroidDelegate;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set View Frame - UI Thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ea/blast/ViewAndroidDelegate;->access$000(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$view:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 46
    .local v1, "nativeView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 48
    .local v2, "parentView":Landroid/view/View;
    const/4 v0, 0x0

    .line 54
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$matchParent:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$width:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$height:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 56
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    sget-object v3, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v3, v3, Lcom/ea/blast/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->this$0:Lcom/ea/blast/ViewAndroidDelegate;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "...Set View Frame - UI Thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ea/blast/ViewAndroidDelegate;->access$000(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/String;)V

    .line 67
    return-void

    .line 60
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$width:I

    iget v4, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$height:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$x:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 62
    iget v3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$y:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
