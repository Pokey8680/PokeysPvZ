.class public final Lorg/restlet/util/RouteList;
.super Lorg/restlet/util/WrapperList;
.source "RouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/WrapperList",
        "<",
        "Lorg/restlet/routing/Route;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile lastIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/restlet/util/RouteList;->lastIndex:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/Route;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "delegate":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Route;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lorg/restlet/util/RouteList;->lastIndex:I

    .line 80
    return-void
.end method


# virtual methods
.method public getBest(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "requiredScore"    # F

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, "result":Lorg/restlet/routing/Route;
    const/4 v0, 0x0

    .line 98
    .local v0, "bestScore":F
    invoke-virtual {p0}, Lorg/restlet/util/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Route;

    .line 99
    .local v1, "current":Lorg/restlet/routing/Route;
    invoke-virtual {v1, p1, p2}, Lorg/restlet/routing/Route;->score(Lorg/restlet/Request;Lorg/restlet/Response;)F

    move-result v4

    .line 101
    .local v4, "score":F
    cmpl-float v5, v4, v0

    if-lez v5, :cond_0

    cmpl-float v5, v4, p3

    if-ltz v5, :cond_0

    .line 102
    move v0, v4

    .line 103
    move-object v3, v1

    goto :goto_0

    .line 107
    .end local v1    # "current":Lorg/restlet/routing/Route;
    .end local v4    # "score":F
    :cond_1
    return-object v3
.end method

.method public getFirst(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;
    .locals 3
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "requiredScore"    # F

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/restlet/util/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/routing/Route;

    .line 124
    .local v0, "current":Lorg/restlet/routing/Route;
    invoke-virtual {v0, p1, p2}, Lorg/restlet/routing/Route;->score(Lorg/restlet/Request;Lorg/restlet/Response;)F

    move-result v2

    cmpl-float v2, v2, p3

    if-ltz v2, :cond_0

    .line 130
    .end local v0    # "current":Lorg/restlet/routing/Route;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLast(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;
    .locals 3
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "requiredScore"    # F

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/util/RouteList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lorg/restlet/util/RouteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Route;

    .line 148
    .local v1, "route":Lorg/restlet/routing/Route;
    invoke-virtual {v1, p1, p2}, Lorg/restlet/routing/Route;->score(Lorg/restlet/Request;Lorg/restlet/Response;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    cmpl-float v2, v2, p3

    if-ltz v2, :cond_0

    .line 154
    .end local v1    # "route":Lorg/restlet/routing/Route;
    :goto_1
    monitor-exit p0

    return-object v1

    .line 146
    .restart local v1    # "route":Lorg/restlet/routing/Route;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 154
    .end local v1    # "route":Lorg/restlet/routing/Route;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 146
    .end local v0    # "j":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getNext(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "requiredScore"    # F

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/util/RouteList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 171
    iget v0, p0, Lorg/restlet/util/RouteList;->lastIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/restlet/util/RouteList;->lastIndex:I

    .local v0, "initialIndex":I
    :goto_0
    iget v2, p0, Lorg/restlet/util/RouteList;->lastIndex:I

    if-eq v0, v2, :cond_2

    .line 172
    iget v2, p0, Lorg/restlet/util/RouteList;->lastIndex:I

    invoke-virtual {p0}, Lorg/restlet/util/RouteList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 173
    const/4 v2, 0x0

    iput v2, p0, Lorg/restlet/util/RouteList;->lastIndex:I

    .line 176
    :cond_0
    iget v2, p0, Lorg/restlet/util/RouteList;->lastIndex:I

    invoke-virtual {p0, v2}, Lorg/restlet/util/RouteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Route;

    .line 177
    .local v1, "route":Lorg/restlet/routing/Route;
    invoke-virtual {v1, p1, p2}, Lorg/restlet/routing/Route;->score(Lorg/restlet/Request;Lorg/restlet/Response;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    cmpl-float v2, v2, p3

    if-ltz v2, :cond_1

    .line 184
    .end local v0    # "initialIndex":I
    .end local v1    # "route":Lorg/restlet/routing/Route;
    :goto_1
    monitor-exit p0

    return-object v1

    .line 171
    .restart local v0    # "initialIndex":I
    .restart local v1    # "route":Lorg/restlet/routing/Route;
    :cond_1
    :try_start_1
    iget v2, p0, Lorg/restlet/util/RouteList;->lastIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/restlet/util/RouteList;->lastIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v0    # "initialIndex":I
    .end local v1    # "route":Lorg/restlet/routing/Route;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 184
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getRandom(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "requiredScore"    # F

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/util/RouteList;->size()I

    move-result v2

    .line 204
    .local v2, "length":I
    if-lez v2, :cond_3

    .line 205
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 206
    .local v0, "j":I
    invoke-virtual {p0, v0}, Lorg/restlet/util/RouteList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/routing/Route;

    .line 208
    .local v4, "route":Lorg/restlet/routing/Route;
    invoke-virtual {v4, p1, p2}, Lorg/restlet/routing/Route;->score(Lorg/restlet/Request;Lorg/restlet/Response;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    cmpl-float v5, v5, p3

    if-ltz v5, :cond_1

    .line 229
    .end local v0    # "j":I
    .end local v4    # "route":Lorg/restlet/routing/Route;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 212
    .restart local v0    # "j":I
    .restart local v4    # "route":Lorg/restlet/routing/Route;
    :cond_1
    const/4 v3, 0x0

    .line 215
    .local v3, "loopedAround":Z
    :cond_2
    if-ne v0, v2, :cond_4

    if-nez v3, :cond_4

    .line 216
    const/4 v0, 0x0

    .line 217
    const/4 v3, 0x1

    move v1, v0

    .line 220
    .end local v0    # "j":I
    .local v1, "j":I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "j":I
    .restart local v0    # "j":I
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/restlet/util/RouteList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "route":Lorg/restlet/routing/Route;
    check-cast v4, Lorg/restlet/routing/Route;

    .line 222
    .restart local v4    # "route":Lorg/restlet/routing/Route;
    invoke-virtual {v4, p1, p2}, Lorg/restlet/routing/Route;->score(Lorg/restlet/Request;Lorg/restlet/Response;)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    cmpl-float v5, v5, p3

    if-gez v5, :cond_0

    .line 225
    if-lt v0, v2, :cond_2

    if-eqz v3, :cond_2

    .line 229
    .end local v0    # "j":I
    .end local v3    # "loopedAround":Z
    .end local v4    # "route":Lorg/restlet/routing/Route;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 202
    .end local v2    # "length":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v0    # "j":I
    .restart local v2    # "length":I
    .restart local v3    # "loopedAround":Z
    .restart local v4    # "route":Lorg/restlet/routing/Route;
    :cond_4
    move v1, v0

    .end local v0    # "j":I
    .restart local v1    # "j":I
    goto :goto_1
.end method

.method public declared-synchronized removeAll(Lorg/restlet/Restlet;)V
    .locals 2
    .param p1, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/util/RouteList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 240
    invoke-virtual {p0, v0}, Lorg/restlet/util/RouteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Route;

    invoke-virtual {v1}, Lorg/restlet/routing/Route;->getNext()Lorg/restlet/Restlet;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 241
    invoke-virtual {p0, v0}, Lorg/restlet/util/RouteList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 244
    :cond_1
    monitor-exit p0

    return-void

    .line 239
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lorg/restlet/util/RouteList;->subList(II)Lorg/restlet/util/RouteList;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lorg/restlet/util/RouteList;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 258
    new-instance v0, Lorg/restlet/util/RouteList;

    invoke-virtual {p0}, Lorg/restlet/util/RouteList;->getDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/util/RouteList;-><init>(Ljava/util/List;)V

    return-object v0
.end method
