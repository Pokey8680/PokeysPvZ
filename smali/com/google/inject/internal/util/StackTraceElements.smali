.class public Lcom/google/inject/internal/util/StackTraceElements;
.super Ljava/lang/Object;
.source "StackTraceElements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    }
.end annotation


# static fields
.field private static final EMPTY_INMEMORY_STACK_TRACE:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final UNKNOWN_SOURCE:Ljava/lang/String; = "Unknown Source"

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/google/inject/internal/util/StackTraceElements;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 37
    new-array v0, v1, [Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    sput-object v0, Lcom/google/inject/internal/util/StackTraceElements;->EMPTY_INMEMORY_STACK_TRACE:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .line 55
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    return-void
.end method

.method public static convertToInMemoryStackTraceElement([Ljava/lang/StackTraceElement;)[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    .locals 4
    .param p0, "stackTraceElements"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 107
    array-length v2, p0

    if-nez v2, :cond_1

    .line 108
    sget-object v1, Lcom/google/inject/internal/util/StackTraceElements;->EMPTY_INMEMORY_STACK_TRACE:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .line 116
    :cond_0
    return-object v1

    .line 110
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .line 112
    .local v1, "inMemoryStackTraceElements":[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 113
    new-instance v2, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;-><init>(Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/google/inject/internal/util/StackTraceElements;->weakIntern(Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    move-result-object v2

    aput-object v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static convertToStackTraceElement([Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7
    .param p0, "inMemoryStackTraceElements"    # [Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .prologue
    .line 124
    array-length v5, p0

    if-nez v5, :cond_1

    .line 125
    sget-object v4, Lcom/google/inject/internal/util/StackTraceElements;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 136
    :cond_0
    return-object v4

    .line 127
    :cond_1
    array-length v5, p0

    new-array v4, v5, [Ljava/lang/StackTraceElement;

    .line 129
    .local v4, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 130
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "declaringClass":Ljava/lang/String;
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "methodName":Ljava/lang/String;
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getLineNumber()I

    move-result v2

    .line 133
    .local v2, "lineNumber":I
    new-instance v5, Ljava/lang/StackTraceElement;

    const-string v6, "Unknown Source"

    invoke-direct {v5, v0, v3, v6, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v4, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;
    .locals 7
    .param p0, "member"    # Ljava/lang/reflect/Member;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    sget-object v5, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    .line 78
    :goto_0
    return-object v5

    .line 63
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "declaringClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 73
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 76
    .local v2, "lineNumber":I
    invoke-static {p0}, Lcom/google/inject/internal/util/Classes;->memberType(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v4

    .line 77
    .local v4, "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/reflect/Member;>;"
    const-class v5, Ljava/lang/reflect/Constructor;

    if-ne v4, v5, :cond_1

    const-string v3, "<init>"

    .line 78
    .local v3, "memberName":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 77
    .end local v3    # "memberName":Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static forType(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "implementation":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 89
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 92
    .local v1, "lineNumber":I
    new-instance v2, Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "class"

    invoke-direct {v2, v3, v4, v0, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method

.method private static weakIntern(Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    .locals 5
    .param p0, "inMemoryStackTraceElement"    # Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .prologue
    .line 141
    sget-object v2, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .line 143
    .local v0, "cached":Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    if-eqz v0, :cond_0

    .line 151
    .end local v0    # "cached":Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    .end local p0    # "inMemoryStackTraceElement":Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    :goto_0
    return-object v0

    .line 146
    .restart local v0    # "cached":Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    .restart local p0    # "inMemoryStackTraceElement":Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    :cond_0
    new-instance v1, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    invoke-virtual {p0}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/inject/internal/util/StackTraceElements;->weakIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/inject/internal/util/StackTraceElements;->weakIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getLineNumber()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    .end local p0    # "inMemoryStackTraceElement":Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    .local v1, "inMemoryStackTraceElement":Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    sget-object v2, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {v2, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 151
    goto :goto_0
.end method

.method private static weakIntern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v1, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "cached":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 160
    .end local v0    # "cached":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 159
    .restart local v0    # "cached":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {v1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    .line 160
    goto :goto_0
.end method
