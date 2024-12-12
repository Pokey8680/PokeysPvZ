.class public abstract Lorg/restlet/routing/Route;
.super Lorg/restlet/routing/Filter;
.source "Route.java"


# instance fields
.field private volatile router:Lorg/restlet/routing/Router;


# direct methods
.method public constructor <init>(Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/restlet/routing/Route;-><init>(Lorg/restlet/routing/Router;Lorg/restlet/Restlet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/restlet/routing/Router;Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "router"    # Lorg/restlet/routing/Router;
    .param p2, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/routing/Router;->getContext()Lorg/restlet/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V

    .line 78
    iput-object p1, p0, Lorg/restlet/routing/Route;->router:Lorg/restlet/routing/Router;

    .line 79
    return-void

    .line 76
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRouter()Lorg/restlet/routing/Router;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/restlet/routing/Route;->router:Lorg/restlet/routing/Router;

    return-object v0
.end method

.method public abstract score(Lorg/restlet/Request;Lorg/restlet/Response;)F
.end method

.method public setRouter(Lorg/restlet/routing/Router;)V
    .locals 0
    .param p1, "router"    # Lorg/restlet/routing/Router;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/restlet/routing/Route;->router:Lorg/restlet/routing/Router;

    .line 109
    return-void
.end method
