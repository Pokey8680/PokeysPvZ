.class Lorg/roboguice/shaded/goole/common/base/Splitter$4$1;
.super Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Splitter$4;->iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$4;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Splitter$4;Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "x0"    # Lorg/roboguice/shaded/goole/common/base/Splitter;
    .param p3, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 282
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$4$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$4;

    invoke-direct {p0, p2, p3}, Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;-><init>(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 0
    .param p1, "separatorPosition"    # I

    .prologue
    .line 289
    return p1
.end method

.method public separatorStart(I)I
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 284
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$4$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$4;

    iget v1, v1, Lorg/roboguice/shaded/goole/common/base/Splitter$4;->val$length:I

    add-int v0, p1, v1

    .line 285
    .local v0, "nextChunkStart":I
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$4$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .end local v0    # "nextChunkStart":I
    :goto_0
    return v0

    .restart local v0    # "nextChunkStart":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
