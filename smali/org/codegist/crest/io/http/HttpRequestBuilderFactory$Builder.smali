.class Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;
.super Ljava/lang/Object;
.source "HttpRequestBuilderFactory.java"

# interfaces
.implements Lorg/codegist/crest/io/RequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/io/http/HttpRequestBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private final cookieParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;"
        }
    .end annotation
.end field

.field private final formParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;"
        }
    .end annotation
.end field

.field private final headerParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;"
        }
    .end annotation
.end field

.field private final matrixParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;"
        }
    .end annotation
.end field

.field private final pathParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;"
        }
    .end annotation
.end field

.field private final queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->headerParams:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->matrixParams:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->queryParams:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->pathParams:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->cookieParams:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->formParams:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$1;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addParam(Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/RequestBuilder;
    .locals 1
    .param p1, "x0"    # Lorg/codegist/crest/config/ParamConfig;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->addParam(Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/lang/Object;)Lorg/codegist/crest/io/RequestBuilder;
    .locals 1
    .param p1, "x0"    # Lorg/codegist/crest/config/ParamConfig;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/lang/Object;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/util/Collection;)Lorg/codegist/crest/io/RequestBuilder;
    .locals 1
    .param p1, "x0"    # Lorg/codegist/crest/config/ParamConfig;
    .param p2, "x1"    # Ljava/util/Collection;

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/util/Collection;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addParam(Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;
    .locals 1
    .param p1, "paramConfig"    # Lorg/codegist/crest/config/ParamConfig;

    .prologue
    .line 77
    invoke-interface {p1}, Lorg/codegist/crest/config/ParamConfig;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/lang/Object;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/lang/Object;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;
    .locals 1
    .param p1, "paramConfig"    # Lorg/codegist/crest/config/ParamConfig;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/util/Collection;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/util/Collection;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;
    .locals 4
    .param p1, "paramConfig"    # Lorg/codegist/crest/config/ParamConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/ParamConfig;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Lorg/codegist/crest/param/DefaultParam;

    invoke-direct {v0, p1, p2}, Lorg/codegist/crest/param/DefaultParam;-><init>(Lorg/codegist/crest/config/ParamConfig;Ljava/util/Collection;)V

    .line 86
    .local v0, "param":Lorg/codegist/crest/param/DefaultParam;
    sget-object v1, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$1;->$SwitchMap$org$codegist$crest$config$ParamType:[I

    invoke-interface {p1}, Lorg/codegist/crest/config/ParamConfig;->getType()Lorg/codegist/crest/config/ParamType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codegist/crest/config/ParamType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported param type ! (type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/codegist/crest/config/ParamConfig;->getType()Lorg/codegist/crest/config/ParamType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :pswitch_0
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->cookieParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_0
    return-object p0

    .line 91
    :pswitch_1
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->formParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->headerParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :pswitch_3
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->matrixParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :pswitch_4
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->pathParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :pswitch_5
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->queryParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic addParams([Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/RequestBuilder;
    .locals 1
    .param p1, "x0"    # [Lorg/codegist/crest/config/ParamConfig;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->addParams([Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addParams([Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;
    .locals 4
    .param p1, "paramConfigs"    # [Lorg/codegist/crest/config/ParamConfig;

    .prologue
    .line 70
    move-object v0, p1

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfig;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 71
    .local v3, "param":Lorg/codegist/crest/config/ParamConfig;
    invoke-virtual {p0, v3}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->addParam(Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "param":Lorg/codegist/crest/config/ParamConfig;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic build(Lorg/codegist/crest/config/MethodConfig;)Lorg/codegist/crest/io/Request;
    .locals 1
    .param p1, "x0"    # Lorg/codegist/crest/config/MethodConfig;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->build(Lorg/codegist/crest/config/MethodConfig;)Lorg/codegist/crest/io/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/codegist/crest/config/MethodConfig;)Lorg/codegist/crest/io/http/HttpRequest;
    .locals 8
    .param p1, "methodConfig"    # Lorg/codegist/crest/config/MethodConfig;

    .prologue
    .line 58
    new-instance v0, Lorg/codegist/crest/io/http/HttpRequest;

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->headerParams:Ljava/util/List;

    iget-object v3, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->matrixParams:Ljava/util/List;

    iget-object v4, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->queryParams:Ljava/util/List;

    iget-object v5, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->pathParams:Ljava/util/List;

    iget-object v6, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->cookieParams:Ljava/util/List;

    iget-object v7, p0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory$Builder;->formParams:Ljava/util/List;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/codegist/crest/io/http/HttpRequest;-><init>(Lorg/codegist/crest/config/MethodConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
