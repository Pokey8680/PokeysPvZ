.class public final Lorg/codegist/crest/param/ParamProcessors;
.super Ljava/lang/Object;
.source "ParamProcessors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/param/ParamProcessors$1;,
        Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static iterate(Ljava/util/List;Ljava/nio/charset/Charset;)Ljava/util/Iterator;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/codegist/crest/param/ParamProcessors;->iterate(Ljava/util/List;Ljava/nio/charset/Charset;Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(Ljava/util/List;Ljava/nio/charset/Charset;Z)Ljava/util/Iterator;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "encodeIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "Z)",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    new-instance v0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;-><init>(Ljava/util/List;Ljava/nio/charset/Charset;ZLorg/codegist/crest/param/ParamProcessors$1;)V

    return-object v0
.end method

.method public static newInstance(Lorg/codegist/crest/config/ParamType;Ljava/lang/String;)Lorg/codegist/crest/param/ParamProcessor;
    .locals 2
    .param p0, "type"    # Lorg/codegist/crest/config/ParamType;
    .param p1, "listSeparator"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lorg/codegist/crest/param/ParamProcessors$1;->$SwitchMap$org$codegist$crest$config$ParamType:[I

    invoke-virtual {p0}, Lorg/codegist/crest/config/ParamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    if-eqz p1, :cond_1

    new-instance v0, Lorg/codegist/crest/param/CollectionMergingParamProcessor;

    invoke-direct {v0, p1}, Lorg/codegist/crest/param/CollectionMergingParamProcessor;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    if-eqz p1, :cond_0

    new-instance v0, Lorg/codegist/crest/param/CollectionMergingCookieParamProcessor;

    invoke-direct {v0, p1}, Lorg/codegist/crest/param/CollectionMergingCookieParamProcessor;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/codegist/crest/param/DefaultCookieParamProcessor;->INSTANCE:Lorg/codegist/crest/param/ParamProcessor;

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lorg/codegist/crest/param/DefaultParamProcessor;->INSTANCE:Lorg/codegist/crest/param/ParamProcessor;

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
