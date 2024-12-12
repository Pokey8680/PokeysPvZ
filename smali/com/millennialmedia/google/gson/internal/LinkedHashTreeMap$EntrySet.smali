.class Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;)V
    .locals 0

    .prologue
    .line 892
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 936
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->clear()V

    .line 937
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 915
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

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
    .line 903
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet$1;-><init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 921
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 930
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 925
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 926
    .local v0, "node":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 929
    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    move v1, v2

    .line 930
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 897
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
