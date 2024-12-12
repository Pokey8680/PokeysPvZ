.class public final Lorg/codegist/crest/util/MultiParts;
.super Ljava/lang/Object;
.source "MultiParts.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "multipart.content-type"

.field private static final FILENAME:Ljava/lang/String; = "multipart.filename"

.field private static final MULTIPART_FLAG:Ljava/lang/String; = "multipart.flag"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static asMultipart(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "metadatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "multipart.flag"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public static getContentType(Lorg/codegist/crest/config/ParamConfig;)Ljava/lang/String;
    .locals 2
    .param p0, "paramConfig"    # Lorg/codegist/crest/config/ParamConfig;

    .prologue
    .line 51
    invoke-interface {p0}, Lorg/codegist/crest/config/ParamConfig;->getMetaDatas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "multipart.content-type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getContentType(Lorg/codegist/crest/param/Param;)Ljava/lang/String;
    .locals 1
    .param p0, "param"    # Lorg/codegist/crest/param/Param;

    .prologue
    .line 69
    invoke-interface {p0}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v0

    invoke-static {v0}, Lorg/codegist/crest/util/MultiParts;->getContentType(Lorg/codegist/crest/config/ParamConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(Lorg/codegist/crest/config/ParamConfig;)Ljava/lang/String;
    .locals 2
    .param p0, "paramConfig"    # Lorg/codegist/crest/config/ParamConfig;

    .prologue
    .line 60
    invoke-interface {p0}, Lorg/codegist/crest/config/ParamConfig;->getMetaDatas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "multipart.filename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getFileName(Lorg/codegist/crest/param/Param;)Ljava/lang/String;
    .locals 1
    .param p0, "param"    # Lorg/codegist/crest/param/Param;

    .prologue
    .line 78
    invoke-interface {p0}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v0

    invoke-static {v0}, Lorg/codegist/crest/util/MultiParts;->getFileName(Lorg/codegist/crest/config/ParamConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasMultiPart(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "metadatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "multipart.flag"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasMultiPart(Lorg/codegist/crest/param/Param;)Z
    .locals 1
    .param p0, "param"    # Lorg/codegist/crest/param/Param;

    .prologue
    .line 110
    invoke-interface {p0}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/codegist/crest/config/ParamConfig;->getMetaDatas()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/codegist/crest/util/MultiParts;->hasMultiPart(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static hasMultiPart([Lorg/codegist/crest/config/ParamConfig;)Z
    .locals 5
    .param p0, "paramConfigs"    # [Lorg/codegist/crest/config/ParamConfig;

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "arr$":[Lorg/codegist/crest/config/ParamConfig;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 88
    .local v1, "cfg":Lorg/codegist/crest/config/ParamConfig;
    invoke-interface {v1}, Lorg/codegist/crest/config/ParamConfig;->getMetaDatas()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/codegist/crest/util/MultiParts;->hasMultiPart(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const/4 v4, 0x1

    .line 92
    .end local v1    # "cfg":Lorg/codegist/crest/config/ParamConfig;
    :goto_1
    return v4

    .line 87
    .restart local v1    # "cfg":Lorg/codegist/crest/config/ParamConfig;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "cfg":Lorg/codegist/crest/config/ParamConfig;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static putMetaDatas(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "metadatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "multipart.flag"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {p1}, Lorg/codegist/common/lang/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "multipart.content-type"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    invoke-static {p2}, Lorg/codegist/common/lang/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "multipart.filename"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    return-void
.end method

.method public static toMetaDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v0, "metadatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0, p0, p1}, Lorg/codegist/crest/util/MultiParts;->putMetaDatas(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v0
.end method
