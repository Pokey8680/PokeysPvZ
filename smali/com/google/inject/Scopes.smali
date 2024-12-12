.class public Lcom/google/inject/Scopes;
.super Ljava/lang/Object;
.source "Scopes.java"


# static fields
.field private static final IS_SINGLETON_VISITOR:Lcom/google/inject/spi/BindingScopingVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/BindingScopingVisitor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_SCOPE:Lcom/google/inject/Scope;

.field private static final NULL:Ljava/lang/Object;

.field public static final SINGLETON:Lcom/google/inject/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->NULL:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/google/inject/Scopes$1;

    invoke-direct {v0}, Lcom/google/inject/Scopes$1;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    .line 114
    new-instance v0, Lcom/google/inject/Scopes$2;

    invoke-direct {v0}, Lcom/google/inject/Scopes$2;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->NO_SCOPE:Lcom/google/inject/Scope;

    .line 123
    new-instance v0, Lcom/google/inject/Scopes$3;

    invoke-direct {v0}, Lcom/google/inject/Scopes$3;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->IS_SINGLETON_VISITOR:Lcom/google/inject/spi/BindingScopingVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/inject/Scopes;->NULL:Ljava/lang/Object;

    return-object v0
.end method

.method public static isCircularProxy(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 243
    instance-of v0, p0, Lcom/google/inject/internal/CircularDependencyProxy;

    return v0
.end method

.method public static isScoped(Lcom/google/inject/Binding;Lcom/google/inject/Scope;Ljava/lang/Class;)Z
    .locals 5
    .param p1, "scope"    # Lcom/google/inject/Scope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<*>;",
            "Lcom/google/inject/Scope;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    .local p2, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :goto_0
    new-instance v4, Lcom/google/inject/Scopes$4;

    invoke-direct {v4, p2, p1}, Lcom/google/inject/Scopes$4;-><init>(Ljava/lang/Class;Lcom/google/inject/Scope;)V

    invoke-interface {p0, v4}, Lcom/google/inject/Binding;->acceptScopingVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 210
    .local v3, "matches":Z
    if-eqz v3, :cond_0

    .line 211
    const/4 v4, 0x1

    .line 230
    :goto_1
    return v4

    .line 214
    :cond_0
    instance-of v4, p0, Lcom/google/inject/internal/LinkedBindingImpl;

    if-eqz v4, :cond_1

    move-object v2, p0

    .line 215
    check-cast v2, Lcom/google/inject/internal/LinkedBindingImpl;

    .line 216
    .local v2, "linkedBinding":Lcom/google/inject/internal/LinkedBindingImpl;, "Lcom/google/inject/internal/LinkedBindingImpl<*>;"
    invoke-virtual {v2}, Lcom/google/inject/internal/LinkedBindingImpl;->getInjector()Lcom/google/inject/internal/InjectorImpl;

    move-result-object v1

    .line 217
    .local v1, "injector":Lcom/google/inject/Injector;
    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {v2}, Lcom/google/inject/internal/LinkedBindingImpl;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    .line 219
    goto :goto_0

    .line 221
    .end local v1    # "injector":Lcom/google/inject/Injector;
    .end local v2    # "linkedBinding":Lcom/google/inject/internal/LinkedBindingImpl;, "Lcom/google/inject/internal/LinkedBindingImpl<*>;"
    :cond_1
    instance-of v4, p0, Lcom/google/inject/spi/ExposedBinding;

    if-eqz v4, :cond_2

    move-object v0, p0

    .line 222
    check-cast v0, Lcom/google/inject/spi/ExposedBinding;

    .line 223
    .local v0, "exposedBinding":Lcom/google/inject/spi/ExposedBinding;, "Lcom/google/inject/spi/ExposedBinding<*>;"
    invoke-interface {v0}, Lcom/google/inject/spi/ExposedBinding;->getPrivateElements()Lcom/google/inject/spi/PrivateElements;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/inject/spi/PrivateElements;->getInjector()Lcom/google/inject/Injector;

    move-result-object v1

    .line 224
    .restart local v1    # "injector":Lcom/google/inject/Injector;
    if-eqz v1, :cond_2

    .line 225
    invoke-interface {v0}, Lcom/google/inject/spi/ExposedBinding;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    .line 226
    goto :goto_0

    .line 230
    .end local v0    # "exposedBinding":Lcom/google/inject/spi/ExposedBinding;, "Lcom/google/inject/spi/ExposedBinding<*>;"
    .end local v1    # "injector":Lcom/google/inject/Injector;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isSingleton(Lcom/google/inject/Binding;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    :goto_0
    sget-object v4, Lcom/google/inject/Scopes;->IS_SINGLETON_VISITOR:Lcom/google/inject/spi/BindingScopingVisitor;

    invoke-interface {p0, v4}, Lcom/google/inject/Binding;->acceptScopingVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 154
    .local v3, "singleton":Z
    if-eqz v3, :cond_0

    .line 155
    const/4 v4, 0x1

    .line 174
    :goto_1
    return v4

    .line 158
    :cond_0
    instance-of v4, p0, Lcom/google/inject/internal/LinkedBindingImpl;

    if-eqz v4, :cond_1

    move-object v2, p0

    .line 159
    check-cast v2, Lcom/google/inject/internal/LinkedBindingImpl;

    .line 160
    .local v2, "linkedBinding":Lcom/google/inject/internal/LinkedBindingImpl;, "Lcom/google/inject/internal/LinkedBindingImpl<*>;"
    invoke-virtual {v2}, Lcom/google/inject/internal/LinkedBindingImpl;->getInjector()Lcom/google/inject/internal/InjectorImpl;

    move-result-object v1

    .line 161
    .local v1, "injector":Lcom/google/inject/Injector;
    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v2}, Lcom/google/inject/internal/LinkedBindingImpl;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    .line 163
    goto :goto_0

    .line 165
    .end local v1    # "injector":Lcom/google/inject/Injector;
    .end local v2    # "linkedBinding":Lcom/google/inject/internal/LinkedBindingImpl;, "Lcom/google/inject/internal/LinkedBindingImpl<*>;"
    :cond_1
    instance-of v4, p0, Lcom/google/inject/spi/ExposedBinding;

    if-eqz v4, :cond_2

    move-object v0, p0

    .line 166
    check-cast v0, Lcom/google/inject/spi/ExposedBinding;

    .line 167
    .local v0, "exposedBinding":Lcom/google/inject/spi/ExposedBinding;, "Lcom/google/inject/spi/ExposedBinding<*>;"
    invoke-interface {v0}, Lcom/google/inject/spi/ExposedBinding;->getPrivateElements()Lcom/google/inject/spi/PrivateElements;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/inject/spi/PrivateElements;->getInjector()Lcom/google/inject/Injector;

    move-result-object v1

    .line 168
    .restart local v1    # "injector":Lcom/google/inject/Injector;
    if-eqz v1, :cond_2

    .line 169
    invoke-interface {v0}, Lcom/google/inject/spi/ExposedBinding;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    .line 170
    goto :goto_0

    .line 174
    .end local v0    # "exposedBinding":Lcom/google/inject/spi/ExposedBinding;, "Lcom/google/inject/spi/ExposedBinding<*>;"
    .end local v1    # "injector":Lcom/google/inject/Injector;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
