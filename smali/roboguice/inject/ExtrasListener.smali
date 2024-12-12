.class public Lroboguice/inject/ExtrasListener;
.super Ljava/lang/Object;
.source "ExtrasListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;
    }
.end annotation


# instance fields
.field protected contextProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/google/inject/HierarchyTraversalFilter;


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "contextProvider":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lroboguice/inject/ExtrasListener;->contextProvider:Lcom/google/inject/Provider;

    .line 53
    return-void
.end method

.method private isWorthScanning(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lroboguice/inject/ExtrasListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectExtra;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TI;>;",
            "Lcom/google/inject/spi/TypeEncounter",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TI;>;"
    .local p2, "typeEncounter":Lcom/google/inject/spi/TypeEncounter;, "Lcom/google/inject/spi/TypeEncounter<TI;>;"
    iget-object v4, p0, Lroboguice/inject/ExtrasListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    if-nez v4, :cond_1

    .line 57
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v4

    iput-object v4, p0, Lroboguice/inject/ExtrasListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 62
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-direct {p0, v1}, Lroboguice/inject/ExtrasListener;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    iget-object v4, p0, Lroboguice/inject/ExtrasListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v5, Lroboguice/inject/InjectExtra;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 65
    .local v0, "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    if-eqz v0, :cond_3

    .line 66
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 67
    .local v2, "field":Ljava/lang/reflect/Field;
    const-class v4, Lroboguice/inject/InjectExtra;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Extras may not be statically injected"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    .end local v0    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lroboguice/inject/ExtrasListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v4}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    goto :goto_0

    .line 71
    .restart local v0    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v5, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;

    iget-object v6, p0, Lroboguice/inject/ExtrasListener;->contextProvider:Lcom/google/inject/Provider;

    const-class v4, Lroboguice/inject/InjectExtra;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lroboguice/inject/InjectExtra;

    invoke-direct {v5, v2, v6, v4}, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;-><init>(Ljava/lang/reflect/Field;Lcom/google/inject/Provider;Lroboguice/inject/InjectExtra;)V

    invoke-interface {p2, v5}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    goto :goto_2

    .line 74
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 75
    goto :goto_1

    .line 76
    .end local v0    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    :cond_4
    return-void
.end method
