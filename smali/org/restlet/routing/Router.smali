.class public Lorg/restlet/routing/Router;
.super Lorg/restlet/Restlet;
.source "Router.java"


# static fields
.field public static final MODE_BEST_MATCH:I = 0x1

.field public static final MODE_CUSTOM:I = 0x6

.field public static final MODE_FIRST_MATCH:I = 0x2

.field public static final MODE_LAST_MATCH:I = 0x3

.field public static final MODE_NEXT_MATCH:I = 0x4

.field public static final MODE_RANDOM_MATCH:I = 0x5


# instance fields
.field private volatile defaultMatchingMode:I

.field private volatile defaultMatchingQuery:Z

.field private volatile defaultRoute:Lorg/restlet/routing/Route;

.field private volatile maxAttempts:I

.field private volatile requiredScore:F

.field private volatile retryDelay:J

.field private volatile routes:Lorg/restlet/util/RouteList;

.field private volatile routingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/routing/Router;-><init>(Lorg/restlet/Context;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 2
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    const/4 v1, 0x2

    .line 183
    invoke-direct {p0, p1}, Lorg/restlet/Restlet;-><init>(Lorg/restlet/Context;)V

    .line 184
    new-instance v0, Lorg/restlet/util/RouteList;

    invoke-direct {v0}, Lorg/restlet/util/RouteList;-><init>()V

    iput-object v0, p0, Lorg/restlet/routing/Router;->routes:Lorg/restlet/util/RouteList;

    .line 185
    iput v1, p0, Lorg/restlet/routing/Router;->defaultMatchingMode:I

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/routing/Router;->defaultMatchingQuery:Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/routing/Router;->defaultRoute:Lorg/restlet/routing/Route;

    .line 188
    iput v1, p0, Lorg/restlet/routing/Router;->routingMode:I

    .line 189
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/restlet/routing/Router;->requiredScore:F

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lorg/restlet/routing/Router;->maxAttempts:I

    .line 191
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lorg/restlet/routing/Router;->retryDelay:J

    .line 192
    return-void
.end method


# virtual methods
.method public attach(Ljava/lang/String;Ljava/lang/Class;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "pathTemplate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)",
            "Lorg/restlet/routing/TemplateRoute;"
        }
    .end annotation

    .prologue
    .line 237
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-virtual {p0, p2}, Lorg/restlet/routing/Router;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/routing/Router;->attach(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/lang/String;Ljava/lang/Class;I)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "pathTemplate"    # Ljava/lang/String;
    .param p3, "matchingMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;I)",
            "Lorg/restlet/routing/TemplateRoute;"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-virtual {p0, p2}, Lorg/restlet/routing/Router;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/restlet/routing/Router;->attach(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "pathTemplate"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 273
    invoke-virtual {p0, p2}, Lorg/restlet/routing/Router;->getMatchingMode(Lorg/restlet/Restlet;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/routing/Router;->attach(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;
    .locals 2
    .param p1, "pathTemplate"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/restlet/Restlet;
    .param p3, "matchingMode"    # I

    .prologue
    .line 292
    invoke-virtual {p0, p1, p2, p3}, Lorg/restlet/routing/Router;->createRoute(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    .line 293
    .local v0, "result":Lorg/restlet/routing/TemplateRoute;
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/restlet/util/RouteList;->add(Ljava/lang/Object;)Z

    .line 294
    return-object v0
.end method

.method public attach(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lorg/restlet/routing/Router;->getMatchingMode(Lorg/restlet/Restlet;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/routing/Router;->attach(Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attach(Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "target"    # Lorg/restlet/Restlet;
    .param p2, "matchingMode"    # I

    .prologue
    .line 219
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lorg/restlet/routing/Router;->attach(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attachDefault(Ljava/lang/Class;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)",
            "Lorg/restlet/routing/TemplateRoute;"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "defaultTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/routing/Router;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/routing/Router;->attachDefault(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attachDefault(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 2
    .param p1, "defaultTarget"    # Lorg/restlet/Restlet;

    .prologue
    .line 321
    const-string v1, ""

    invoke-virtual {p0, v1, p1}, Lorg/restlet/routing/Router;->createRoute(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    .line 322
    .local v0, "result":Lorg/restlet/routing/TemplateRoute;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/restlet/routing/TemplateRoute;->setMatchingMode(I)V

    .line 323
    invoke-virtual {p0, v0}, Lorg/restlet/routing/Router;->setDefaultRoute(Lorg/restlet/routing/Route;)V

    .line 324
    return-object v0
.end method

.method protected createRoute(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "uriPattern"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 341
    invoke-virtual {p0, p2}, Lorg/restlet/routing/Router;->getMatchingMode(Lorg/restlet/Restlet;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/routing/Router;->createRoute(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method protected createRoute(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;
    .locals 2
    .param p1, "uriPattern"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/restlet/Restlet;
    .param p3, "matchingMode"    # I

    .prologue
    .line 360
    new-instance v0, Lorg/restlet/routing/TemplateRoute;

    invoke-direct {v0, p0, p1, p2}, Lorg/restlet/routing/TemplateRoute;-><init>(Lorg/restlet/routing/Router;Ljava/lang/String;Lorg/restlet/Restlet;)V

    .line 361
    .local v0, "result":Lorg/restlet/routing/TemplateRoute;
    invoke-virtual {v0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/restlet/routing/Template;->setMatchingMode(I)V

    .line 362
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultMatchingQuery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/restlet/routing/TemplateRoute;->setMatchingQuery(Z)V

    .line 363
    return-object v0
.end method

.method public detach(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/util/RouteList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 376
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/restlet/util/RouteList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/routing/Route;

    invoke-virtual {v3}, Lorg/restlet/routing/Route;->getNext()Lorg/restlet/Restlet;

    move-result-object v2

    .line 378
    .local v2, "target":Lorg/restlet/Restlet;
    if-eqz v2, :cond_0

    const-class v3, Lorg/restlet/resource/Finder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 380
    check-cast v0, Lorg/restlet/resource/Finder;

    .line 382
    .local v0, "finder":Lorg/restlet/resource/Finder;
    invoke-virtual {v0}, Lorg/restlet/resource/Finder;->getTargetClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/restlet/util/RouteList;->remove(I)Ljava/lang/Object;

    .line 375
    .end local v0    # "finder":Lorg/restlet/resource/Finder;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 388
    .end local v2    # "target":Lorg/restlet/Restlet;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 389
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/routing/Route;->getNext()Lorg/restlet/Restlet;

    move-result-object v2

    .line 391
    .restart local v2    # "target":Lorg/restlet/Restlet;
    if-eqz v2, :cond_2

    const-class v3, Lorg/restlet/resource/Finder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 393
    check-cast v0, Lorg/restlet/resource/Finder;

    .line 395
    .restart local v0    # "finder":Lorg/restlet/resource/Finder;
    invoke-virtual {v0}, Lorg/restlet/resource/Finder;->getTargetClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/restlet/routing/Router;->setDefaultRoute(Lorg/restlet/routing/Route;)V

    .line 400
    .end local v0    # "finder":Lorg/restlet/resource/Finder;
    .end local v2    # "target":Lorg/restlet/Restlet;
    :cond_2
    return-void
.end method

.method public detach(Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 411
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/RouteList;->removeAll(Lorg/restlet/Restlet;)V

    .line 412
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/routing/Route;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/routing/Router;->setDefaultRoute(Lorg/restlet/routing/Route;)V

    .line 416
    :cond_0
    return-void
.end method

.method protected doHandle(Lorg/restlet/Restlet;Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 0
    .param p1, "next"    # Lorg/restlet/Restlet;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    .line 431
    invoke-virtual {p1, p2, p3}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 432
    return-void
.end method

.method protected getCustom(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/routing/Route;
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultMatchingMode()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lorg/restlet/routing/Router;->defaultMatchingMode:I

    return v0
.end method

.method public getDefaultMatchingQuery()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lorg/restlet/routing/Router;->defaultMatchingQuery:Z

    return v0
.end method

.method public getDefaultRoute()Lorg/restlet/routing/Route;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/restlet/routing/Router;->defaultRoute:Lorg/restlet/routing/Route;

    return-object v0
.end method

.method protected getMatchingMode(Lorg/restlet/Restlet;)I
    .locals 2
    .param p1, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 494
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultMatchingMode()I

    move-result v0

    .line 496
    .local v0, "result":I
    instance-of v1, p1, Lorg/restlet/resource/Directory;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/restlet/routing/Router;

    if-eqz v1, :cond_2

    .line 497
    :cond_0
    const/4 v0, 0x1

    .line 502
    .end local p1    # "target":Lorg/restlet/Restlet;
    :cond_1
    :goto_0
    return v0

    .line 498
    .restart local p1    # "target":Lorg/restlet/Restlet;
    :cond_2
    instance-of v1, p1, Lorg/restlet/routing/Filter;

    if-eqz v1, :cond_1

    .line 499
    check-cast p1, Lorg/restlet/routing/Filter;

    .end local p1    # "target":Lorg/restlet/Restlet;
    invoke-virtual {p1}, Lorg/restlet/routing/Filter;->getNext()Lorg/restlet/Restlet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/routing/Router;->getMatchingMode(Lorg/restlet/Restlet;)I

    move-result v0

    goto :goto_0
.end method

.method public getMaxAttempts()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lorg/restlet/routing/Router;->maxAttempts:I

    return v0
.end method

.method public getNext(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/Restlet;
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 528
    const/4 v1, 0x0

    .line 530
    .local v1, "result":Lorg/restlet/routing/Route;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getMaxAttempts()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 531
    if-lez v0, :cond_0

    .line 535
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRetryDelay()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/restlet/routing/Router;->routes:Lorg/restlet/util/RouteList;

    if-eqz v2, :cond_1

    .line 542
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutingMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 530
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :pswitch_0
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRequiredScore()F

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Lorg/restlet/util/RouteList;->getBest(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;

    move-result-object v1

    .line 546
    goto :goto_2

    .line 549
    :pswitch_1
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRequiredScore()F

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Lorg/restlet/util/RouteList;->getFirst(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;

    move-result-object v1

    .line 551
    goto :goto_2

    .line 554
    :pswitch_2
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRequiredScore()F

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Lorg/restlet/util/RouteList;->getLast(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;

    move-result-object v1

    .line 556
    goto :goto_2

    .line 559
    :pswitch_3
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRequiredScore()F

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Lorg/restlet/util/RouteList;->getNext(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;

    move-result-object v1

    .line 561
    goto :goto_2

    .line 564
    :pswitch_4
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRequiredScore()F

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Lorg/restlet/util/RouteList;->getRandom(Lorg/restlet/Request;Lorg/restlet/Response;F)Lorg/restlet/routing/Route;

    move-result-object v1

    .line 566
    goto :goto_2

    .line 569
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/restlet/routing/Router;->getCustom(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/routing/Route;

    move-result-object v1

    goto :goto_2

    .line 575
    :cond_2
    if-nez v1, :cond_3

    .line 578
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/restlet/routing/Route;->score(Lorg/restlet/Request;Lorg/restlet/Response;)F

    move-result v2

    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRequiredScore()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 580
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v1

    .line 587
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    invoke-virtual {p0, v1}, Lorg/restlet/routing/Router;->logRoute(Lorg/restlet/routing/Route;)V

    .line 591
    :cond_4
    return-object v1

    .line 583
    :cond_5
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p2, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_3

    .line 536
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 542
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getRequiredScore()F
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lorg/restlet/routing/Router;->requiredScore:F

    return v0
.end method

.method public getRetryDelay()J
    .locals 2

    .prologue
    .line 611
    iget-wide v0, p0, Lorg/restlet/routing/Router;->retryDelay:J

    return-wide v0
.end method

.method public getRoutes()Lorg/restlet/util/RouteList;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/restlet/routing/Router;->routes:Lorg/restlet/util/RouteList;

    return-object v0
.end method

.method public getRoutingMode()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lorg/restlet/routing/Router;->routingMode:I

    return v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 644
    invoke-super {p0, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 645
    invoke-virtual {p0, p1, p2}, Lorg/restlet/routing/Router;->getNext(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/Restlet;

    move-result-object v0

    .line 647
    .local v0, "next":Lorg/restlet/Restlet;
    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0, v0, p1, p2}, Lorg/restlet/routing/Router;->doHandle(Lorg/restlet/Restlet;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method protected logRoute(Lorg/restlet/routing/Route;)V
    .locals 3
    .param p1, "route"    # Lorg/restlet/routing/Route;

    .prologue
    .line 661
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 663
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "The default route was selected"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultMatchingMode(I)V
    .locals 0
    .param p1, "defaultMatchingMode"    # I

    .prologue
    .line 678
    iput p1, p0, Lorg/restlet/routing/Router;->defaultMatchingMode:I

    .line 679
    return-void
.end method

.method public setDefaultMatchingQuery(Z)V
    .locals 0
    .param p1, "defaultMatchingQuery"    # Z

    .prologue
    .line 692
    iput-boolean p1, p0, Lorg/restlet/routing/Router;->defaultMatchingQuery:Z

    .line 693
    return-void
.end method

.method public setDefaultRoute(Lorg/restlet/routing/Route;)V
    .locals 0
    .param p1, "defaultRoute"    # Lorg/restlet/routing/Route;

    .prologue
    .line 702
    iput-object p1, p0, Lorg/restlet/routing/Router;->defaultRoute:Lorg/restlet/routing/Route;

    .line 703
    return-void
.end method

.method public setMaxAttempts(I)V
    .locals 0
    .param p1, "maxAttempts"    # I

    .prologue
    .line 714
    iput p1, p0, Lorg/restlet/routing/Router;->maxAttempts:I

    .line 715
    return-void
.end method

.method public setRequiredScore(F)V
    .locals 0
    .param p1, "score"    # F

    .prologue
    .line 725
    iput p1, p0, Lorg/restlet/routing/Router;->requiredScore:F

    .line 726
    return-void
.end method

.method public setRetryDelay(J)V
    .locals 1
    .param p1, "retryDelay"    # J

    .prologue
    .line 736
    iput-wide p1, p0, Lorg/restlet/routing/Router;->retryDelay:J

    .line 737
    return-void
.end method

.method public setRoutes(Lorg/restlet/util/RouteList;)V
    .locals 0
    .param p1, "routes"    # Lorg/restlet/util/RouteList;

    .prologue
    .line 746
    iput-object p1, p0, Lorg/restlet/routing/Router;->routes:Lorg/restlet/util/RouteList;

    .line 747
    return-void
.end method

.method public setRoutingMode(I)V
    .locals 0
    .param p1, "routingMode"    # I

    .prologue
    .line 757
    iput p1, p0, Lorg/restlet/routing/Router;->routingMode:I

    .line 758
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 765
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 766
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/util/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Route;

    .line 767
    .local v1, "route":Lorg/restlet/routing/Route;
    invoke-virtual {v1}, Lorg/restlet/routing/Route;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 765
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "route":Lorg/restlet/routing/Route;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 770
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 771
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/routing/Route;->start()V

    .line 774
    :cond_1
    invoke-super {p0}, Lorg/restlet/Restlet;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 783
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 784
    invoke-super {p0}, Lorg/restlet/Restlet;->stop()V

    .line 786
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 787
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getDefaultRoute()Lorg/restlet/routing/Route;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/routing/Route;->stop()V

    .line 790
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/routing/Router;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/util/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Route;

    .line 791
    .local v1, "route":Lorg/restlet/routing/Route;
    invoke-virtual {v1}, Lorg/restlet/routing/Route;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 783
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "route":Lorg/restlet/routing/Route;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 794
    :cond_1
    monitor-exit p0

    return-void
.end method
