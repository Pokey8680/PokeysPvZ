.class Lorg/roboguice/shaded/goole/common/base/Optional$1$1;
.super Lorg/roboguice/shaded/goole/common/base/AbstractIterator;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Optional$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/base/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lorg/roboguice/shaded/goole/common/base/Optional",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/base/Optional$1;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Optional$1;)V
    .locals 1

    .prologue
    .line 222
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Optional$1$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Optional$1;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/AbstractIterator;-><init>()V

    .line 223
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Optional$1$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Optional$1;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/base/Optional$1;->val$optionals:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 228
    :cond_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Optional;

    .line 230
    .local v0, "optional":Lorg/roboguice/shaded/goole/common/base/Optional;, "Lorg/roboguice/shaded/goole/common/base/Optional<+TT;>;"
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    .line 234
    .end local v0    # "optional":Lorg/roboguice/shaded/goole/common/base/Optional;, "Lorg/roboguice/shaded/goole/common/base/Optional<+TT;>;"
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/base/Optional$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
