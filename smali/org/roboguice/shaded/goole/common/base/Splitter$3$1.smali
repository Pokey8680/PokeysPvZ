.class Lorg/roboguice/shaded/goole/common/base/Splitter$3$1;
.super Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Splitter$3;->iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$3;

.field final synthetic val$matcher:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Splitter$3;Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;Ljava/util/regex/Matcher;)V
    .locals 0
    .param p2, "x0"    # Lorg/roboguice/shaded/goole/common/base/Splitter;
    .param p3, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$3$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$3;

    iput-object p4, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-direct {p0, p2, p3}, Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;-><init>(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 1
    .param p1, "separatorPosition"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    return v0
.end method

.method public separatorStart(I)I
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method