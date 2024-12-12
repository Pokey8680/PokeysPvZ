.class public final Lorg/codegist/common/lang/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/common/lang/Objects$1;,
        Lorg/codegist/common/lang/Objects$ArrayIterator;,
        Lorg/codegist/common/lang/Objects$SingletonIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static asCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 67
    .end local p0    # "o":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p0

    .line 57
    .restart local p0    # "o":Ljava/lang/Object;, "TT;"
    :cond_0
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 58
    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v1, Lorg/codegist/common/lang/Objects$ArrayIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/codegist/common/lang/Objects$ArrayIterator;-><init>(Ljava/lang/Object;Lorg/codegist/common/lang/Objects$1;)V

    .line 62
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 65
    goto :goto_0

    .line 67
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "o":Ljava/lang/Object;, "TT;"
    .local p1, "def":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .end local p0    # "o":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "o":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static iterate(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p0, :cond_0

    .line 73
    sget-object v0, Lorg/codegist/common/collect/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 79
    :goto_0
    return-object v0

    .line 74
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 75
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 76
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Lorg/codegist/common/lang/Objects$ArrayIterator;

    invoke-direct {v0, p0, v1}, Lorg/codegist/common/lang/Objects$ArrayIterator;-><init>(Ljava/lang/Object;Lorg/codegist/common/lang/Objects$1;)V

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Lorg/codegist/common/lang/Objects$SingletonIterator;

    invoke-direct {v0, p0, v1}, Lorg/codegist/common/lang/Objects$SingletonIterator;-><init>(Ljava/lang/Object;Lorg/codegist/common/lang/Objects$1;)V

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "defaultIfNull"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "defaultIfNull":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
