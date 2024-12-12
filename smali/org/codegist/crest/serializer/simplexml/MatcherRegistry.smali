.class final Lorg/codegist/crest/serializer/simplexml/MatcherRegistry;
.super Ljava/lang/Object;
.source "MatcherRegistry.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# instance fields
.field private final transformerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lorg/simpleframework/xml/transform/Transform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lorg/simpleframework/xml/transform/Transform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "transformerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/codegist/crest/serializer/simplexml/MatcherRegistry;->transformerMap:Ljava/util/Map;

    .line 35
    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/codegist/crest/serializer/simplexml/MatcherRegistry;->transformerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/transform/Transform;

    return-object v0
.end method
