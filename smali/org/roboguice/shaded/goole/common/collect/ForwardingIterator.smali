.class public abstract Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingObject;
.source "ForwardingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingObject;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator<TT;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 54
    return-void
.end method
