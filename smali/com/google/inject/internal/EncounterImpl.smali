.class final Lcom/google/inject/internal/EncounterImpl;
.super Ljava/lang/Object;
.source "EncounterImpl.java"

# interfaces
.implements Lcom/google/inject/spi/TypeEncounter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/TypeEncounter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final errors:Lcom/google/inject/internal/Errors;

.field private injectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/InjectionListener",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private final lookups:Lcom/google/inject/internal/Lookups;

.field private membersInjectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/Lookups;)V
    .locals 1
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "lookups"    # Lcom/google/inject/internal/Lookups;

    .prologue
    .line 51
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    .line 52
    iput-object p1, p0, Lcom/google/inject/internal/EncounterImpl;->errors:Lcom/google/inject/internal/Errors;

    .line 53
    iput-object p2, p0, Lcom/google/inject/internal/EncounterImpl;->lookups:Lcom/google/inject/internal/Lookups;

    .line 54
    return-void
.end method


# virtual methods
.method public addError(Lcom/google/inject/spi/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/google/inject/spi/Message;

    .prologue
    .line 123
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->addMessage(Lcom/google/inject/spi/Message;)Lcom/google/inject/internal/Errors;

    .line 125
    return-void
.end method

.method public varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 113
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, p1, p2}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    .line 115
    return-void
.end method

.method public addError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->errors:Lcom/google/inject/internal/Errors;

    const-string v1, "An exception was caught and reported. Message: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    .line 120
    return-void
.end method

.method getInjectionListeners()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionListener",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    .local p1, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->lookups:Lcom/google/inject/internal/Lookups;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/Lookups;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    return-object v0
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/EncounterImpl;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    return-object v0
.end method

.method getMembersInjectors()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->lookups:Lcom/google/inject/internal/Lookups;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/Lookups;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/EncounterImpl;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    .line 58
    return-void
.end method

.method public register(Lcom/google/inject/MembersInjector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/MembersInjector",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    .local p1, "membersInjector":Lcom/google/inject/MembersInjector;, "Lcom/google/inject/MembersInjector<-TT;>;"
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public register(Lcom/google/inject/spi/InjectionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    .local p1, "injectionListener":Lcom/google/inject/spi/InjectionListener;, "Lcom/google/inject/spi/InjectionListener<-TT;>;"
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method
