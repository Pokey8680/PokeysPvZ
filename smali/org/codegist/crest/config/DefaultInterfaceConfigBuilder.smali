.class Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;
.super Lorg/codegist/crest/config/ConfigBuilder;
.source "DefaultInterfaceConfigBuilder.java"

# interfaces
.implements Lorg/codegist/crest/config/InterfaceConfigBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;
    }
.end annotation


# instance fields
.field private final interfaze:Ljava/lang/Class;

.field private final methodBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lorg/codegist/crest/config/MethodConfigBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Lorg/codegist/crest/util/ComponentRegistry;)V
    .locals 10
    .param p1, "interfaze"    # Ljava/lang/Class;
    .param p2, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lorg/codegist/crest/CRestConfig;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "mimeDeserializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/String;Lorg/codegist/crest/serializer/Deserializer;>;"
    .local p4, "classSerializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<*>;Lorg/codegist/crest/serializer/Serializer;>;"
    invoke-direct {p0, p2}, Lorg/codegist/crest/config/ConfigBuilder;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 48
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->interfaze:Ljava/lang/Class;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/reflect/Method;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, v6, v7

    .line 51
    .local v2, "m":Ljava/lang/reflect/Method;
    iget-object v9, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    new-instance v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;-><init>(Lorg/codegist/crest/config/InterfaceConfigBuilder;Ljava/lang/reflect/Method;Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Lorg/codegist/crest/util/ComponentRegistry;)V

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method


# virtual methods
.method public appendMethodsPath(Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 158
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->appendPath(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 160
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public build()Lorg/codegist/crest/config/InterfaceConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v2, "mConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lorg/codegist/crest/config/MethodConfig;>;"
    iget-object v3, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lorg/codegist/crest/config/MethodConfigBuilder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codegist/crest/config/MethodConfigBuilder;

    invoke-interface {v3}, Lorg/codegist/crest/config/MethodConfigBuilder;->build()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lorg/codegist/crest/config/MethodConfigBuilder;>;"
    :cond_0
    new-instance v3, Lorg/codegist/crest/config/DefaultInterfaceConfig;

    iget-object v4, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->interfaze:Ljava/lang/Class;

    invoke-direct {v3, v4, v2}, Lorg/codegist/crest/config/DefaultInterfaceConfig;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-object v3
.end method

.method public setMethodsCharset(Ljava/nio/charset/Charset;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 71
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 72
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 74
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsConnectionTimeout(I)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 85
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 86
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setConnectionTimeout(I)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 88
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public varargs setMethodsConsumes([Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 128
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 129
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setConsumes([Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 131
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsDeserializer(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "deserializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 136
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setDeserializer(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 138
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsEndPoint(Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "endPoint"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 165
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setEndPoint(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 167
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsEntityWriter(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/entity/EntityWriter;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "entityWriterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/entity/EntityWriter;>;"
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 121
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setEntityWriter(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 123
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsErrorHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ErrorHandler;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "errorHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/handler/ErrorHandler;>;"
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 107
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setErrorHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 109
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsProduces(Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 143
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setProduces(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 145
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsRequestInterceptor(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/interceptor/RequestInterceptor;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "requestInterceptorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/interceptor/RequestInterceptor;>;"
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 93
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setRequestInterceptor(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 95
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsResponseHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ResponseHandler;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "responseHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/handler/ResponseHandler;>;"
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 100
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setResponseHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 102
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsRetryHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/RetryHandler;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "retryHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/handler/RetryHandler;>;"
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 114
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setRetryHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 116
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsSocketTimeout(I)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "socketTimeout"    # I

    .prologue
    .line 78
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 79
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setSocketTimeout(I)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 81
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setMethodsType(Lorg/codegist/crest/config/MethodType;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "meth"    # Lorg/codegist/crest/config/MethodType;

    .prologue
    .line 149
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 150
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setType(Lorg/codegist/crest/config/MethodType;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 152
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setParamsEncoded(Z)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "encoded"    # Z

    .prologue
    .line 192
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 193
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setParamsEncoded(Z)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 195
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setParamsListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 200
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setParamsListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 202
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setParamsSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "paramSerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Serializer;>;"
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 186
    .local v0, "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/MethodConfigBuilder;->setParamsSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;

    goto :goto_0

    .line 188
    .end local v0    # "b":Lorg/codegist/crest/config/MethodConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public startMethodConfig(Ljava/lang/reflect/Method;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 1
    .param p1, "meth"    # Ljava/lang/reflect/Method;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfigBuilder;

    return-object v0
.end method

.method public startMethodsExtraParamConfig()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 5

    .prologue
    .line 175
    iget-object v4, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 176
    .local v3, "methodConfigBuilders":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codegist/crest/config/MethodConfigBuilder;>;"
    iget-object v4, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->methodBuilders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v0, v4, [Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 177
    .local v0, "builders":[Lorg/codegist/crest/config/ParamConfigBuilder;
    const/4 v1, 0x0

    .line 178
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codegist/crest/config/MethodConfigBuilder;

    invoke-interface {v4}, Lorg/codegist/crest/config/MethodConfigBuilder;->startExtraParamConfig()Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 181
    :cond_0
    new-instance v4, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;

    invoke-direct {v4, v0}, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder$CompositeParamConfigBuilder;-><init>([Lorg/codegist/crest/config/ParamConfigBuilder;)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Lorg/codegist/common/lang/ToStringBuilder;

    const-string v1, "Interface"

    invoke-direct {v0, v1}, Lorg/codegist/common/lang/ToStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "interface"

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;->interfaze:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/common/lang/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
