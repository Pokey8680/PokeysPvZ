.class public final Lcom/google/inject/spi/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/inject/spi/Element;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final message:Ljava/lang/String;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    .line 54
    const-string v0, "message"

    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    .line 56
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v2, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 133
    .local v1, "sourcesAsStrings":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 134
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    new-instance v2, Lcom/google/inject/spi/Message;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "visitor":Lcom/google/inject/spi/ElementVisitor;, "Lcom/google/inject/spi/ElementVisitor<TT;>;"
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/Message;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 1
    .param p1, "binder"    # Lcom/google/inject/Binder;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    .line 125
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 115
    instance-of v2, p1, Lcom/google/inject/spi/Message;

    if-nez v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 118
    check-cast v0, Lcom/google/inject/spi/Message;

    .line 119
    .local v0, "e":Lcom/google/inject/spi/Message;
    iget-object v2, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    iget-object v3, v0, Lcom/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    iget-object v3, v0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    iget-object v1, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    return-object v0
.end method
