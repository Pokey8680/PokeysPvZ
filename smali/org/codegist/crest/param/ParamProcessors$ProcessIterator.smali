.class final Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;
.super Ljava/lang/Object;
.source "ParamProcessors.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/param/ParamProcessors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcessIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/codegist/crest/param/EncodedPair;",
        ">;"
    }
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final encodeIfNeeded:Z

.field private final params:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/nio/charset/Charset;Z)V
    .locals 1
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "encodeIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->params:Ljava/util/Iterator;

    .line 89
    iput-object p2, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->charset:Ljava/nio/charset/Charset;

    .line 90
    iput-boolean p3, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->encodeIfNeeded:Z

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/nio/charset/Charset;ZLorg/codegist/crest/param/ParamProcessors$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/codegist/crest/param/ParamProcessors$1;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;-><init>(Ljava/util/List;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method private doNext()V
    .locals 5

    .prologue
    .line 109
    iget-object v2, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->params:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/param/Param;

    .line 111
    .local v0, "currentParam":Lorg/codegist/crest/param/Param;
    :try_start_0
    invoke-interface {v0}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/codegist/crest/config/ParamConfig;->getParamProcessor()Lorg/codegist/crest/param/ParamProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->charset:Ljava/nio/charset/Charset;

    iget-boolean v4, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->encodeIfNeeded:Z

    invoke-interface {v2, v0, v3, v4}, Lorg/codegist/crest/param/ParamProcessor;->process(Lorg/codegist/crest/param/Param;Ljava/nio/charset/Charset;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->current:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->current:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->params:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->doNext()V

    .line 98
    invoke-virtual {p0}, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->hasNext()Z

    move-result v0

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->next()Lorg/codegist/crest/param/EncodedPair;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/codegist/crest/param/EncodedPair;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/codegist/crest/param/ParamProcessors$ProcessIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/param/EncodedPair;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
