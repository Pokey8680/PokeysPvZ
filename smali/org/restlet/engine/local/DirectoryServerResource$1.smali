.class Lorg/restlet/engine/local/DirectoryServerResource$1;
.super Ljava/lang/Object;
.source "DirectoryServerResource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/local/DirectoryServerResource;->getRepresentationsComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/restlet/representation/Representation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/local/DirectoryServerResource;


# direct methods
.method constructor <init>(Lorg/restlet/engine/local/DirectoryServerResource;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lorg/restlet/engine/local/DirectoryServerResource$1;->this$0:Lorg/restlet/engine/local/DirectoryServerResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 537
    check-cast p1, Lorg/restlet/representation/Representation;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/restlet/representation/Representation;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/engine/local/DirectoryServerResource$1;->compare(Lorg/restlet/representation/Representation;Lorg/restlet/representation/Representation;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/restlet/representation/Representation;Lorg/restlet/representation/Representation;)I
    .locals 5
    .param p1, "rep0"    # Lorg/restlet/representation/Representation;
    .param p2, "rep1"    # Lorg/restlet/representation/Representation;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 539
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    .line 540
    .local v0, "bRep0Null":Z
    :goto_0
    invoke-virtual {p2}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v4

    if-nez v4, :cond_1

    move v1, v2

    .line 542
    .local v1, "bRep1Null":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 553
    :goto_2
    return v3

    .end local v0    # "bRep0Null":Z
    .end local v1    # "bRep1Null":Z
    :cond_0
    move v0, v3

    .line 539
    goto :goto_0

    .restart local v0    # "bRep0Null":Z
    :cond_1
    move v1, v3

    .line 540
    goto :goto_1

    .line 545
    .restart local v1    # "bRep1Null":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 546
    const/4 v3, -0x1

    goto :goto_2

    .line 549
    :cond_3
    if-eqz v1, :cond_4

    move v3, v2

    .line 550
    goto :goto_2

    .line 553
    :cond_4
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getLastSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Reference;->getLastSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_2
.end method
