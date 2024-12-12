.class Lcom/millennialmedia/android/MMLayout$3;
.super Ljava/lang/Object;
.source "MMLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMLayout;->adjustVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMLayout;

.field final synthetic val$params:Lcom/millennialmedia/android/InlineVideoView$InlineParams;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMLayout;Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$3;->this$0:Lcom/millennialmedia/android/MMLayout;

    iput-object p2, p0, Lcom/millennialmedia/android/MMLayout$3;->val$params:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$3;->this$0:Lcom/millennialmedia/android/MMLayout;

    iget-object v0, v0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$3;->this$0:Lcom/millennialmedia/android/MMLayout;

    iget-object v0, v0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout$3;->val$params:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->adjustVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z

    .line 559
    :cond_0
    return-void
.end method
