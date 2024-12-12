.class public final Lcom/google/inject/internal/util/SourceProvider;
.super Ljava/lang/Object;
.source "SourceProvider.java"


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/google/inject/internal/util/SourceProvider;

.field public static final UNKNOWN_SOURCE:Ljava/lang/Object;


# instance fields
.field private final classNamesToSkip:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/inject/internal/util/SourceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "[unknown source]"

    sput-object v0, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/google/inject/internal/util/SourceProvider;

    const-class v1, Lcom/google/inject/internal/util/SourceProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/internal/util/SourceProvider;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, Lcom/google/inject/internal/util/SourceProvider;->DEFAULT_INSTANCE:Lcom/google/inject/internal/util/SourceProvider;

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/internal/util/SourceProvider;Ljava/lang/Iterable;)V
    .locals 4
    .param p1, "parent"    # Lcom/google/inject/internal/util/SourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/util/SourceProvider;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "classesToSkip":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/inject/internal/util/SourceProvider;->parent:Lcom/google/inject/internal/util/SourceProvider;

    .line 48
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 49
    .local v0, "classNamesToSkipBuilder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, "classToSkip":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-direct {p1, v1}, Lcom/google/inject/internal/util/SourceProvider;->shouldBeSkipped(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    :cond_1
    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 54
    .end local v1    # "classToSkip":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/inject/internal/util/SourceProvider;->classNamesToSkip:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "classesToSkip":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/util/SourceProvider;-><init>(Lcom/google/inject/internal/util/SourceProvider;Ljava/lang/Iterable;)V

    .line 43
    return-void
.end method

.method private static varargs asStrings([Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p0, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 71
    .local v4, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 72
    .local v1, "c":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "c":Ljava/lang/Class;
    :cond_0
    return-object v4
.end method

.method private shouldBeSkipped(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/inject/internal/util/SourceProvider;->parent:Lcom/google/inject/internal/util/SourceProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/util/SourceProvider;->parent:Lcom/google/inject/internal/util/SourceProvider;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/util/SourceProvider;->shouldBeSkipped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/util/SourceProvider;->classNamesToSkip:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get([Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;
    .locals 6
    .param p1, "stackTraceElements"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 82
    const-string v5, "The stack trace elements cannot be null."

    invoke-static {p1, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 84
    .local v2, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "className":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/inject/internal/util/SourceProvider;->shouldBeSkipped(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    return-object v2

    .line 83
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method public getFromClassNames(Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "moduleClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "The list of module class names cannot be null."

    invoke-static {p1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "moduleClassName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/inject/internal/util/SourceProvider;->shouldBeSkipped(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StackTraceElement;

    const-string v3, "configure"

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .end local v1    # "moduleClassName":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    goto :goto_0
.end method

.method public varargs plusSkippedClasses([Ljava/lang/Class;)Lcom/google/inject/internal/util/SourceProvider;
    .locals 2
    .param p1, "moreClassesToSkip"    # [Ljava/lang/Class;

    .prologue
    .line 59
    new-instance v0, Lcom/google/inject/internal/util/SourceProvider;

    invoke-static {p1}, Lcom/google/inject/internal/util/SourceProvider;->asStrings([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/internal/util/SourceProvider;-><init>(Lcom/google/inject/internal/util/SourceProvider;Ljava/lang/Iterable;)V

    return-object v0
.end method
