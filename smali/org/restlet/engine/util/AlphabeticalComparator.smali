.class public Lorg/restlet/engine/util/AlphabeticalComparator;
.super Ljava/lang/Object;
.source "AlphabeticalComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/restlet/data/Reference;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lorg/restlet/data/Reference;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/restlet/data/Reference;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/engine/util/AlphabeticalComparator;->compare(Lorg/restlet/data/Reference;Lorg/restlet/data/Reference;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "str0"    # Ljava/lang/String;
    .param p2, "str1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/restlet/data/Reference;Lorg/restlet/data/Reference;)I
    .locals 5
    .param p1, "ref0"    # Lorg/restlet/data/Reference;
    .param p2, "ref1"    # Lorg/restlet/data/Reference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p1}, Lorg/restlet/data/Reference;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    .line 62
    .local v0, "bRep0Null":Z
    :goto_0
    invoke-virtual {p2}, Lorg/restlet/data/Reference;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move v1, v2

    .line 64
    .local v1, "bRep1Null":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 73
    :goto_2
    return v3

    .end local v0    # "bRep0Null":Z
    .end local v1    # "bRep1Null":Z
    :cond_0
    move v0, v3

    .line 61
    goto :goto_0

    .restart local v0    # "bRep0Null":Z
    :cond_1
    move v1, v3

    .line 62
    goto :goto_1

    .line 67
    .restart local v1    # "bRep1Null":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 68
    const/4 v3, -0x1

    goto :goto_2

    .line 70
    :cond_3
    if-eqz v1, :cond_4

    move v3, v2

    .line 71
    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {p1, v3, v3}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v3}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/restlet/engine/util/AlphabeticalComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2
.end method
