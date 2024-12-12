.class Lorg/codegist/crest/io/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lorg/codegist/crest/io/Request;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/io/http/HttpRequest$1;
    }
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

.field private final methodConfig:Lorg/codegist/crest/config/MethodConfig;

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
.method public constructor <init>(Lorg/codegist/crest/config/MethodConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "methodConfig"    # Lorg/codegist/crest/config/MethodConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/MethodConfig;",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "headerParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    .local p3, "matrixParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    .local p4, "queryParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    .local p5, "pathParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    .local p6, "cookieParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    .local p7, "formParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpRequest;->methodConfig:Lorg/codegist/crest/config/MethodConfig;

    .line 51
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->headerParams:Ljava/util/List;

    .line 52
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->matrixParams:Ljava/util/List;

    .line 53
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->queryParams:Ljava/util/List;

    .line 54
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->pathParams:Ljava/util/List;

    .line 55
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->cookieParams:Ljava/util/List;

    .line 56
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->formParams:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public getEncodedParamsIterator(Lorg/codegist/crest/config/ParamType;)Ljava/util/Iterator;
    .locals 2
    .param p1, "type"    # Lorg/codegist/crest/config/ParamType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/ParamType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lorg/codegist/crest/io/http/HttpRequest;->getParams(Lorg/codegist/crest/config/ParamType;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpRequest;->methodConfig:Lorg/codegist/crest/config/MethodConfig;

    invoke-interface {v1}, Lorg/codegist/crest/config/MethodConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codegist/crest/param/ParamProcessors;->iterate(Ljava/util/List;Ljava/nio/charset/Charset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getMethodConfig()Lorg/codegist/crest/config/MethodConfig;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->methodConfig:Lorg/codegist/crest/config/MethodConfig;

    return-object v0
.end method

.method public getParams(Lorg/codegist/crest/config/ParamType;)Ljava/util/List;
    .locals 3
    .param p1, "type"    # Lorg/codegist/crest/config/ParamType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/ParamType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lorg/codegist/crest/io/http/HttpRequest$1;->$SwitchMap$org$codegist$crest$config$ParamType:[I

    invoke-virtual {p1}, Lorg/codegist/crest/config/ParamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported param type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_0
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->cookieParams:Ljava/util/List;

    .line 70
    :goto_0
    return-object v0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->formParams:Ljava/util/List;

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->headerParams:Ljava/util/List;

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->matrixParams:Ljava/util/List;

    goto :goto_0

    .line 69
    :pswitch_4
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->pathParams:Ljava/util/List;

    goto :goto_0

    .line 70
    :pswitch_5
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpRequest;->queryParams:Ljava/util/List;

    goto :goto_0

    .line 64
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

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lorg/codegist/common/lang/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/codegist/common/lang/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    const-string v1, "methodConfig"

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpRequest;->methodConfig:Lorg/codegist/crest/config/MethodConfig;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "headerParams"

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpRequest;->headerParams:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "matrixParams"

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpRequest;->matrixParams:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "queryParams"

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpRequest;->queryParams:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "pathParams"

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpRequest;->pathParams:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "cookieParams"

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpRequest;->cookieParams:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "formParams"

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpRequest;->formParams:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/common/lang/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
