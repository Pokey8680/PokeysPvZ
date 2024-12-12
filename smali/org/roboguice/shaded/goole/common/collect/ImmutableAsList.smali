.class abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.source "ImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;-><init>()V

    .line 62
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "serialization"
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TE;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "serialization"
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList$SerializedForm;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList$SerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;)V

    return-object v0
.end method
