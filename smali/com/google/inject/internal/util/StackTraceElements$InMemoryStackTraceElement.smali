.class public Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
.super Ljava/lang/Object;
.source "StackTraceElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/util/StackTraceElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InMemoryStackTraceElement"
.end annotation


# instance fields
.field private declaringClass:Ljava/lang/String;

.field private lineNumber:I

.field private methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/StackTraceElement;)V
    .locals 3
    .param p1, "ste"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 172
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    .line 178
    iput p3, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    .line 179
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    if-ne p1, p0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    instance-of v3, p1, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    if-nez v3, :cond_2

    move v1, v2

    .line 199
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 201
    check-cast v0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .line 202
    .local v0, "e":Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    iget-object v3, v0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    iget v4, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    return-object v0
.end method

.method getLineNumber()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    return v0
.end method

.method getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 209
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    add-int v0, v1, v2

    .line 210
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
