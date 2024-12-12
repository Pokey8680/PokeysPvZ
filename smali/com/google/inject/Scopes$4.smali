.class final Lcom/google/inject/Scopes$4;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Lcom/google/inject/spi/BindingScopingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/Scopes;->isScoped(Lcom/google/inject/Binding;Lcom/google/inject/Scope;Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/BindingScopingVisitor",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$scope:Lcom/google/inject/Scope;

.field final synthetic val$scopeAnnotation:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/google/inject/Scope;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/inject/Scopes$4;->val$scopeAnnotation:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/inject/Scopes$4;->val$scope:Lcom/google/inject/Scope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitEagerSingleton()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitEagerSingleton()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/inject/Scopes$4;->visitEagerSingleton()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitNoScoping()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNoScoping()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/inject/Scopes$4;->visitNoScoping()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitScope(Lcom/google/inject/Scope;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "visitedScope"    # Lcom/google/inject/Scope;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/inject/Scopes$4;->val$scope:Lcom/google/inject/Scope;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic visitScope(Lcom/google/inject/Scope;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/Scope;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/google/inject/Scopes$4;->visitScope(Lcom/google/inject/Scope;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "visitedAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/google/inject/Scopes$4;->val$scopeAnnotation:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/google/inject/Scopes$4;->visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
