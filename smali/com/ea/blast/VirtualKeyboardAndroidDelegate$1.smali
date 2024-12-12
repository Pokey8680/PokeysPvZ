.class Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;
.super Ljava/lang/Object;
.source "VirtualKeyboardAndroidDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/VirtualKeyboardAndroidDelegate;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;


# direct methods
.method constructor <init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    new-instance v1, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    iget-object v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-direct {v1, v2}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V

    invoke-static {v0, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$002(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    .line 131
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v2}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 132
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v0, v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 133
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v0, v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v2, v2, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayoutParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method
