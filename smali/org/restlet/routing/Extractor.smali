.class public Lorg/restlet/routing/Extractor;
.super Lorg/restlet/routing/Filter;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/routing/Extractor$ExtractInfo;
    }
.end annotation


# instance fields
.field private volatile cookieExtracts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/Extractor$ExtractInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile entityExtracts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/Extractor$ExtractInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile queryExtracts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/Extractor$ExtractInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/routing/Extractor;-><init>(Lorg/restlet/Context;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/routing/Extractor;-><init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V

    .line 125
    return-void
.end method

.method private getCookieExtracts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/Extractor$ExtractInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lorg/restlet/routing/Extractor;->cookieExtracts:Ljava/util/List;

    .line 261
    .local v0, "ce":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    if-nez v0, :cond_1

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lorg/restlet/routing/Extractor;->cookieExtracts:Ljava/util/List;

    .line 264
    if-nez v0, :cond_0

    .line 265
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "ce":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .local v1, "ce":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/routing/Extractor;->cookieExtracts:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 267
    .end local v1    # "ce":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .restart local v0    # "ce":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 269
    :cond_1
    return-object v0

    .line 267
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "ce":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .restart local v1    # "ce":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "ce":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .restart local v0    # "ce":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    goto :goto_0
.end method

.method private getEntityExtracts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/Extractor$ExtractInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lorg/restlet/routing/Extractor;->entityExtracts:Ljava/util/List;

    .line 280
    .local v0, "ee":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    if-nez v0, :cond_1

    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lorg/restlet/routing/Extractor;->entityExtracts:Ljava/util/List;

    .line 283
    if-nez v0, :cond_0

    .line 284
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "ee":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .local v1, "ee":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/routing/Extractor;->entityExtracts:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 286
    .end local v1    # "ee":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .restart local v0    # "ee":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 288
    :cond_1
    return-object v0

    .line 286
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "ee":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .restart local v1    # "ee":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "ee":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .restart local v0    # "ee":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    goto :goto_0
.end method

.method private getQueryExtracts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/Extractor$ExtractInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lorg/restlet/routing/Extractor;->queryExtracts:Ljava/util/List;

    .line 299
    .local v0, "qe":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    if-nez v0, :cond_1

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lorg/restlet/routing/Extractor;->queryExtracts:Ljava/util/List;

    .line 302
    if-nez v0, :cond_0

    .line 303
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "qe":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .local v1, "qe":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/routing/Extractor;->queryExtracts:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 305
    .end local v1    # "qe":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .restart local v0    # "qe":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 307
    :cond_1
    return-object v0

    .line 305
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "qe":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .restart local v1    # "qe":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "qe":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    .restart local v0    # "qe":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Extractor$ExtractInfo;>;"
    goto :goto_0
.end method


# virtual methods
.method protected beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 9
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/restlet/routing/Extractor;->getQueryExtracts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 143
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/data/Reference;->getQueryAsForm()Lorg/restlet/data/Form;

    move-result-object v3

    .line 145
    .local v3, "form":Lorg/restlet/data/Form;
    if-eqz v3, :cond_2

    .line 146
    invoke-direct {p0}, Lorg/restlet/routing/Extractor;->getQueryExtracts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Extractor$ExtractInfo;

    .line 147
    .local v1, "ei":Lorg/restlet/routing/Extractor$ExtractInfo;
    iget-boolean v6, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->first:Z

    if-eqz v6, :cond_1

    .line 148
    iget-object v6, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->parameter:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/restlet/data/Form;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 151
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget-object v7, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->attribute:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget-object v7, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->attribute:Ljava/lang/String;

    iget-object v8, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->parameter:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/restlet/data/Form;->subList(Ljava/lang/String;)Lorg/restlet/util/Series;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    .end local v1    # "ei":Lorg/restlet/routing/Extractor$ExtractInfo;
    .end local v3    # "form":Lorg/restlet/data/Form;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lorg/restlet/routing/Extractor;->getEntityExtracts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 163
    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    .line 164
    .local v2, "entity":Lorg/restlet/representation/Representation;
    if-eqz v2, :cond_5

    .line 165
    new-instance v3, Lorg/restlet/data/Form;

    invoke-direct {v3, v2}, Lorg/restlet/data/Form;-><init>(Lorg/restlet/representation/Representation;)V

    .line 167
    .restart local v3    # "form":Lorg/restlet/data/Form;
    invoke-direct {p0}, Lorg/restlet/routing/Extractor;->getEntityExtracts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Extractor$ExtractInfo;

    .line 168
    .restart local v1    # "ei":Lorg/restlet/routing/Extractor$ExtractInfo;
    iget-boolean v6, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->first:Z

    if-eqz v6, :cond_4

    .line 169
    iget-object v6, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->parameter:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/restlet/data/Form;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 172
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget-object v7, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->attribute:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 175
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget-object v7, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->attribute:Ljava/lang/String;

    iget-object v8, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->parameter:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/restlet/data/Form;->subList(Ljava/lang/String;)Lorg/restlet/util/Series;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 183
    .end local v1    # "ei":Lorg/restlet/routing/Extractor$ExtractInfo;
    .end local v2    # "entity":Lorg/restlet/representation/Representation;
    .end local v3    # "form":Lorg/restlet/data/Form;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0}, Lorg/restlet/routing/Extractor;->getCookieExtracts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 184
    invoke-virtual {p1}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v0

    .line 186
    .local v0, "cookies":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    if-eqz v0, :cond_8

    .line 187
    invoke-direct {p0}, Lorg/restlet/routing/Extractor;->getCookieExtracts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Extractor$ExtractInfo;

    .line 188
    .restart local v1    # "ei":Lorg/restlet/routing/Extractor$ExtractInfo;
    iget-boolean v6, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->first:Z

    if-eqz v6, :cond_7

    .line 189
    iget-object v6, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->parameter:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 192
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget-object v7, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->attribute:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 195
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget-object v7, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->attribute:Ljava/lang/String;

    iget-object v8, v1, Lorg/restlet/routing/Extractor$ExtractInfo;->parameter:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/restlet/util/Series;->subList(Ljava/lang/String;)Lorg/restlet/util/Series;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 202
    .end local v0    # "cookies":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    .end local v1    # "ei":Lorg/restlet/routing/Extractor$ExtractInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    const/4 v6, 0x0

    return v6
.end method

.method public extractFromCookie(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "cookieName"    # Ljava/lang/String;
    .param p3, "first"    # Z

    .prologue
    .line 218
    invoke-direct {p0}, Lorg/restlet/routing/Extractor;->getCookieExtracts()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/routing/Extractor$ExtractInfo;

    invoke-direct {v1, p1, p2, p3}, Lorg/restlet/routing/Extractor$ExtractInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public extractFromEntity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "first"    # Z

    .prologue
    .line 234
    invoke-direct {p0}, Lorg/restlet/routing/Extractor;->getEntityExtracts()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/routing/Extractor$ExtractInfo;

    invoke-direct {v1, p1, p2, p3}, Lorg/restlet/routing/Extractor$ExtractInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public extractFromQuery(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "first"    # Z

    .prologue
    .line 250
    invoke-direct {p0}, Lorg/restlet/routing/Extractor;->getQueryExtracts()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/routing/Extractor$ExtractInfo;

    invoke-direct {v1, p1, p2, p3}, Lorg/restlet/routing/Extractor$ExtractInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method
