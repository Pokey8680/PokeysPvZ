.class final Lorg/codegist/crest/serializer/simplexml/SimpleXmlFactory;
.super Ljava/lang/Object;
.source "SimpleXmlFactory.java"


# static fields
.field static final SERIALIZER:Ljava/lang/String; = "#serializer"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static createSerializer(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)Lorg/simpleframework/xml/Serializer;
    .locals 7
    .param p0, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/simpleframework/xml/Serializer;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#serializer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/Serializer;

    .line 46
    .local v2, "serializer":Lorg/simpleframework/xml/Serializer;
    if-eqz v2, :cond_0

    .line 55
    .end local v2    # "serializer":Lorg/simpleframework/xml/Serializer;
    :goto_0
    return-object v2

    .line 50
    .restart local v2    # "serializer":Lorg/simpleframework/xml/Serializer;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v1, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;>;"
    const-class v3, Ljava/util/Date;

    new-instance v4, Lorg/codegist/crest/serializer/simplexml/DateMatcher;

    invoke-interface {p0}, Lorg/codegist/crest/CRestConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/codegist/crest/serializer/simplexml/DateMatcher;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class v3, Ljava/lang/Boolean;

    new-instance v4, Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;

    invoke-interface {p0}, Lorg/codegist/crest/CRestConfig;->getBooleanTrue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lorg/codegist/crest/CRestConfig;->getBooleanFalse()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Boolean;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Lorg/simpleframework/xml/core/Persister;

    .end local v2    # "serializer":Lorg/simpleframework/xml/Serializer;
    new-instance v3, Lorg/codegist/crest/serializer/simplexml/MatcherRegistry;

    invoke-direct {v3, v1}, Lorg/codegist/crest/serializer/simplexml/MatcherRegistry;-><init>(Ljava/util/Map;)V

    invoke-direct {v2, v3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/transform/Matcher;)V

    goto :goto_0
.end method
