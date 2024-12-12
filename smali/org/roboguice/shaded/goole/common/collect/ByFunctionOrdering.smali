.class final Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "ByFunctionOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Ordering",
        "<TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    serializable = true
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final function:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<TF;+TT;>;"
        }
    .end annotation
.end field

.field final ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Function;Lorg/roboguice/shaded/goole/common/collect/Ordering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<TF;+TT;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering<TF;TT;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<TF;+TT;>;"
    .local p2, "ordering":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    .line 41
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Function;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 42
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Ordering;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    .line 43
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering<TF;TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TF;"
    .local p2, "right":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v2, p2}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering<TF;TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v3, p1, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 54
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;

    .line 55
    .local v0, "that":Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering<**>;"
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    iget-object v4, v0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v3, v4}, Lorg/roboguice/shaded/goole/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    iget-object v4, v0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering<**>;"
    :cond_3
    move v1, v2

    .line 58
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 62
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering<TF;TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering<TF;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
