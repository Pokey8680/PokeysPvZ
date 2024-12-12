.class Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->isHandlingMMVideo(Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;

.field final synthetic val$activity:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;

    iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;->val$activity:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;->val$activity:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->enableButtons()V

    .line 142
    return-void
.end method
