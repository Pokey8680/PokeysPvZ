.class final Lcom/inmobi/commons/internal/ThinICE$b;
.super Ljava/lang/Object;
.source "ThinICE.java"

# interfaces
.implements Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/internal/ThinICE;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Z)V
    .locals 1

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->start(Landroid/content/Context;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/internal/ThinICE;->a()V

    goto :goto_0
.end method
