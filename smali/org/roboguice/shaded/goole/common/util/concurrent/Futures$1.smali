.class final Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction",
        "<TI;TO;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lorg/roboguice/shaded/goole/common/base/Function;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;->val$function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, "input":Ljava/lang/Object;, "TI;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;->val$function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 714
    .local v0, "output":Ljava/lang/Object;, "TO;"
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method
