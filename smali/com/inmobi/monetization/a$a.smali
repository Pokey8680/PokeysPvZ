.class Lcom/inmobi/monetization/a$a;
.super Ljava/lang/Object;
.source "IMNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/a;->onNativeRequestFailed(Lcom/inmobi/monetization/IMErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMErrorCode;

.field final synthetic b:Lcom/inmobi/monetization/a;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/a;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/inmobi/monetization/a$a;->b:Lcom/inmobi/monetization/a;

    iput-object p2, p0, Lcom/inmobi/monetization/a$a;->a:Lcom/inmobi/monetization/IMErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/inmobi/monetization/a$a;->b:Lcom/inmobi/monetization/a;

    iget-object v0, v0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->d(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/inmobi/monetization/a$a;->b:Lcom/inmobi/monetization/a;

    iget-object v0, v0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->d(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/a$a;->a:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMNativeListener;->onNativeRequestFailed(Lcom/inmobi/monetization/IMErrorCode;)V

    .line 309
    :cond_0
    return-void
.end method
