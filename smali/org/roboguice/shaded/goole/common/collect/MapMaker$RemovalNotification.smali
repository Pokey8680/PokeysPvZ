.class final Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RemovalNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "cause"    # Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;->cause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    .line 665
    return-void
.end method


# virtual methods
.method public getCause()Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;
    .locals 1

    .prologue
    .line 671
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;->cause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method

.method public wasEvicted()Z
    .locals 1

    .prologue
    .line 679
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;->cause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->wasEvicted()Z

    move-result v0

    return v0
.end method
