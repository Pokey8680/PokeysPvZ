.class Lorg/roboguice/shaded/goole/common/collect/Lists$RandomAccessReverseList;
.super Lorg/roboguice/shaded/goole/common/collect/Lists$ReverseList;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessReverseList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Lists$ReverseList",
        "<TT;>;",
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 886
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$RandomAccessReverseList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$RandomAccessReverseList<TT;>;"
    .local p1, "forwardList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Lists$ReverseList;-><init>(Ljava/util/List;)V

    .line 887
    return-void
.end method
