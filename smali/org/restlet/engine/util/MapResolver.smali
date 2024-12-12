.class public Lorg/restlet/engine/util/MapResolver;
.super Lorg/restlet/util/Resolver;
.source "MapResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/Resolver",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Lorg/restlet/util/Resolver;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/restlet/engine/util/MapResolver;->map:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "variableName"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/restlet/engine/util/MapResolver;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
