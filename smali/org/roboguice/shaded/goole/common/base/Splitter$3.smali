.class final Lorg/roboguice/shaded/goole/common/base/Splitter$3;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Splitter;->on(Ljava/util/regex/Pattern;)Lorg/roboguice/shaded/goole/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorPattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$3;->val$separatorPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/base/Splitter;
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Splitter$3;->iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
    .locals 2
    .param p1, "splitter"    # Lorg/roboguice/shaded/goole/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .prologue
    .line 223
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$3;->val$separatorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 224
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Lorg/roboguice/shaded/goole/common/base/Splitter$3$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/base/Splitter$3$1;-><init>(Lorg/roboguice/shaded/goole/common/base/Splitter$3;Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;Ljava/util/regex/Matcher;)V

    return-object v1
.end method
