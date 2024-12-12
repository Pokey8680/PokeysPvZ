.class Lorg/restlet/engine/application/EncodeRepresentation$1;
.super Lorg/restlet/util/WrapperList;
.source "EncodeRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/application/EncodeRepresentation;->getEncodings()Ljava/util/List;
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
.field final synthetic this$0:Lorg/restlet/engine/application/EncodeRepresentation;


# direct methods
.method constructor <init>(Lorg/restlet/engine/application/EncodeRepresentation;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lorg/restlet/engine/application/EncodeRepresentation$1;->this$0:Lorg/restlet/engine/application/EncodeRepresentation;

    invoke-direct {p0}, Lorg/restlet/util/WrapperList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p2, Lorg/restlet/data/Encoding;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/engine/application/EncodeRepresentation$1;->add(ILorg/restlet/data/Encoding;)V

    return-void
.end method

.method public add(ILorg/restlet/data/Encoding;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/restlet/data/Encoding;

    .prologue
    .line 170
    if-nez p2, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/restlet/util/WrapperList;->add(ILjava/lang/Object;)V

    .line 176
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p1, Lorg/restlet/data/Encoding;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/application/EncodeRepresentation$1;->add(Lorg/restlet/data/Encoding;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/restlet/data/Encoding;)Z
    .locals 2
    .param p1, "element"    # Lorg/restlet/data/Encoding;

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
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

    .line 198
    if-nez p2, :cond_0

    move v0, v2

    .line 199
    .local v0, "addNull":Z
    :goto_0
    if-nez v0, :cond_2

    .line 200
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :goto_1
    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
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

    .line 198
    goto :goto_0

    .restart local v0    # "addNull":Z
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_1
    move v0, v3

    .line 202
    goto :goto_2

    .line 205
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 206
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add a null encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
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

    .line 180
    if-nez p1, :cond_0

    move v0, v2

    .line 181
    .local v0, "addNull":Z
    :goto_0
    if-nez v0, :cond_2

    .line 182
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :goto_1
    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
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

    .line 180
    goto :goto_0

    .restart local v0    # "addNull":Z
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_1
    move v0, v3

    .line 184
    goto :goto_2

    .line 187
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/restlet/data/Encoding;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 188
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add a null encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_3
    invoke-super {p0, p1}, Lorg/restlet/util/WrapperList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method
