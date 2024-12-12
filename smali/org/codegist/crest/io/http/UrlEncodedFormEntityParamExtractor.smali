.class public Lorg/codegist/crest/io/http/UrlEncodedFormEntityParamExtractor;
.super Ljava/lang/Object;
.source "UrlEncodedFormEntityParamExtractor.java"

# interfaces
.implements Lorg/codegist/crest/io/http/EntityParamExtractor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "entity"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p3, p2}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "formContent":Ljava/lang/String;
    invoke-static {v0}, Lorg/codegist/common/lang/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {v0}, Lorg/codegist/crest/util/Pairs;->fromUrlEncoded(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
