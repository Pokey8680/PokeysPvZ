.class public abstract Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;
.super Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.source "UnmodifiableListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
        "<TE;>;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator<TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
