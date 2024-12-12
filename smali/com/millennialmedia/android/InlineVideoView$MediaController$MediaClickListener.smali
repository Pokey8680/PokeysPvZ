.class final Lcom/millennialmedia/android/InlineVideoView$MediaController$MediaClickListener;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/InlineVideoView$MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MediaClickListener"
.end annotation


# instance fields
.field private inlineVideoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/InlineVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 1
    .param p1, "inlineView"    # Lcom/millennialmedia/android/InlineVideoView;

    .prologue
    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$MediaClickListener;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    .line 903
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 908
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$MediaClickListener;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/InlineVideoView;

    .line 909
    .local v0, "inlineView":Lcom/millennialmedia/android/InlineVideoView;
    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/InlineVideoView;->onMediaControllerClick(Landroid/view/View;)V

    .line 912
    :cond_0
    return-void
.end method
