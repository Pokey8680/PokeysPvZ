.class Lcom/millennialmedia/android/NVASpeechKit$1;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/NVASpeechKit;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/NVASpeechKit;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$1;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$1;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->endRecording()Z

    .line 212
    return-void
.end method
