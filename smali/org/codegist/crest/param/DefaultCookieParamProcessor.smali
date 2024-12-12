.class Lorg/codegist/crest/param/DefaultCookieParamProcessor;
.super Lorg/codegist/crest/param/DefaultParamProcessor;
.source "DefaultCookieParamProcessor.java"


# static fields
.field static final INSTANCE:Lorg/codegist/crest/param/ParamProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/codegist/crest/param/DefaultCookieParamProcessor;

    invoke-direct {v0}, Lorg/codegist/crest/param/DefaultCookieParamProcessor;-><init>()V

    sput-object v0, Lorg/codegist/crest/param/DefaultCookieParamProcessor;->INSTANCE:Lorg/codegist/crest/param/ParamProcessor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/codegist/crest/param/DefaultParamProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/codegist/crest/param/Param;Ljava/nio/charset/Charset;Z)Ljava/util/List;
    .locals 3
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
    .line 41
    invoke-super {p0, p1, p2, p3}, Lorg/codegist/crest/param/DefaultParamProcessor;->process(Lorg/codegist/crest/param/Param;Ljava/nio/charset/Charset;Z)Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/List;C)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "cookie":Ljava/lang/String;
    invoke-static {v0}, Lorg/codegist/common/lang/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 46
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Cookie"

    invoke-static {v2, v0}, Lorg/codegist/crest/util/Pairs;->toPreEncodedPair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method
