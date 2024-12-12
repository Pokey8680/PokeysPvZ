.class final Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.source "ImmutableEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet$1;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet$EnumSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# instance fields
.field private final transient delegate:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient hashCode:I


# direct methods
.method private constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    .local p1, "delegate":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/EnumSet;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet$1;

    .prologue
    .line 33
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method

.method static asImmutable(Ljava/util/EnumSet;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/EnumSet",
            "<TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 41
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;-><init>(Ljava/util/EnumSet;)V

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 73
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 85
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 91
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->hashCode:I

    .line 92
    .local v0, "result":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->hashCode()I

    move-result v0

    .end local v0    # "result":I
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->hashCode:I

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 101
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet$EnumSerializedForm;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet$EnumSerializedForm;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method
