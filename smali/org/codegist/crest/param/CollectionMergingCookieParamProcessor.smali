.class Lorg/codegist/crest/param/CollectionMergingCookieParamProcessor;
.super Lorg/codegist/crest/param/CollectionMergingParamProcessor;
.source "CollectionMergingCookieParamProcessor.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listSeparator"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/codegist/crest/param/CollectionMergingParamProcessor;-><init>(Ljava/lang/String;)V

    .line 39
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
    .line 43
    invoke-super {p0, p1, p2, p3}, Lorg/codegist/crest/param/CollectionMergingParamProcessor;->process(Lorg/codegist/crest/param/Param;Ljava/nio/charset/Charset;Z)Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/List;C)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "cookie":Ljava/lang/String;
    invoke-static {v0}, Lorg/codegist/common/lang/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 48
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
