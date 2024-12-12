.class public final Lcom/google/inject/spi/ElementSource;
.super Ljava/lang/Object;
.source "ElementSource.java"


# instance fields
.field final declaringSource:Ljava/lang/Object;

.field final moduleSource:Lcom/google/inject/spi/ModuleSource;

.field final originalElementSource:Lcom/google/inject/spi/ElementSource;

.field final partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;


# direct methods
.method constructor <init>(Lcom/google/inject/spi/ElementSource;Ljava/lang/Object;Lcom/google/inject/spi/ModuleSource;[Ljava/lang/StackTraceElement;)V
    .locals 1
    .param p1, "originalSource"    # Lcom/google/inject/spi/ElementSource;
    .param p2, "declaringSource"    # Ljava/lang/Object;
    .param p3, "moduleSource"    # Lcom/google/inject/spi/ModuleSource;
    .param p4, "partialCallStack"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "declaringSource cannot be null."

    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "moduleSource cannot be null."

    invoke-static {p3, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "partialCallStack cannot be null."

    invoke-static {p4, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Lcom/google/inject/spi/ElementSource;->originalElementSource:Lcom/google/inject/spi/ElementSource;

    .line 98
    iput-object p2, p0, Lcom/google/inject/spi/ElementSource;->declaringSource:Ljava/lang/Object;

    .line 99
    iput-object p3, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 100
    invoke-static {p4}, Lcom/google/inject/internal/util/StackTraceElements;->convertToInMemoryStackTraceElement([Ljava/lang/StackTraceElement;)[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/ElementSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .line 101
    return-void
.end method


# virtual methods
.method public getDeclaringSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/inject/spi/ElementSource;->declaringSource:Ljava/lang/Object;

    return-object v0
.end method

.method public getModuleClassNames()Ljava/util/List;
    .locals 1
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
    .line 128
    iget-object v0, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v0}, Lcom/google/inject/spi/ModuleSource;->getModuleClassNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModuleConfigurePositionsInStackTrace()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v5, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v5}, Lcom/google/inject/spi/ModuleSource;->size()I

    move-result v4

    .line 151
    .local v4, "size":I
    new-array v3, v4, [Ljava/lang/Integer;

    .line 152
    .local v3, "positions":[Ljava/lang/Integer;
    iget-object v5, p0, Lcom/google/inject/spi/ElementSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v0, v5

    .line 153
    .local v0, "chunkSize":I
    const/4 v5, 0x0

    add-int/lit8 v6, v0, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 154
    iget-object v1, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 155
    .local v1, "current":Lcom/google/inject/spi/ModuleSource;
    const/4 v2, 0x1

    .local v2, "cursor":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 156
    invoke-virtual {v1}, Lcom/google/inject/spi/ModuleSource;->getPartialCallStackSize()I

    move-result v0

    .line 157
    add-int/lit8 v5, v2, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 158
    invoke-virtual {v1}, Lcom/google/inject/spi/ModuleSource;->getParent()Lcom/google/inject/spi/ModuleSource;

    move-result-object v1

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v5

    return-object v5
.end method

.method public getOriginalElementSource()Lcom/google/inject/spi/ElementSource;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/inject/spi/ElementSource;->originalElementSource:Lcom/google/inject/spi/ElementSource;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v4, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v4}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v2

    .line 173
    .local v2, "modulesCallStackSize":I
    iget-object v4, p0, Lcom/google/inject/spi/ElementSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v1, v4

    .line 174
    .local v1, "chunkSize":I
    iget-object v4, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v4}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v4

    add-int v3, v4, v1

    .line 175
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/StackTraceElement;

    .line 176
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    iget-object v4, p0, Lcom/google/inject/spi/ElementSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    invoke-static {v4}, Lcom/google/inject/internal/util/StackTraceElements;->convertToStackTraceElement([Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v4, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v4}, Lcom/google/inject/spi/ModuleSource;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/inject/spi/ElementSource;->getDeclaringSource()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
