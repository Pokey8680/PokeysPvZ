.class Lcom/google/inject/util/Modules$OverrideModule$3;
.super Lcom/google/inject/util/Modules$ModuleWriter;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/util/Modules$OverrideModule;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/util/Modules$OverrideModule;

.field final synthetic val$overridesScopeAnnotations:Ljava/util/Map;

.field final synthetic val$scopeInstancesInUse:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binder;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p2, "x0"    # Lcom/google/inject/Binder;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/inject/util/Modules$OverrideModule$3;->this$0:Lcom/google/inject/util/Modules$OverrideModule;

    iput-object p3, p0, Lcom/google/inject/util/Modules$OverrideModule$3;->val$overridesScopeAnnotations:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/inject/util/Modules$OverrideModule$3;->val$scopeInstancesInUse:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/google/inject/util/Modules$ModuleWriter;-><init>(Lcom/google/inject/Binder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/ScopeBinding;

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$OverrideModule$3;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;
    .locals 10
    .param p1, "scopeBinding"    # Lcom/google/inject/spi/ScopeBinding;

    .prologue
    .line 285
    iget-object v5, p0, Lcom/google/inject/util/Modules$OverrideModule$3;->val$overridesScopeAnnotations:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/spi/ScopeBinding;

    .line 287
    .local v1, "overideBinding":Lcom/google/inject/spi/ScopeBinding;
    if-nez v1, :cond_1

    .line 288
    invoke-super {p0, p1}, Lcom/google/inject/util/Modules$ModuleWriter;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;

    .line 302
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 290
    :cond_1
    iget-object v5, p0, Lcom/google/inject/util/Modules$OverrideModule$3;->val$scopeInstancesInUse:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 291
    .local v4, "usedSources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "The scope for @%s is bound directly and cannot be overridden."

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%n     original binding at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getSource()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 296
    .local v3, "usedSource":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%n     bound directly at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 298
    .end local v3    # "usedSource":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/google/inject/util/Modules$OverrideModule$3;->binder:Lcom/google/inject/Binder;

    invoke-virtual {v1}, Lcom/google/inject/spi/ScopeBinding;->getSource()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
