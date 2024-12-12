.class final Lcom/google/inject/internal/MembersInjectorImpl;
.super Ljava/lang/Object;
.source "MembersInjectorImpl.java"

# interfaces
.implements Lcom/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/MembersInjector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final injectionListeners:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionListener",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private final memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Lcom/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final typeLiteral:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final userMembersInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/EncounterImpl;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 1
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Lcom/google/inject/internal/EncounterImpl",
            "<TT;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Lcom/google/inject/internal/SingleMemberInjector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    .local p2, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    .local p3, "encounter":Lcom/google/inject/internal/EncounterImpl;, "Lcom/google/inject/internal/EncounterImpl<TT;>;"
    .local p4, "memberInjectors":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<Lcom/google/inject/internal/SingleMemberInjector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/inject/internal/MembersInjectorImpl;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 46
    iput-object p2, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 47
    iput-object p4, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 48
    invoke-virtual {p3}, Lcom/google/inject/internal/EncounterImpl;->getMembersInjectors()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl;->userMembersInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 49
    invoke-virtual {p3}, Lcom/google/inject/internal/EncounterImpl;->getInjectionListeners()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl;->injectionListeners:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 53
    return-void
.end method


# virtual methods
.method public getInjectionPoints()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 154
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<Lcom/google/inject/spi/InjectionPoint;>;"
    iget-object v3, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/internal/SingleMemberInjector;

    .line 155
    .local v2, "memberInjector":Lcom/google/inject/internal/SingleMemberInjector;
    invoke-interface {v2}, Lcom/google/inject/internal/SingleMemberInjector;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 157
    .end local v2    # "memberInjector":Lcom/google/inject/internal/SingleMemberInjector;
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3
.end method

.method public getMemberInjectors()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Lcom/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;Z)V
    .locals 9
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p5, "source"    # Ljava/lang/Object;
    .param p6, "toolableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p3, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "provisionCallback":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v8, p0, Lcom/google/inject/internal/MembersInjectorImpl;->injector:Lcom/google/inject/internal/InjectorImpl;

    new-instance v0, Lcom/google/inject/internal/MembersInjectorImpl$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/MembersInjectorImpl$1;-><init>(Lcom/google/inject/internal/MembersInjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/ProvisionListenerStackCallback;Lcom/google/inject/internal/Errors;Ljava/lang/Object;Z)V

    invoke-virtual {v8, v0}, Lcom/google/inject/internal/InjectorImpl;->callInContext(Lcom/google/inject/internal/ContextualCallable;)Ljava/lang/Object;

    .line 110
    if-nez p6, :cond_0

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/google/inject/internal/MembersInjectorImpl;->notifyListeners(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    goto :goto_0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    new-instance v2, Lcom/google/inject/internal/Errors;

    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-direct {v2, v0}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 62
    .local v2, "errors":Lcom/google/inject/internal/Errors;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/inject/internal/MembersInjectorImpl;->injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->throwProvisionExceptionIfErrorsExist()V

    .line 68
    return-void

    .line 63
    :catch_0
    move-exception v7

    .line 64
    .local v7, "e":Lcom/google/inject/internal/ErrorsException;
    invoke-virtual {v7}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method injectMembers(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Z)V
    .locals 7
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "context"    # Lcom/google/inject/internal/InternalContext;
    .param p4, "toolableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v6}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 130
    iget-object v6, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v6, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/internal/SingleMemberInjector;

    .line 131
    .local v3, "injector":Lcom/google/inject/internal/SingleMemberInjector;
    if-eqz p4, :cond_0

    invoke-interface {v3}, Lcom/google/inject/internal/SingleMemberInjector;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/inject/spi/InjectionPoint;->isToolable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    :cond_0
    invoke-interface {v3, p2, p3, p1}, Lcom/google/inject/internal/SingleMemberInjector;->inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Object;)V

    .line 129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "injector":Lcom/google/inject/internal/SingleMemberInjector;
    :cond_2
    if-nez p4, :cond_3

    .line 138
    iget-object v6, p0, Lcom/google/inject/internal/MembersInjectorImpl;->userMembersInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-virtual {v6}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/inject/MembersInjector;

    .line 140
    .local v5, "userMembersInjector":Lcom/google/inject/MembersInjector;, "Lcom/google/inject/MembersInjector<-TT;>;"
    :try_start_0
    invoke-interface {v5, p1}, Lcom/google/inject/MembersInjector;->injectMembers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {p2, v5, v6, v0}, Lcom/google/inject/internal/Errors;->errorInUserInjector(Lcom/google/inject/MembersInjector;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "userMembersInjector":Lcom/google/inject/MembersInjector;, "Lcom/google/inject/MembersInjector<-TT;>;"
    :cond_3
    return-void
.end method

.method notifyListeners(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    .locals 5
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v3

    .line 117
    .local v3, "numErrorsBefore":I
    iget-object v4, p0, Lcom/google/inject/internal/MembersInjectorImpl;->injectionListeners:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/spi/InjectionListener;

    .line 119
    .local v2, "injectionListener":Lcom/google/inject/spi/InjectionListener;, "Lcom/google/inject/spi/InjectionListener<-TT;>;"
    :try_start_0
    invoke-interface {v2, p1}, Lcom/google/inject/spi/InjectionListener;->afterInjection(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {p2, v2, v4, v0}, Lcom/google/inject/internal/Errors;->errorNotifyingInjectionListener(Lcom/google/inject/spi/InjectionListener;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "injectionListener":Lcom/google/inject/spi/InjectionListener;, "Lcom/google/inject/spi/InjectionListener<-TT;>;"
    :cond_0
    invoke-virtual {p2, v3}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    .local p0, "this":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MembersInjector<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
