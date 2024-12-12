.class public Lcom/google/inject/Key;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/Key$AnnotationTypeStrategy;,
        Lcom/google/inject/Key$AnnotationInstanceStrategy;,
        Lcom/google/inject/Key$NullAnnotationStrategy;,
        Lcom/google/inject/Key$AnnotationStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

.field private final hashCode:I

.field private final toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeLiteral:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    iput-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 122
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/google/inject/Key;->hashCode:I

    .line 123
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 124
    return-void
.end method

.method private constructor <init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V
    .locals 1
    .param p2, "annotationStrategy"    # Lcom/google/inject/Key$AnnotationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Lcom/google/inject/Key$AnnotationStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p1, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 140
    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 141
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/google/inject/Key;->hashCode:I

    .line 142
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 143
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 80
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/google/inject/Key;->hashCode:I

    .line 81
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 82
    return-void
.end method

.method protected constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 97
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 102
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/google/inject/Key;->hashCode:I

    .line 103
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotationStrategy"    # Lcom/google/inject/Key$AnnotationStrategy;

    .prologue
    .line 130
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 132
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 133
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/google/inject/Key;->hashCode:I

    .line 134
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/Key;)Lcom/google/inject/TypeLiteral;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/Key;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/inject/Key;)Lcom/google/inject/Key$AnnotationStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/Key;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    return-object v0
.end method

.method private computeHashCode()I
    .locals 2

    .prologue
    .line 149
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/Key$1;

    invoke-direct {v0, p0}, Lcom/google/inject/Key$1;-><init>(Lcom/google/inject/Key;)V

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Suppliers;->memoize(Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    return-object v0
.end method

.method private static ensureIsBindingAnnotation(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->isBindingAnnotation(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a binding annotation. Please annotate it with @BindingAnnotation."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method private static ensureRetainedAtRuntime(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->isRetainedAtRuntime(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not retained at runtime. Please annotate it with @Retention(RUNTIME)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public static get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    new-instance v0, Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 2
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method static get(Ljava/lang/Class;Lcom/google/inject/Key$AnnotationStrategy;)Lcom/google/inject/Key;
    .locals 1
    .param p1, "annotationStrategy"    # Lcom/google/inject/Key$AnnotationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/inject/Key$AnnotationStrategy;",
            ")",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/inject/Key;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 2
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method static strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key$AnnotationStrategy;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->canonicalizeIfNamed(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 383
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->isAllDefaultMethods(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->generateAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    .line 387
    :cond_0
    const-string v0, "annotation type"

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-static {p0}, Lcom/google/inject/Key;->ensureRetainedAtRuntime(Ljava/lang/Class;)V

    .line 389
    invoke-static {p0}, Lcom/google/inject/Key;->ensureIsBindingAnnotation(Ljava/lang/Class;)V

    .line 390
    new-instance v0, Lcom/google/inject/Key$AnnotationTypeStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key$AnnotationTypeStrategy;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    goto :goto_0
.end method

.method static strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;
    .locals 3
    .param p0, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 366
    const-string v1, "annotation"

    invoke-static {p0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 368
    .local v0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {v0}, Lcom/google/inject/Key;->ensureRetainedAtRuntime(Ljava/lang/Class;)V

    .line 369
    invoke-static {v0}, Lcom/google/inject/Key;->ensureIsBindingAnnotation(Ljava/lang/Class;)V

    .line 371
    invoke-static {v0}, Lcom/google/inject/internal/Annotations;->isMarker(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Lcom/google/inject/Key$AnnotationTypeStrategy;

    invoke-direct {v1, v0, p0}, Lcom/google/inject/Key$AnnotationTypeStrategy;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    .line 375
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/inject/Key$AnnotationInstanceStrategy;

    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->canonicalizeIfNamed(Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/Key$AnnotationInstanceStrategy;-><init>(Ljava/lang/annotation/Annotation;)V

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    if-ne p1, p0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    instance-of v3, p1, Lcom/google/inject/Key;

    if-nez v3, :cond_2

    move v1, v2

    .line 216
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 218
    check-cast v0, Lcom/google/inject/Key;

    .line 219
    .local v0, "other":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    iget-object v3, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    iget-object v4, v0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    iget-object v4, v0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v3, v4}, Lcom/google/inject/TypeLiteral;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method getAnnotationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v1}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 192
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v1}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeLiteral()Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    return-object v0
.end method

.method hasAnnotationType()Z
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 342
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->hasAttributes()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 224
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget v0, p0, Lcom/google/inject/Key;->hashCode:I

    return v0
.end method

.method public ofType(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p1, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    new-instance v0, Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-direct {v0, p1, v1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public ofType(Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-direct {v0, p1, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public ofType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-direct {v0, p1, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method providerKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<",
            "Lcom/google/inject/Provider",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->providerType()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/Key;->ofType(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public withoutAttributes()Lcom/google/inject/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    iget-object v2, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v2}, Lcom/google/inject/Key$AnnotationStrategy;->withoutAttributes()Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method
