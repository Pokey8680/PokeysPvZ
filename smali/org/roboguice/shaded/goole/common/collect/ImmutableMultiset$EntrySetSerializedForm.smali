.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final multiset:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm<TE;>;"
    .local p1, "multiset":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    .line 420
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 423
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
