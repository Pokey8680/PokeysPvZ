.class Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositionPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Predicate",
        "<TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final f:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<TA;+TB;>;"
        }
    .end annotation
.end field

.field final p:Lorg/roboguice/shaded/goole/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TB;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<TA;+TB;>;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    .local p1, "p":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<TB;>;"
    .local p2, "f":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<TA;+TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Predicate;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->p:Lorg/roboguice/shaded/goole/common/base/Predicate;

    .line 531
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Function;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->f:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 532
    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/base/Predicate;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/base/Function;
    .param p3, "x2"    # Lorg/roboguice/shaded/goole/common/base/Predicates$1;

    .prologue
    .line 524
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;-><init>(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->p:Lorg/roboguice/shaded/goole/common/base/Predicate;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->f:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    const/4 v1, 0x0

    .line 540
    instance-of v2, p1, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 541
    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;

    .line 542
    .local v0, "that":Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate<**>;"
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->f:Lorg/roboguice/shaded/goole/common/base/Function;

    iget-object v3, v0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->f:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->p:Lorg/roboguice/shaded/goole/common/base/Predicate;

    iget-object v3, v0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->p:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 544
    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate<**>;"
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 548
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->f:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->p:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 552
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->p:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;->f:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method