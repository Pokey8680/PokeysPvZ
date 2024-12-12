.class final Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 758
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    .local p1, "node":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 779
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 780
    iput v7, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 783
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 784
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 785
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 786
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 789
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 790
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 791
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 794
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 795
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 796
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 797
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 815
    :cond_1
    const/4 v3, 0x4

    .local v3, "scale":I
    :goto_0
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_5

    .line 816
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v4, :cond_3

    .line 819
    iget-object v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 820
    .local v2, "right":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 821
    .local v0, "center":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 822
    .local v1, "left":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 823
    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 825
    iput-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 826
    iput-object v2, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 827
    iget v4, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 828
    iput-object v0, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 829
    iput-object v0, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 815
    .end local v0    # "center":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v1    # "left":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "right":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_2
    :goto_1
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 830
    :cond_3
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-ne v4, v7, :cond_4

    .line 833
    iget-object v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 834
    .restart local v2    # "right":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 835
    .restart local v0    # "center":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 837
    iput-object v2, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 838
    iget v4, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 839
    iput-object v0, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 840
    iput v6, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_1

    .line 841
    .end local v0    # "center":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "right":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_4
    iget v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 842
    iput v6, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_1

    .line 845
    :cond_5
    return-void
.end method

.method reset(I)V
    .locals 3
    .param p1, "targetSize"    # I

    .prologue
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    const/4 v2, 0x0

    .line 770
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x1

    .line 771
    .local v0, "treeCapacity":I
    sub-int v1, v0, p1

    iput v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 772
    iput v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 773
    iput v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 774
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 775
    return-void
.end method

.method root()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 850
    .local v0, "stackTop":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_0

    .line 851
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 853
    :cond_0
    return-object v0
.end method
