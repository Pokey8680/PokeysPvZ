.class Lorg/roboguice/shaded/goole/common/collect/Lists$RandomAccessListWrapper;
.super Lorg/roboguice/shaded/goole/common/collect/Lists$AbstractListWrapper;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessListWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Lists$AbstractListWrapper",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$RandomAccessListWrapper;, "Lorg/roboguice/shaded/goole/common/collect/Lists$RandomAccessListWrapper<TE;>;"
    .local p1, "backingList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Lists$AbstractListWrapper;-><init>(Ljava/util/List;)V

    .line 1035
    return-void
.end method
