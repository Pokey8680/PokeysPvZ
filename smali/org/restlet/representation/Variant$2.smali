.class Lorg/restlet/representation/Variant$2;
.super Lorg/restlet/util/WrapperList;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/WrapperList",
        "<",
        "Lorg/restlet/data/Language;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/representation/Variant;


# direct methods
.method constructor <init>(Lorg/restlet/representation/Variant;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lorg/restlet/representation/Variant$2;->this$0:Lorg/restlet/representation/Variant;

    invoke-direct {p0}, Lorg/restlet/util/WrapperList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 298
    check-cast p2, Lorg/restlet/data/Language;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/representation/Variant$2;->add(ILorg/restlet/data/Language;)V

    return-void
.end method

.method public add(ILorg/restlet/data/Language;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/restlet/data/Language;

    .prologue
    .line 302
    if-nez p2, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null language."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/restlet/util/WrapperList;->add(ILjava/lang/Object;)V

    .line 308
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 298
    check-cast p1, Lorg/restlet/data/Language;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/representation/Variant$2;->add(Lorg/restlet/data/Language;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/restlet/data/Language;)Z
    .locals 2
    .param p1, "element"    # Lorg/restlet/data/Language;

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null language."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    invoke-super {p0, p1}, Lorg/restlet/util/WrapperList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/restlet/data/Language;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/restlet/data/Language;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 340
    if-nez p2, :cond_0

    move v0, v2

    .line 341
    .local v0, "addNull":Z
    :goto_0
    if-nez v0, :cond_2

    .line 342
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 343
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Language;>;"
    :goto_1
    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 344
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move v0, v2

    :goto_2
    goto :goto_1

    .end local v0    # "addNull":Z
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Language;>;"
    :cond_0
    move v0, v3

    .line 340
    goto :goto_0

    .restart local v0    # "addNull":Z
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Language;>;"
    :cond_1
    move v0, v3

    .line 344
    goto :goto_2

    .line 347
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Language;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 348
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add a null language."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/restlet/util/WrapperList;->addAll(ILjava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/restlet/data/Language;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/restlet/data/Language;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 322
    if-nez p1, :cond_0

    move v0, v2

    .line 323
    .local v0, "addNull":Z
    :goto_0
    if-nez v0, :cond_2

    .line 324
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Language;>;"
    :goto_1
    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move v0, v2

    :goto_2
    goto :goto_1

    .end local v0    # "addNull":Z
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Language;>;"
    :cond_0
    move v0, v3

    .line 322
    goto :goto_0

    .restart local v0    # "addNull":Z
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Language;>;"
    :cond_1
    move v0, v3

    .line 326
    goto :goto_2

    .line 329
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Language;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add a null language."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :cond_3
    invoke-super {p0, p1}, Lorg/restlet/util/WrapperList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method
