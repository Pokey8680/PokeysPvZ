.class public Lorg/restlet/engine/component/InternalRouter;
.super Lorg/restlet/routing/Router;
.source "InternalRouter.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p1}, Lorg/restlet/routing/Router;-><init>(Lorg/restlet/Context;)V

    .line 62
    invoke-virtual {p0, v0}, Lorg/restlet/engine/component/InternalRouter;->setDefaultMatchingMode(I)V

    .line 63
    invoke-virtual {p0, v0}, Lorg/restlet/engine/component/InternalRouter;->setRoutingMode(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public attach(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "uriPattern"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 98
    invoke-virtual {p2}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/restlet/engine/component/InternalRouter;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/restlet/routing/Router;->attach(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attach(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 89
    invoke-virtual {p1}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/restlet/engine/component/InternalRouter;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lorg/restlet/routing/Router;->attach(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attachDefault(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "defaultTarget"    # Lorg/restlet/Restlet;

    .prologue
    .line 107
    invoke-virtual {p1}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/restlet/engine/component/InternalRouter;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lorg/restlet/routing/Router;->attachDefault(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)",
            "Lorg/restlet/resource/Finder;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-super {p0, p1}, Lorg/restlet/routing/Router;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    .line 117
    .local v0, "result":Lorg/restlet/resource/Finder;
    invoke-virtual {p0}, Lorg/restlet/engine/component/InternalRouter;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/resource/Finder;->setContext(Lorg/restlet/Context;)V

    .line 118
    return-object v0
.end method

.method protected createRoute(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;
    .locals 2
    .param p1, "uriPattern"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/restlet/Restlet;
    .param p3, "matchingMode"    # I

    .prologue
    .line 69
    new-instance v0, Lorg/restlet/engine/component/InternalRouter$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lorg/restlet/engine/component/InternalRouter$1;-><init>(Lorg/restlet/engine/component/InternalRouter;Lorg/restlet/routing/Router;Ljava/lang/String;Lorg/restlet/Restlet;)V

    .line 82
    .local v0, "result":Lorg/restlet/routing/TemplateRoute;
    invoke-virtual {v0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/restlet/routing/Template;->setMatchingMode(I)V

    .line 83
    invoke-virtual {p0}, Lorg/restlet/engine/component/InternalRouter;->getDefaultMatchingQuery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/restlet/routing/TemplateRoute;->setMatchingQuery(Z)V

    .line 84
    return-object v0
.end method
