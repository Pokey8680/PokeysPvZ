.class public interface abstract Lorg/codegist/crest/config/ParamConfigBuilder;
.super Ljava/lang/Object;
.source "ParamConfigBuilder.java"


# virtual methods
.method public abstract build()Lorg/codegist/crest/config/ParamConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract forCookie()Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract forForm()Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract forHeader()Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract forMatrix()Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract forMultiPart()Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract forPath()Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract forQuery()Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract setEncoded(Z)Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract setListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract setMetaDatas(Ljava/util/Map;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/config/ParamConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract setSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)",
            "Lorg/codegist/crest/config/ParamConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;
.end method
