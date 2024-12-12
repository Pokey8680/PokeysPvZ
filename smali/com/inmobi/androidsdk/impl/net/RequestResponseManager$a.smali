.class Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$a;
.super Ljava/lang/Thread;
.source "RequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->doCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$a;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$a;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "[InMobi]-[Network]-4.4.3"

    const-string v2, "Exception in closing connection "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
