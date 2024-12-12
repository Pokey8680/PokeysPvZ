.class public final Lorg/roboguice/shaded/goole/common/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/Predicates$1;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$AssignableFromPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$InstanceOfPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$IsEqualToPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$NotPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final COMMA_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    const-string v0, ","

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Joiner;->on(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates;->COMMA_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800()Lorg/roboguice/shaded/goole/common/base/Joiner;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates;->COMMA_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    return-object v0
.end method

.method public static alwaysFalse()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->ALWAYS_FALSE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static alwaysTrue()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static and(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "components":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "first":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    .local p1, "second":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    new-instance v2, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->asList(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v2
.end method

.method public static varargs and([Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "components":[Lorg/roboguice/shaded/goole/common/base/Predicate;, "[Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method private static asList(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;)",
            "Ljava/util/List",
            "<",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "first":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    .local p1, "second":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/base/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static assignableFrom(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Class.isAssignableFrom"
    .end annotation

    .prologue
    .line 214
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$AssignableFromPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$AssignableFromPredicate;-><init>(Ljava/lang/Class;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static compose(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TB;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<TA;+TB;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<TB;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<TA;+TB;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;-><init>(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static contains(Ljava/util/regex/Pattern;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.regex.Pattern"
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public static containsPattern(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.regex.Pattern"
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 622
    .local v0, "element":Ljava/lang/Object;, "TT;"
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v2
.end method

.method private static varargs defensiveCopy([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static equalTo(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "target":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Predicates;->isNull()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    goto :goto_0
.end method

.method public static in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "target":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static instanceOf(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .prologue
    .line 201
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$InstanceOfPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$InstanceOfPredicate;-><init>(Ljava/lang/Class;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static isNull()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->IS_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$NotPredicate;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Predicates$NotPredicate;-><init>(Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static notNull()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->NOT_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static or(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "components":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static or(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "first":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    .local p1, "second":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    new-instance v2, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->asList(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v2
.end method

.method public static varargs or([Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "components":[Lorg/roboguice/shaded/goole/common/base/Predicate;, "[Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method
