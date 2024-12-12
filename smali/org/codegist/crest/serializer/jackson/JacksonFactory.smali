.class final Lorg/codegist/crest/serializer/jackson/JacksonFactory;
.super Ljava/lang/Object;
.source "JacksonFactory.java"


# static fields
.field private static final DEFAULT_DESERIALIZER_CONFIG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationConfig$Feature;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_SERIALIZER_CONFIG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/codehaus/jackson/map/SerializationConfig$Feature;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final JACKSON_DESERIALIZER_CONFIG:Ljava/lang/String; = "#deserializer-config"

.field static final JACKSON_OBJECT_MAPPER:Ljava/lang/String; = "#user-object-mapper"

.field static final JACKSON_SERIALIZER_CONFIG:Ljava/lang/String; = "#serializer-config"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codegist/crest/serializer/jackson/JacksonFactory;->DEFAULT_SERIALIZER_CONFIG:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codegist/crest/serializer/jackson/JacksonFactory;->DEFAULT_DESERIALIZER_CONFIG:Ljava/util/Map;

    .line 40
    sget-object v0, Lorg/codegist/crest/serializer/jackson/JacksonFactory;->DEFAULT_DESERIALIZER_CONFIG:Ljava/util/Map;

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static createObjectMapper(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 10
    .param p0, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectMapper;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "prefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#user-object-mapper"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/ObjectMapper;

    .line 51
    .local v4, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 67
    .end local v4    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    .local v5, "mapper":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 55
    .end local v5    # "mapper":Ljava/lang/Object;
    .restart local v4    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    :cond_0
    new-instance v4, Lorg/codehaus/jackson/map/ObjectMapper;

    .end local v4    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-direct {v4}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 57
    .restart local v4    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#deserializer-config"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/codegist/crest/serializer/jackson/JacksonFactory;->DEFAULT_DESERIALIZER_CONFIG:Ljava/util/Map;

    invoke-interface {p0, v8, v9}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 58
    .local v0, "deserConfig":Ljava/util/Map;, "Ljava/util/Map<Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    .local v1, "feature":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    goto :goto_1

    .line 62
    .end local v1    # "feature":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Ljava/lang/Boolean;>;"
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#serializer-config"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/codegist/crest/serializer/jackson/JacksonFactory;->DEFAULT_SERIALIZER_CONFIG:Ljava/util/Map;

    invoke-interface {p0, v8, v9}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 63
    .local v7, "serConfig":Ljava/util/Map;, "Ljava/util/Map<Lorg/codehaus/jackson/map/SerializationConfig$Feature;Ljava/lang/Boolean;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    .local v2, "feature":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/codehaus/jackson/map/SerializationConfig$Feature;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    goto :goto_2

    .end local v2    # "feature":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/codehaus/jackson/map/SerializationConfig$Feature;Ljava/lang/Boolean;>;"
    :cond_2
    move-object v5, v4

    .line 67
    .restart local v5    # "mapper":Ljava/lang/Object;
    goto/16 :goto_0
.end method
