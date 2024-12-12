.class final Lorg/codegist/crest/io/http/HttpRequests;
.super Ljava/lang/Object;
.source "HttpRequests.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static toUrl(Lorg/codegist/crest/io/Request;)Ljava/lang/String;
    .locals 10
    .param p0, "request"    # Lorg/codegist/crest/io/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-interface {p0}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v3

    .line 46
    .local v3, "mc":Lorg/codegist/crest/config/MethodConfig;
    invoke-interface {v3}, Lorg/codegist/crest/config/MethodConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 47
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-interface {v3}, Lorg/codegist/crest/config/MethodConfig;->getPathTemplate()Lorg/codegist/crest/config/PathTemplate;

    move-result-object v7

    invoke-interface {v7, v0}, Lorg/codegist/crest/config/PathTemplate;->getBuilder(Ljava/nio/charset/Charset;)Lorg/codegist/crest/config/PathBuilder;

    move-result-object v4

    .line 49
    .local v4, "pathBuilder":Lorg/codegist/crest/config/PathBuilder;
    sget-object v7, Lorg/codegist/crest/config/ParamType;->PATH:Lorg/codegist/crest/config/ParamType;

    invoke-interface {p0, v7}, Lorg/codegist/crest/io/Request;->getEncodedParamsIterator(Lorg/codegist/crest/config/ParamType;)Ljava/util/Iterator;

    move-result-object v5

    .line 50
    .local v5, "pathParamsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codegist/crest/param/EncodedPair;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 51
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codegist/crest/param/EncodedPair;

    .line 52
    .local v1, "encoded":Lorg/codegist/crest/param/EncodedPair;
    invoke-interface {v1}, Lorg/codegist/crest/param/EncodedPair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lorg/codegist/crest/param/EncodedPair;->getValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v4, v7, v8, v9}, Lorg/codegist/crest/config/PathBuilder;->merge(Ljava/lang/String;Ljava/lang/String;Z)Lorg/codegist/crest/config/PathBuilder;

    goto :goto_0

    .line 55
    .end local v1    # "encoded":Lorg/codegist/crest/param/EncodedPair;
    :cond_0
    sget-object v7, Lorg/codegist/crest/config/ParamType;->QUERY:Lorg/codegist/crest/config/ParamType;

    invoke-interface {p0, v7}, Lorg/codegist/crest/io/Request;->getEncodedParamsIterator(Lorg/codegist/crest/config/ParamType;)Ljava/util/Iterator;

    move-result-object v7

    const/16 v8, 0x26

    invoke-static {v7, v8}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "query":Ljava/lang/String;
    invoke-static {v6}, Lorg/codegist/common/lang/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    :cond_1
    sget-object v7, Lorg/codegist/crest/config/ParamType;->MATRIX:Lorg/codegist/crest/config/ParamType;

    invoke-interface {p0, v7}, Lorg/codegist/crest/io/Request;->getEncodedParamsIterator(Lorg/codegist/crest/config/ParamType;)Ljava/util/Iterator;

    move-result-object v7

    const/16 v8, 0x3b

    invoke-static {v7, v8}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "matrix":Ljava/lang/String;
    invoke-static {v2}, Lorg/codegist/common/lang/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lorg/codegist/crest/config/PathBuilder;->build()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
