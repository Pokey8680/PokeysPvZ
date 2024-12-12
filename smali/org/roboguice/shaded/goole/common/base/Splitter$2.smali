.class final Lorg/roboguice/shaded/goole/common/base/Splitter$2;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Splitter;->on(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separator:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/base/Splitter;
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Splitter$2;->iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
    .locals 1
    .param p1, "splitter"    # Lorg/roboguice/shaded/goole/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Splitter$2$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Splitter$2$1;-><init>(Lorg/roboguice/shaded/goole/common/base/Splitter$2;Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method
