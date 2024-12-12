.class final Lorg/codegist/crest/util/Pairs$1;
.super Ljava/lang/Object;
.source "Pairs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/util/Pairs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/codegist/crest/param/EncodedPair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 292
    check-cast p1, Lorg/codegist/crest/param/EncodedPair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/codegist/crest/param/EncodedPair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/util/Pairs$1;->compare(Lorg/codegist/crest/param/EncodedPair;Lorg/codegist/crest/param/EncodedPair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/codegist/crest/param/EncodedPair;Lorg/codegist/crest/param/EncodedPair;)I
    .locals 3
    .param p1, "o1"    # Lorg/codegist/crest/param/EncodedPair;
    .param p2, "o2"    # Lorg/codegist/crest/param/EncodedPair;

    .prologue
    .line 294
    invoke-interface {p1}, Lorg/codegist/crest/param/EncodedPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/codegist/crest/param/EncodedPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, "i":I
    if-eqz v0, :cond_0

    .end local v0    # "i":I
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Lorg/codegist/crest/param/EncodedPair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/codegist/crest/param/EncodedPair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
