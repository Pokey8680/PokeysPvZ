.class final Lcom/google/inject/spi/ModuleSource;
.super Ljava/lang/Object;
.source "ModuleSource.java"


# instance fields
.field private final moduleClassName:Ljava/lang/String;

.field private final parent:Lcom/google/inject/spi/ModuleSource;

.field private final partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;


# direct methods
.method constructor <init>(Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V
    .locals 1
    .param p1, "module"    # Lcom/google/inject/Module;
    .param p2, "partialCallStack"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/inject/spi/ModuleSource;-><init>(Lcom/google/inject/spi/ModuleSource;Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/google/inject/spi/ModuleSource;Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/inject/spi/ModuleSource;
    .param p2, "module"    # Lcom/google/inject/Module;
    .param p3, "partialCallStack"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "module cannot be null."

    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "partialCallStack cannot be null."

    invoke-static {p3, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/ModuleSource;->moduleClassName:Ljava/lang/String;

    .line 77
    invoke-static {p3}, Lcom/google/inject/internal/util/StackTraceElements;->convertToInMemoryStackTraceElement([Ljava/lang/StackTraceElement;)[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .line 78
    return-void
.end method


# virtual methods
.method createChild(Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)Lcom/google/inject/spi/ModuleSource;
    .locals 1
    .param p1, "module"    # Lcom/google/inject/Module;
    .param p2, "partialCallStack"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 114
    new-instance v0, Lcom/google/inject/spi/ModuleSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/inject/spi/ModuleSource;-><init>(Lcom/google/inject/spi/ModuleSource;Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V

    return-object v0
.end method

.method getModuleClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->moduleClassName:Ljava/lang/String;

    return-object v0
.end method

.method getModuleClassNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 131
    .local v1, "classNames":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<Ljava/lang/String;>;"
    move-object v2, p0

    .line 132
    .local v2, "current":Lcom/google/inject/spi/ModuleSource;
    :goto_0
    if-eqz v2, :cond_0

    .line 133
    iget-object v0, v2, Lcom/google/inject/spi/ModuleSource;->moduleClassName:Ljava/lang/String;

    .line 134
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    .line 135
    iget-object v2, v2, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    .line 136
    goto :goto_0

    .line 137
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method getParent()Lcom/google/inject/spi/ModuleSource;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    return-object v0
.end method

.method getPartialCallStack()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    invoke-static {v0}, Lcom/google/inject/internal/util/StackTraceElements;->convertToStackTraceElement([Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method getPartialCallStackSize()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v0, v0

    return v0
.end method

.method getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 7

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v5

    .line 169
    .local v5, "stackTraceSize":I
    new-array v0, v5, [Ljava/lang/StackTraceElement;

    .line 170
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    .line 171
    .local v4, "cursor":I
    move-object v3, p0

    .line 172
    .local v3, "current":Lcom/google/inject/spi/ModuleSource;
    :goto_0
    if-eqz v3, :cond_0

    .line 173
    iget-object v6, v3, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    invoke-static {v6}, Lcom/google/inject/internal/util/StackTraceElements;->convertToStackTraceElement([Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 175
    .local v1, "chunk":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    .line 176
    .local v2, "chunkSize":I
    const/4 v6, 0x0

    invoke-static {v1, v6, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v3, v3, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    .line 178
    add-int/2addr v4, v2

    .line 179
    goto :goto_0

    .line 180
    .end local v1    # "chunk":[Ljava/lang/StackTraceElement;
    .end local v2    # "chunkSize":I
    :cond_0
    return-object v0
.end method

.method getStackTraceSize()I
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v0, v0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v0}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v0}, Lcom/google/inject/spi/ModuleSource;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
