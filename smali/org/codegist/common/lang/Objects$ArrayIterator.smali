.class Lorg/codegist/common/lang/Objects$ArrayIterator;
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
    name = "ArrayIterator"
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
.field private final array:Ljava/lang/Object;

.field private index:I

.field private final length:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 109
    .local p0, "this":Lorg/codegist/common/lang/Objects$ArrayIterator;, "Lorg/codegist/common/lang/Objects$ArrayIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/codegist/common/lang/Objects$ArrayIterator;->index:I

    .line 110
    iput-object p1, p0, Lorg/codegist/common/lang/Objects$ArrayIterator;->array:Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/codegist/common/lang/Objects$ArrayIterator;->length:I

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/codegist/common/lang/Objects$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/codegist/common/lang/Objects$1;

    .prologue
    .line 104
    .local p0, "this":Lorg/codegist/common/lang/Objects$ArrayIterator;, "Lorg/codegist/common/lang/Objects$ArrayIterator<TT;>;"
    invoke-direct {p0, p1}, Lorg/codegist/common/lang/Objects$ArrayIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 115
    .local p0, "this":Lorg/codegist/common/lang/Objects$ArrayIterator;, "Lorg/codegist/common/lang/Objects$ArrayIterator<TT;>;"
    iget v0, p0, Lorg/codegist/common/lang/Objects$ArrayIterator;->index:I

    iget v1, p0, Lorg/codegist/common/lang/Objects$ArrayIterator;->length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/codegist/common/lang/Objects$ArrayIterator;, "Lorg/codegist/common/lang/Objects$ArrayIterator<TT;>;"
    iget-object v0, p0, Lorg/codegist/common/lang/Objects$ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/codegist/common/lang/Objects$ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codegist/common/lang/Objects$ArrayIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lorg/codegist/common/lang/Objects$ArrayIterator;, "Lorg/codegist/common/lang/Objects$ArrayIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
