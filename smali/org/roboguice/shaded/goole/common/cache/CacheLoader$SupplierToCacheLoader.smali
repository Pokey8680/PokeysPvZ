.class final Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader;
.super Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
.source "CacheLoader.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SupplierToCacheLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
        "<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final computingSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/roboguice/shaded/goole/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader<TV;>;"
    .local p1, "computingSupplier":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;-><init>()V

    .line 173
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader;->computingSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 174
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader<TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader;->computingSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
