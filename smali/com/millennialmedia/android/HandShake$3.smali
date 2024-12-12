.class Lcom/millennialmedia/android/HandShake$3;
.super Ljava/lang/Object;
.source "HandShake.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HandShake;->deserializeFromObj(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$toastContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$3;->this$0:Lcom/millennialmedia/android/HandShake;

    iput-object p2, p0, Lcom/millennialmedia/android/HandShake$3;->val$toastContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/millennialmedia/android/HandShake$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake$3;->val$toastContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake$3;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "HandShake"

    const-string v2, "Error with toast token"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
