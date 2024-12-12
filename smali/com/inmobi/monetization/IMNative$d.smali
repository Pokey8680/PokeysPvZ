.class Lcom/inmobi/monetization/IMNative$d;
.super Ljava/lang/Object;
.source "IMNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/IMNative;->handleClick(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/inmobi/monetization/IMNative;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMNative;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative$d;->b:Lcom/inmobi/monetization/IMNative;

    iput-object p2, p0, Lcom/inmobi/monetization/IMNative$d;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$d;->b:Lcom/inmobi/monetization/IMNative;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative$d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/TrackerView;->click(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 208
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to track click"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
