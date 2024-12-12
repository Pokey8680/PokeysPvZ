.class Lorg/codegist/common/lang/Objects$SingletonIterator;
.super Ljava/lang/Object;
.source "Objects.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/common/lang/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final ref:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 87
    .local p0, "this":Lorg/codegist/common/lang/Objects$SingletonIterator;, "Lorg/codegist/common/lang/Objects$SingletonIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/codegist/common/lang/Objects$SingletonIterator;->ref:Ljava/util/concurrent/atomic/AtomicReference;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/codegist/common/lang/Objects$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/codegist/common/lang/Objects$1;

    .prologue
    .line 84
    .local p0, "this":Lorg/codegist/common/lang/Objects$SingletonIterator;, "Lorg/codegist/common/lang/Objects$SingletonIterator<TT;>;"
    invoke-direct {p0, p1}, Lorg/codegist/common/lang/Objects$SingletonIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lorg/codegist/common/lang/Objects$SingletonIterator;, "Lorg/codegist/common/lang/Objects$SingletonIterator<TT;>;"
    iget-object v0, p0, Lorg/codegist/common/lang/Objects$SingletonIterator;->ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/codegist/common/lang/Objects$SingletonIterator;, "Lorg/codegist/common/lang/Objects$SingletonIterator<TT;>;"
    iget-object v0, p0, Lorg/codegist/common/lang/Objects$SingletonIterator;->ref:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lorg/codegist/common/lang/Objects$SingletonIterator;, "Lorg/codegist/common/lang/Objects$SingletonIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
