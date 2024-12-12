.class public Lroboguice/inject/ViewListener;
.super Ljava/lang/Object;
.source "ViewListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/inject/ViewListener$ViewMembersInjector;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private filter:Lcom/google/inject/HierarchyTraversalFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
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
    .line 131
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z

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

.method private prepareViewMembersInjector(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Field;)V
    .locals 9
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/TypeEncounter",
            "<TI;>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "typeEncounter":Lcom/google/inject/spi/TypeEncounter;, "Lcom/google/inject/spi/TypeEncounter<TI;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 82
    const-class v7, Lroboguice/inject/InjectView;

    invoke-virtual {p2, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 83
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Views may not be statically injected"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_0
    const-class v5, Landroid/view/View;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "You may only use @InjectView on fields that extend View"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    :cond_1
    const-class v5, Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-class v5, Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 88
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "You may only use @InjectView in Activity contexts"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_2
    sget-boolean v5, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-eqz v5, :cond_5

    sget-object v5, Lroboguice/fragment/FragmentUtil;->supportActivity:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v5}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    sget-object v4, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    .line 95
    .local v4, "utils":Lroboguice/fragment/FragmentUtil$f;, "Lroboguice/fragment/FragmentUtil$f<**>;"
    :goto_0
    new-instance v5, Lroboguice/inject/ViewListener$ViewMembersInjector;

    const-class v6, Lroboguice/inject/InjectView;

    invoke-virtual {p2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-direct {v5, p2, v6, p1, v4}, Lroboguice/inject/ViewListener$ViewMembersInjector;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;Lroboguice/fragment/FragmentUtil$f;)V

    invoke-interface {p1, v5}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    .line 128
    .end local v4    # "utils":Lroboguice/fragment/FragmentUtil$f;, "Lroboguice/fragment/FragmentUtil$f<**>;"
    :cond_4
    :goto_1
    return-void

    .line 90
    :cond_5
    sget-object v4, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    goto :goto_0

    .line 99
    :cond_6
    const-class v7, Lroboguice/inject/InjectFragment;

    invoke-virtual {p2, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 100
    sget-boolean v7, Lroboguice/fragment/FragmentUtil;->hasNative:Z

    if-nez v7, :cond_7

    sget-boolean v7, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-nez v7, :cond_7

    .line 101
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/ClassNotFoundException;

    const-string v7, "No fragment classes were available"

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 102
    :cond_7
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 103
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Fragments may not be statically injected"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    :cond_8
    sget-boolean v7, Lroboguice/fragment/FragmentUtil;->hasNative:Z

    if-eqz v7, :cond_b

    sget-object v7, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v7}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v0, v5

    .line 107
    .local v0, "assignableFromNative":Z
    :goto_2
    sget-boolean v7, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-eqz v7, :cond_c

    sget-object v7, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v7}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v1, v5

    .line 108
    .local v1, "assignableFromSupport":Z
    :goto_3
    sget-boolean v7, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-eqz v7, :cond_d

    sget-object v7, Lroboguice/fragment/FragmentUtil;->supportActivity:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v3, v5

    .line 109
    .local v3, "isSupportActivity":Z
    :goto_4
    if-nez v3, :cond_e

    const-class v7, Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_e

    move v2, v5

    .line 111
    .local v2, "isNativeActivity":Z
    :goto_5
    if-eqz v2, :cond_9

    if-nez v0, :cond_a

    :cond_9
    if-eqz v3, :cond_10

    if-eqz v1, :cond_10

    .line 112
    :cond_a
    new-instance v6, Lroboguice/inject/ViewListener$ViewMembersInjector;

    const-class v5, Lroboguice/inject/InjectFragment;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v2, :cond_f

    sget-object v5, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    :goto_6
    invoke-direct {v6, p2, v7, p1, v5}, Lroboguice/inject/ViewListener$ViewMembersInjector;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;Lroboguice/fragment/FragmentUtil$f;)V

    invoke-interface {p1, v6}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    goto/16 :goto_1

    .end local v0    # "assignableFromNative":Z
    .end local v1    # "assignableFromSupport":Z
    .end local v2    # "isNativeActivity":Z
    .end local v3    # "isSupportActivity":Z
    :cond_b
    move v0, v6

    .line 106
    goto :goto_2

    .restart local v0    # "assignableFromNative":Z
    :cond_c
    move v1, v6

    .line 107
    goto :goto_3

    .restart local v1    # "assignableFromSupport":Z
    :cond_d
    move v3, v6

    .line 108
    goto :goto_4

    .restart local v3    # "isSupportActivity":Z
    :cond_e
    move v2, v6

    .line 109
    goto :goto_5

    .line 112
    .restart local v2    # "isNativeActivity":Z
    :cond_f
    sget-object v5, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    goto :goto_6

    .line 113
    :cond_10
    if-eqz v2, :cond_11

    if-nez v0, :cond_11

    .line 116
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "You may only use @InjectFragment in native activities if fields are descended from type android.app.Fragment"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_11
    if-nez v3, :cond_12

    if-nez v2, :cond_12

    .line 119
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "You may only use @InjectFragment in Activity contexts"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_12
    if-eqz v3, :cond_13

    if-nez v1, :cond_13

    .line 121
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "You may only use @InjectFragment in support activities if fields are descended from type android.support.v4.app.Fragment"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    :cond_13
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "This should never happen."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .locals 6
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
    .line 52
    .local p1, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TI;>;"
    .local p2, "typeEncounter":Lcom/google/inject/spi/TypeEncounter;, "Lcom/google/inject/spi/TypeEncounter<TI;>;"
    iget-object v4, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    if-nez v4, :cond_0

    .line 53
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v4

    iput-object v4, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 58
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-direct {p0, v1}, Lroboguice/inject/ViewListener;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    iget-object v4, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v5, Lroboguice/inject/InjectView;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 63
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-direct {p0, p2, v2}, Lroboguice/inject/ViewListener;->prepareViewMembersInjector(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 55
    .end local v0    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v4}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    goto :goto_0

    .line 70
    .restart local v0    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v4, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v5, Lroboguice/inject/InjectFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 73
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    invoke-direct {p0, p2, v2}, Lroboguice/inject/ViewListener;->prepareViewMembersInjector(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 76
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    .end local v0    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    :cond_3
    return-void
.end method
