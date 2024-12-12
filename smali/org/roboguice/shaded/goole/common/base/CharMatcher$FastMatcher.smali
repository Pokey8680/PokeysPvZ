.class abstract Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FastMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 813
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;-><init>()V

    .line 814
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 818
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 811
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public negate()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 827
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;-><init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-object v0
.end method

.method public final precomputed()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 822
    return-object p0
.end method
