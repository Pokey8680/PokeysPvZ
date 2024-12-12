.class public Lcom/google/inject/internal/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/Annotations$AnnotationChecker;
    }
.end annotation


# static fields
.field private static final DEEP_TO_STRING_FN:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

.field private static final bindingAnnotationChecker:Lcom/google/inject/internal/Annotations$AnnotationChecker;

.field private static final cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LoadingCache",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final scopeChecker:Lcom/google/inject/internal/Annotations$AnnotationChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weakKeys()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/inject/internal/Annotations$1;

    invoke-direct {v1}, Lcom/google/inject/internal/Annotations$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build(Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/Annotations;->cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    .line 154
    const-string v0, ", "

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Joiner;->on(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/Annotations;->JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    .line 156
    new-instance v0, Lcom/google/inject/internal/Annotations$3;

    invoke-direct {v0}, Lcom/google/inject/internal/Annotations$3;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Annotations;->DEEP_TO_STRING_FN:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 241
    new-instance v0, Lcom/google/inject/internal/Annotations$AnnotationChecker;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/google/inject/ScopeAnnotation;

    aput-object v2, v1, v3

    const-class v2, Ljavax/inject/Scope;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/internal/Annotations$AnnotationChecker;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/inject/internal/Annotations;->scopeChecker:Lcom/google/inject/internal/Annotations$AnnotationChecker;

    .line 294
    new-instance v0, Lcom/google/inject/internal/Annotations$AnnotationChecker;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/google/inject/BindingAnnotation;

    aput-object v2, v1, v3

    const-class v2, Ljavax/inject/Qualifier;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/internal/Annotations$AnnotationChecker;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/inject/internal/Annotations;->bindingAnnotationChecker:Lcom/google/inject/internal/Annotations$AnnotationChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->generateAnnotationImpl(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/inject/internal/Annotations;->annotationToString(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Class;Ljava/util/Map;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/inject/internal/Annotations;->annotationHashCode(Ljava/lang/Class;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/google/inject/internal/Annotations;->annotationEquals(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static annotationEquals(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 10
    .param p2, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p1, "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 129
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v5

    .line 132
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 133
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "name":Ljava/lang/String;
    new-array v7, v6, [Ljava/lang/Object;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v5

    new-array v8, v6, [Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 139
    goto :goto_0
.end method

.method private static annotationHashCode(Ljava/lang/Class;Ljava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p1, "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 146
    .local v5, "result":I
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 147
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 149
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    mul-int/lit8 v7, v7, 0x7f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1f

    xor-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    return v5
.end method

.method private static annotationToString(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p1, "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/inject/internal/Annotations;->JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    sget-object v2, Lcom/google/inject/internal/Annotations;->DEEP_TO_STRING_FN:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-static {p1, v2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformValues(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static canonicalizeIfNamed(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v0, Ljavax/inject/Named;

    if-ne p0, v0, :cond_0

    .line 323
    const-class p0, Lcom/google/inject/name/Named;

    .line 325
    .end local p0    # "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    return-object p0
.end method

.method public static canonicalizeIfNamed(Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p0, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 309
    instance-of v0, p0, Ljavax/inject/Named;

    if-eqz v0, :cond_0

    .line 310
    check-cast p0, Ljavax/inject/Named;

    .end local p0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p0}, Ljavax/inject/Named;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/name/Names;->named(Ljava/lang/String;)Lcom/google/inject/name/Named;

    move-result-object p0

    .line 312
    :cond_0
    return-object p0
.end method

.method public static checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/google/inject/internal/util/Classes;->isConcrete(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-static {p2, p0}, Lcom/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 259
    .local v0, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p2, p0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lcom/google/inject/internal/Errors;->scopeAnnotationOnAbstractType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method public static findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 7
    .param p0, "errors"    # Lcom/google/inject/internal/Errors;
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 278
    const/4 v3, 0x0

    .line 280
    .local v3, "found":Ljava/lang/annotation/Annotation;
    move-object v2, p2

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 281
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 282
    .local v1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {v1}, Lcom/google/inject/internal/Annotations;->isBindingAnnotation(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 283
    if-eqz v3, :cond_1

    .line 284
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v1}, Lcom/google/inject/internal/Errors;->duplicateBindingAnnotations(Ljava/lang/reflect/Member;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 280
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    :cond_1
    move-object v3, v0

    goto :goto_1

    .line 291
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_2
    return-object v3
.end method

.method public static findScopeAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "implementation":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static findScopeAnnotation(Lcom/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .locals 7
    .param p0, "errors"    # Lcom/google/inject/internal/Errors;
    .param p1, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v3, 0x0

    .line 190
    .local v3, "found":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 191
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 192
    .local v1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {v1}, Lcom/google/inject/internal/Annotations;->isScopeAnnotation(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {p0, v3, v1}, Lcom/google/inject/internal/Errors;->duplicateScopeAnnotations(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 190
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    :cond_1
    move-object v3, v1

    goto :goto_1

    .line 201
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_2
    return-object v3
.end method

.method public static generateAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->isAllDefaultMethods(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not all default methods"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/google/inject/internal/Annotations;->cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0, p0}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method private static generateAnnotationImpl(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->resolveMembers(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    .line 95
    .local v0, "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-instance v3, Lcom/google/inject/internal/Annotations$2;

    invoke-direct {v3, p0, v0}, Lcom/google/inject/internal/Annotations$2;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public static getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;
    .locals 3
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    invoke-virtual {p3}, Lcom/google/inject/internal/Errors;->size()I

    move-result v1

    .line 268
    .local v1, "numErrorsBefore":I
    invoke-static {p3, p1, p2}, Lcom/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 269
    .local v0, "found":Ljava/lang/annotation/Annotation;
    invoke-virtual {p3, v1}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 270
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p0, v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v2

    goto :goto_0
.end method

.method public static isAllDefaultMethods(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x0

    .line 65
    .local v1, "hasMethods":Z
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 66
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    .line 67
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 68
    const/4 v5, 0x0

    .line 71
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_1
    return v5

    .line 65
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_1
    move v5, v1

    .line 71
    goto :goto_1
.end method

.method public static isBindingAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v0, Lcom/google/inject/internal/Annotations;->bindingAnnotationChecker:Lcom/google/inject/internal/Annotations$AnnotationChecker;

    invoke-virtual {v0, p0}, Lcom/google/inject/internal/Annotations$AnnotationChecker;->hasAnnotations(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isMarker(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRetainedAtRuntime(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v1, Ljava/lang/annotation/Retention;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Retention;

    .line 177
    .local v0, "retention":Ljava/lang/annotation/Retention;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v1

    sget-object v2, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isScopeAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v0, Lcom/google/inject/internal/Annotations;->scopeChecker:Lcom/google/inject/internal/Annotations$AnnotationChecker;

    invoke-virtual {v0, p0}, Lcom/google/inject/internal/Annotations$AnnotationChecker;->hasAnnotations(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static resolveMembers(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v4

    .line 120
    .local v4, "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 121
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method
