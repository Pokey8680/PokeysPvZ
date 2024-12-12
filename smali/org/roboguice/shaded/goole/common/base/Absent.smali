.class final Lorg/roboguice/shaded/goole/common/base/Absent;
.super Lorg/roboguice/shaded/goole/common/base/Optional;
.source "Absent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/base/Optional",
        "<TT;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# static fields
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/base/Absent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Absent",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Absent;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/Absent;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Absent;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Absent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Optional;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Absent;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Absent;

    return-object v0
.end method

.method static withType()Lorg/roboguice/shaded/goole/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Absent;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Absent;

    return-object v0
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    const v0, 0x598df91c

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string v0, "use Optional.orNull() instead of Optional.or(null)"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public or(Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    .local p1, "supplier":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<+TT;>;"
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "use Optional.orNull() instead of a Supplier that returns null"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public or(Lorg/roboguice/shaded/goole/common/base/Optional;)Lorg/roboguice/shaded/goole/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Optional",
            "<+TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    .local p1, "secondChoice":Lorg/roboguice/shaded/goole/common/base/Optional;, "Lorg/roboguice/shaded/goole/common/base/Optional<+TT;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Optional;

    return-object v0
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    const-string v0, "Optional.absent()"

    return-object v0
.end method

.method public transform(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TT;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Optional",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Absent;, "Lorg/roboguice/shaded/goole/common/base/Absent<TT;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TT;TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Optional;->absent()Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
