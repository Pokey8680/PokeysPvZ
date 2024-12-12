.class public abstract Lorg/restlet/util/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 287
    .local p0, "this":Lorg/restlet/util/Resolver;, "Lorg/restlet/util/Resolver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createResolver(Ljava/util/Map;)Lorg/restlet/util/Resolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/restlet/util/Resolver",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Lorg/restlet/engine/util/MapResolver;

    invoke-direct {v0, p0}, Lorg/restlet/engine/util/MapResolver;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createResolver(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/util/Resolver;
    .locals 1
    .param p0, "request"    # Lorg/restlet/Request;
    .param p1, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Request;",
            "Lorg/restlet/Response;",
            ")",
            "Lorg/restlet/util/Resolver",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lorg/restlet/engine/util/CallResolver;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/util/CallResolver;-><init>(Lorg/restlet/Request;Lorg/restlet/Response;)V

    return-object v0
.end method


# virtual methods
.method public abstract resolve(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
