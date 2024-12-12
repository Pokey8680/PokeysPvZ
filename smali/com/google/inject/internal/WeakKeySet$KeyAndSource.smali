.class final Lcom/google/inject/internal/WeakKeySet$KeyAndSource;
.super Ljava/lang/Object;
.source "WeakKeySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/WeakKeySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyAndSource"
.end annotation


# instance fields
.field final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation
.end field

.field final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/inject/Key;Ljava/lang/Object;)V
    .locals 0
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    .line 134
    iput-object p2, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->source:Ljava/lang/Object;

    .line 135
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p0, p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    instance-of v3, p1, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;

    if-nez v3, :cond_2

    move v1, v2

    .line 149
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 152
    check-cast v0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;

    .line 153
    .local v0, "other":Lcom/google/inject/internal/WeakKeySet$KeyAndSource;
    iget-object v3, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    iget-object v4, v0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    invoke-static {v3, v4}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->source:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->source:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->source:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
