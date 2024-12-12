.class public abstract Lcom/google/inject/AbstractModule;
.super Ljava/lang/Object;
.source "AbstractModule.java"

# interfaces
.implements Lcom/google/inject/Module;


# instance fields
.field private annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

.field protected binder:Lcom/google/inject/Binder;

.field private noOpAnnotatedBindingBuilder:Lcom/google/inject/binder/AnnotatedBindingBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-direct {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/inject/AbstractModule;->noOpAnnotatedBindingBuilder:Lcom/google/inject/binder/AnnotatedBindingBuilder;

    return-void
.end method


# virtual methods
.method protected addError(Lcom/google/inject/spi/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/google/inject/spi/Message;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    .line 178
    return-void
.end method

.method protected varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method protected addError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->addError(Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method protected bind(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractModule;->isInjectable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->noOpAnnotatedBindingBuilder:Lcom/google/inject/binder/AnnotatedBindingBuilder;

    goto :goto_0
.end method

.method protected bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bindConstant()Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Binder;->bindConstant()Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/google/inject/spi/TypeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;",
            "Lcom/google/inject/spi/TypeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "typeMatcher":Lcom/google/inject/matcher/Matcher;, "Lcom/google/inject/matcher/Matcher<-Lcom/google/inject/TypeLiteral<*>;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 289
    return-void
.end method

.method protected varargs bindListener(Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V
    .locals 1
    .param p2, "listener"    # [Lcom/google/inject/spi/ProvisionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/Binding",
            "<*>;>;[",
            "Lcom/google/inject/spi/ProvisionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "bindingMatcher":Lcom/google/inject/matcher/Matcher;, "Lcom/google/inject/matcher/Matcher<-Lcom/google/inject/Binding<*>;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->bindListener(Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V

    .line 298
    return-void
.end method

.method protected bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V
    .locals 1
    .param p2, "scope"    # Lcom/google/inject/Scope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V

    .line 104
    return-void
.end method

.method protected binder()Lcom/google/inject/Binder;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The binder can only be used inside configure()"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract configure()V
.end method

.method public final declared-synchronized configure(Lcom/google/inject/Binder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/inject/Binder;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Re-entry is not allowed."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 76
    const-string v0, "builder"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Binder;

    iput-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :try_start_1
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->configure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected convertToTypes(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V
    .locals 1
    .param p2, "converter"    # Lcom/google/inject/spi/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "typeMatcher":Lcom/google/inject/matcher/Matcher;, "Lcom/google/inject/matcher/Matcher<-Lcom/google/inject/TypeLiteral<*>;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->convertToTypes(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    .line 255
    return-void
.end method

.method protected currentStage()Lcom/google/inject/Stage;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Binder;->currentStage()Lcom/google/inject/Stage;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationDatabaseFinder()Lcom/google/inject/AnnotationDatabaseFinder;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    return-object v0
.end method

.method protected getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 1
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
    .line 278
    .local p1, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    return-object v0
.end method

.method protected getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
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
    .line 270
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    return-object v0
.end method

.method protected getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 1
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
    .line 237
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method protected getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
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
    .line 245
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method protected hasInjectionPointsForAnnotation(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "annotationClass"    # Ljava/lang/Class;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedConstructorSet()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedMethodSet()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedFieldSet()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected install(Lcom/google/inject/Module;)V
    .locals 2
    .param p1, "module"    # Lcom/google/inject/Module;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/inject/AbstractModule;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 153
    check-cast v0, Lcom/google/inject/AbstractModule;

    iget-object v1, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0, v1}, Lcom/google/inject/AbstractModule;->setAnnotationDatabaseFinder(Lcom/google/inject/AnnotationDatabaseFinder;)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->install(Lcom/google/inject/Module;)V

    .line 156
    return-void
.end method

.method protected isInjectable(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0}, Lcom/google/inject/AnnotationDatabaseFinder;->getBindableClassesSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected requestInjection(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->requestInjection(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method protected varargs requestStaticInjection([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->requestStaticInjection([Ljava/lang/Class;)V

    .line 193
    return-void
.end method

.method protected requireBinding(Lcom/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    .line 218
    return-void
.end method

.method protected requireBinding(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    .line 230
    return-void
.end method

.method public setAnnotationDatabaseFinder(Lcom/google/inject/AnnotationDatabaseFinder;)V
    .locals 0
    .param p1, "annotationDatabaseFinder"    # Lcom/google/inject/AnnotationDatabaseFinder;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    .line 71
    return-void
.end method

.method protected superbind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method
