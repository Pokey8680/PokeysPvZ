.class public abstract Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache;
.super Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;
.source "ForwardingCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# instance fields
.field private final delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/roboguice/shaded/goole/common/cache/Cache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/Cache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/cache/Cache;, "Lorg/roboguice/shaded/goole/common/cache/Cache<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;-><init>()V

    .line 138
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/Cache;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache;->delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;

    .line 139
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache;->delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;

    return-object v0
.end method
