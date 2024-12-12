.class Lorg/codegist/crest/param/DefaultParamProcessor;
.super Ljava/lang/Object;
.source "DefaultParamProcessor.java"

# interfaces
.implements Lorg/codegist/crest/param/ParamProcessor;


# static fields
.field static final INSTANCE:Lorg/codegist/crest/param/ParamProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/codegist/crest/param/DefaultParamProcessor;

    invoke-direct {v0}, Lorg/codegist/crest/param/DefaultParamProcessor;-><init>()V

    sput-object v0, Lorg/codegist/crest/param/DefaultParamProcessor;->INSTANCE:Lorg/codegist/crest/param/ParamProcessor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/codegist/crest/param/Param;Ljava/nio/charset/Charset;Z)Ljava/util/List;
    .locals 7
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
    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    invoke-interface {p1}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v6

    invoke-interface {v6}, Lorg/codegist/crest/config/ParamConfig;->getSerializer()Lorg/codegist/crest/serializer/Serializer;

    move-result-object v4

    .line 42
    .local v4, "serializer":Lorg/codegist/crest/serializer/Serializer;
    if-eqz p3, :cond_0

    invoke-interface {p1}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v6

    invoke-interface {v6}, Lorg/codegist/crest/config/ParamConfig;->isEncoded()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 43
    .local v1, "isEncoded":Z
    :goto_0
    invoke-interface {p1}, Lorg/codegist/crest/param/Param;->getValue()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 44
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v4, v5, p2}, Lorg/codegist/crest/util/Serializers;->serialize(Lorg/codegist/crest/serializer/Serializer;Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "serializedValue":Ljava/lang/String;
    invoke-interface {p1}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v6

    invoke-interface {v6}, Lorg/codegist/crest/config/ParamConfig;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, p2, v1}, Lorg/codegist/crest/util/Pairs;->toPair(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isEncoded":Z
    .end local v3    # "serializedValue":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 47
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "isEncoded":Z
    :cond_2
    return-object v2
.end method
