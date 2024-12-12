.class Lorg/codegist/crest/param/CollectionMergingParamProcessor;
.super Ljava/lang/Object;
.source "CollectionMergingParamProcessor.java"

# interfaces
.implements Lorg/codegist/crest/param/ParamProcessor;


# instance fields
.field private final listSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listSeparator"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/codegist/crest/param/CollectionMergingParamProcessor;->listSeparator:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public process(Lorg/codegist/crest/param/Param;Ljava/nio/charset/Charset;Z)Ljava/util/List;
    .locals 9
    .param p1, "param"    # Lorg/codegist/crest/param/Param;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "encodeIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/param/Param;",
            "Ljava/nio/charset/Charset;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/codegist/crest/config/ParamConfig;->getSerializer()Lorg/codegist/crest/serializer/Serializer;

    move-result-object v5

    .line 47
    .local v5, "serializer":Lorg/codegist/crest/serializer/Serializer;
    if-eqz p3, :cond_0

    invoke-interface {p1}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/codegist/crest/config/ParamConfig;->isEncoded()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 48
    .local v2, "isEncoded":Z
    :goto_0
    const/4 v0, 0x1

    .line 49
    .local v0, "first":Z
    invoke-interface {p1}, Lorg/codegist/crest/param/Param;->getValue()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 50
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v5, v6, p2}, Lorg/codegist/crest/util/Serializers;->serialize(Lorg/codegist/crest/serializer/Serializer;Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "serializedValue":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 52
    iget-object v7, p0, Lorg/codegist/crest/param/CollectionMergingParamProcessor;->listSeparator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/4 v0, 0x0

    .line 56
    goto :goto_1

    .line 47
    .end local v0    # "first":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isEncoded":Z
    .end local v4    # "serializedValue":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    .restart local v0    # "first":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "isEncoded":Z
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 61
    :goto_2
    return-object v7

    :cond_4
    invoke-interface {p1}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/codegist/crest/config/ParamConfig;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2, v2}, Lorg/codegist/crest/util/Pairs;->toPair(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_2
.end method
