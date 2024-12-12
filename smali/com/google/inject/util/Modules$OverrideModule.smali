.class Lcom/google/inject/util/Modules$OverrideModule;
.super Lcom/google/inject/AbstractModule;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/util/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverrideModule"
.end annotation


# instance fields
.field private final baseModules:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field

.field private final overrides:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/Module;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "overrides":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/inject/Module;>;"
    .local p2, "baseModules":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Lcom/google/inject/Module;>;"
    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    .line 167
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/util/Modules$OverrideModule;->overrides:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 168
    iput-object p2, p0, Lcom/google/inject/util/Modules$OverrideModule;->baseModules:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 169
    return-void
.end method

.method static synthetic access$200(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binding;)Lcom/google/inject/Scope;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/util/Modules$OverrideModule;
    .param p1, "x1"    # Lcom/google/inject/Binding;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/inject/util/Modules$OverrideModule;->getScopeInstanceOrNull(Lcom/google/inject/Binding;)Lcom/google/inject/Scope;

    move-result-object v0

    return-object v0
.end method

.method private getScopeInstanceOrNull(Lcom/google/inject/Binding;)Lcom/google/inject/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<*>;)",
            "Lcom/google/inject/Scope;"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    new-instance v0, Lcom/google/inject/util/Modules$OverrideModule$4;

    invoke-direct {v0, p0}, Lcom/google/inject/util/Modules$OverrideModule$4;-><init>(Lcom/google/inject/util/Modules$OverrideModule;)V

    invoke-interface {p1, v0}, Lcom/google/inject/Binding;->acceptScopingVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Scope;

    return-object v0
.end method


# virtual methods
.method public configure()V
    .locals 18

    .prologue
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/inject/util/Modules$OverrideModule;->binder()Lcom/google/inject/Binder;

    move-result-object v7

    .line 174
    .local v7, "baseBinder":Lcom/google/inject/Binder;
    invoke-virtual/range {p0 .. p0}, Lcom/google/inject/util/Modules$OverrideModule;->currentStage()Lcom/google/inject/Stage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/inject/util/Modules$OverrideModule;->baseModules:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {v1, v2}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 179
    .local v8, "baseElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/Element;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 180
    invoke-static {v8}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/inject/spi/Element;

    .line 181
    .local v9, "element":Lcom/google/inject/spi/Element;
    instance-of v1, v9, Lcom/google/inject/spi/PrivateElements;

    if-eqz v1, :cond_1

    move-object/from16 v16, v9

    .line 182
    check-cast v16, Lcom/google/inject/spi/PrivateElements;

    .line 183
    .local v16, "privateElements":Lcom/google/inject/spi/PrivateElements;
    invoke-interface {v7}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object v1

    invoke-interface/range {v16 .. v16}, Lcom/google/inject/spi/PrivateElements;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;

    move-result-object v15

    .line 184
    .local v15, "privateBinder":Lcom/google/inject/PrivateBinder;
    invoke-interface/range {v16 .. v16}, Lcom/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/inject/Key;

    .line 185
    .local v11, "exposed":Lcom/google/inject/Key;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/google/inject/spi/PrivateElements;->getExposedSource(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;

    move-result-object v1

    invoke-interface {v1, v11}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    goto :goto_0

    .line 187
    .end local v11    # "exposed":Lcom/google/inject/Key;
    :cond_0
    move-object v7, v15

    .line 188
    invoke-interface/range {v16 .. v16}, Lcom/google/inject/spi/PrivateElements;->getElements()Ljava/util/List;

    move-result-object v8

    .line 192
    .end local v9    # "element":Lcom/google/inject/spi/Element;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "privateBinder":Lcom/google/inject/PrivateBinder;
    .end local v16    # "privateElements":Lcom/google/inject/spi/PrivateElements;
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    aput-object v17, v1, v2

    invoke-interface {v7, v1}, Lcom/google/inject/Binder;->skipSources([Ljava/lang/Class;)Lcom/google/inject/Binder;

    move-result-object v3

    .line 193
    .local v3, "binder":Lcom/google/inject/Binder;
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 194
    .local v10, "elements":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/google/inject/spi/Element;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/inject/util/Modules$OverrideModule;->currentStage()Lcom/google/inject/Stage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/inject/util/Modules$OverrideModule;->overrides:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {v1, v2}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v13

    .line 196
    .local v13, "overrideElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/Element;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 197
    .local v4, "overriddenKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/Key<*>;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v14

    .line 201
    .local v14, "overridesScopeAnnotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lcom/google/inject/spi/ScopeBinding;>;"
    new-instance v1, Lcom/google/inject/util/Modules$OverrideModule$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3, v4, v14}, Lcom/google/inject/util/Modules$OverrideModule$1;-><init>(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {v1, v13}, Lcom/google/inject/util/Modules$OverrideModule$1;->writeAll(Ljava/lang/Iterable;)V

    .line 221
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 222
    .local v5, "scopeInstancesInUse":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/inject/Scope;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 223
    .local v6, "scopeBindings":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/ScopeBinding;>;"
    new-instance v1, Lcom/google/inject/util/Modules$OverrideModule$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/inject/util/Modules$OverrideModule$2;-><init>(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v1, v10}, Lcom/google/inject/util/Modules$OverrideModule$2;->writeAll(Ljava/lang/Iterable;)V

    .line 283
    new-instance v1, Lcom/google/inject/util/Modules$OverrideModule$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3, v14, v5}, Lcom/google/inject/util/Modules$OverrideModule$3;-><init>(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binder;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v1, v6}, Lcom/google/inject/util/Modules$OverrideModule$3;->writeAll(Ljava/lang/Iterable;)V

    .line 305
    return-void
.end method
