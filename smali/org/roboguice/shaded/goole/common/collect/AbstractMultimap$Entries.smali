.class Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;
.super Lorg/roboguice/shaded/goole/common/collect/Multimaps$Entries;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Multimaps$Entries",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;)V
    .locals 0

    .prologue
    .line 119
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$Entries;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$1;

    .prologue
    .line 119
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multimap()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;

    return-object v0
.end method
