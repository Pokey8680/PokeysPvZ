.class Lorg/roboguice/shaded/goole/common/base/Splitter$1$1;
.super Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Splitter$1;->iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$1;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Splitter$1;Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "x0"    # Lorg/roboguice/shaded/goole/common/base/Splitter;
    .param p3, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$1$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$1;

    invoke-direct {p0, p2, p3}, Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;-><init>(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method separatorEnd(I)I
    .locals 1
    .param p1, "separatorPosition"    # I

    .prologue
    .line 155
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method separatorStart(I)I
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$1$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$1;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/base/Splitter$1;->val$separatorMatcher:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method
