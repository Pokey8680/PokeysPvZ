.class Lcom/inmobi/monetization/IMNative$c;
.super Ljava/lang/Object;
.source "IMNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/IMNative;->detachFromView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMNative;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMNative;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative$c;->a:Lcom/inmobi/monetization/IMNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$c;->a:Lcom/inmobi/monetization/IMNative;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$c;->a:Lcom/inmobi/monetization/IMNative;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/TrackerView;->destroy()V

    .line 160
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$c;->a:Lcom/inmobi/monetization/IMNative;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please attach the native ad view before calling detach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$c;->a:Lcom/inmobi/monetization/IMNative;

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->f:Lcom/inmobi/monetization/IMNative$a;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;Lcom/inmobi/monetization/IMNative$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$c;->a:Lcom/inmobi/monetization/IMNative;

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->f:Lcom/inmobi/monetization/IMNative$a;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;Lcom/inmobi/monetization/IMNative$a;)V

    .line 170
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to detach a view"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
