.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache$1;
.super Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
        "<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;

.field final synthetic val$valueLoader:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 4736
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache$1;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache$1;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache$1;->val$valueLoader:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;-><init>()V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4739
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache$1;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache$1;->val$valueLoader:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
