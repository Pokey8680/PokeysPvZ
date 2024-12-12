.class Lcom/millennialmedia/android/MMAdView$1;
.super Ljava/lang/Object;
.source "MMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 258
    .local v0, "density":F
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget v1, v1, Lcom/millennialmedia/android/MMAdView;->width:I

    if-gtz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Lcom/millennialmedia/android/MMAdView;->width:I

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget v1, v1, Lcom/millennialmedia/android/MMAdView;->height:I

    if-gtz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 264
    :cond_1
    return-void
.end method
