.class public abstract Lorg/restlet/routing/Filter;
.super Lorg/restlet/Restlet;
.source "Filter.java"


# static fields
.field public static final CONTINUE:I = 0x0

.field public static final SKIP:I = 0x1

.field public static final STOP:I = 0x2


# instance fields
.field private volatile next:Lorg/restlet/Restlet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/restlet/Restlet;-><init>(Lorg/restlet/Context;)V

    .line 112
    iput-object p2, p0, Lorg/restlet/routing/Filter;->next:Lorg/restlet/Restlet;

    .line 113
    return-void
.end method


# virtual methods
.method protected afterHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 0
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 126
    return-void
.end method

.method protected beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected doHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 162
    invoke-static {p2}, Lorg/restlet/Response;->setCurrent(Lorg/restlet/Response;)V

    .line 165
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getContext()Lorg/restlet/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/Context;->setCurrent(Lorg/restlet/Context;)V

    .line 177
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 169
    :cond_1
    sget-object v1, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 170
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was executed without a next Restlet attached to it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNext()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/restlet/routing/Filter;->next:Lorg/restlet/Restlet;

    return-object v0
.end method

.method public final handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 204
    invoke-virtual {p0, p1, p2}, Lorg/restlet/routing/Filter;->beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 206
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/restlet/routing/Filter;->doHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/restlet/routing/Filter;->afterHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto :goto_0

    .line 218
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/restlet/routing/Filter;->afterHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 206
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNext(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/routing/Filter;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/routing/Filter;->setNext(Lorg/restlet/Restlet;)V

    .line 248
    return-void
.end method

.method public setNext(Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 260
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V

    .line 264
    :cond_0
    iput-object p1, p0, Lorg/restlet/routing/Filter;->next:Lorg/restlet/Restlet;

    .line 265
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->start()V

    .line 277
    :cond_0
    invoke-super {p0}, Lorg/restlet/Restlet;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_1
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-super {p0}, Lorg/restlet/Restlet;->stop()V

    .line 289
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
