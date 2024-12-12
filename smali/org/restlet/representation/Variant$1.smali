.class Lorg/restlet/representation/Variant$1;
.super Lorg/restlet/util/WrapperList;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/WrapperList",
        "<",
        "Lorg/restlet/data/Encoding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/representation/Variant;


# direct methods
.method constructor <init>(Lorg/restlet/representation/Variant;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lorg/restlet/representation/Variant$1;->this$0:Lorg/restlet/representation/Variant;

    invoke-direct {p0}, Lorg/restlet/util/WrapperList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 224
    check-cast p2, Lorg/restlet/data/Encoding;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/representation/Variant$1;->add(ILorg/restlet/data/Encoding;)V

    return-void
.end method

.method public add(ILorg/restlet/data/Encoding;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/restlet/data/Encoding;

    .prologue
    .line 238
    if-nez p2, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/restlet/util/WrapperList;->add(ILjava/lang/Object;)V

    .line 244
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 224
    check-cast p1, Lorg/restlet/data/Encoding;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/representation/Variant$1;->add(Lorg/restlet/data/Encoding;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/restlet/data/Encoding;)Z
    .locals 2
    .param p1, "element"    # Lorg/restlet/data/Encoding;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
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
            "Lorg/restlet/data/Encoding;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/restlet/data/Encoding;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    if-nez p2, :cond_0

    move v0, v2

    .line 267
    .local v0, "addNull":Z
    :goto_0
    if-nez v0, :cond_2

    .line 268
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :goto_1
    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move v0, v2

    :goto_2
    goto :goto_1

    .end local v0    # "addNull":Z
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_0
    move v0, v3

    .line 266
    goto :goto_0

    .restart local v0    # "addNull":Z
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_1
    move v0, v3

    .line 270
    goto :goto_2

    .line 273
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 274
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add a null encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
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
            "Lorg/restlet/data/Encoding;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/restlet/data/Encoding;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 248
    if-nez p1, :cond_0

    move v0, v2

    .line 249
    .local v0, "addNull":Z
    :goto_0
    if-nez v0, :cond_2

    .line 250
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 251
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :goto_1
    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move v0, v2

    :goto_2
    goto :goto_1

    .end local v0    # "addNull":Z
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_0
    move v0, v3

    .line 248
    goto :goto_0

    .restart local v0    # "addNull":Z
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_1
    move v0, v3

    .line 252
    goto :goto_2

    .line 255
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 256
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add a null encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_3
    invoke-super {p0, p1}, Lorg/restlet/util/WrapperList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method
