.class Lcom/millennialmedia/android/MMWebView$7;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMWebView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 982
    return-void
.end method
