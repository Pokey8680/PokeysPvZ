.class public Lroboguice/inject/FragmentMembersInjector;
.super Ljava/lang/Object;
.source "FragmentMembersInjector.java"

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


# static fields
.field protected static final VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lroboguice/inject/FragmentMembersInjector",
            "<*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected activityProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected annotation:Ljava/lang/annotation/Annotation;

.field protected field:Ljava/lang/reflect/Field;

.field protected fragManager:Lcom/google/inject/Provider;

.field protected fragUtils:Lroboguice/fragment/FragmentUtil$f;

.field protected instanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/inject/FragmentMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;Lroboguice/fragment/FragmentUtil$f;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/google/inject/spi/TypeEncounter",
            "<TT;>;",
            "Lroboguice/fragment/FragmentUtil$f",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lroboguice/inject/FragmentMembersInjector;, "Lroboguice/inject/FragmentMembersInjector<TT;>;"
    .local p3, "typeEncounter":Lcom/google/inject/spi/TypeEncounter;, "Lcom/google/inject/spi/TypeEncounter<TT;>;"
    .local p4, "utils":Lroboguice/fragment/FragmentUtil$f;, "Lroboguice/fragment/FragmentUtil$f<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 36
    iput-object p2, p0, Lroboguice/inject/FragmentMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    .line 37
    const-class v0, Landroid/app/Activity;

    invoke-interface {p3, v0}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lroboguice/inject/FragmentMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    .line 39
    if-eqz p4, :cond_0

    .line 40
    iput-object p4, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    .line 41
    invoke-interface {p4}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lroboguice/inject/FragmentMembersInjector;->fragManager:Lcom/google/inject/Provider;

    .line 43
    :cond_0
    return-void
.end method

.method protected static injectViews(Ljava/lang/Object;)V
    .locals 5
    .param p0, "activityOrFragment"    # Ljava/lang/Object;

    .prologue
    .line 112
    const-class v4, Lroboguice/inject/FragmentMembersInjector;

    monitor-enter v4

    .line 114
    :try_start_0
    sget-object v3, Lroboguice/inject/FragmentMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 115
    .local v1, "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/FragmentMembersInjector<*>;>;"
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lroboguice/inject/FragmentMembersInjector;

    .line 117
    .local v2, "viewMembersInjector":Lroboguice/inject/FragmentMembersInjector;, "Lroboguice/inject/FragmentMembersInjector<*>;"
    invoke-virtual {v2, p0}, Lroboguice/inject/FragmentMembersInjector;->reallyInjectMembers(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/FragmentMembersInjector<*>;>;"
    .end local v2    # "viewMembersInjector":Lroboguice/inject/FragmentMembersInjector;, "Lroboguice/inject/FragmentMembersInjector<*>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/FragmentMembersInjector<*>;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    return-void
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lroboguice/inject/FragmentMembersInjector;, "Lroboguice/inject/FragmentMembersInjector<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const-class v4, Lroboguice/inject/FragmentMembersInjector;

    monitor-enter v4

    .line 53
    :try_start_0
    iget-object v3, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v3}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 54
    .local v1, "isValidFragment":Z
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, p1

    .line 55
    .local v2, "key":Ljava/lang/Object;
    :goto_1
    if-nez v2, :cond_2

    .line 56
    monitor-exit v4

    .line 68
    :goto_2
    return-void

    .line 53
    .end local v1    # "isValidFragment":Z
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    .restart local v1    # "isValidFragment":Z
    :cond_1
    iget-object v3, p0, Lroboguice/inject/FragmentMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    invoke-interface {v3}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 59
    .restart local v2    # "key":Ljava/lang/Object;
    :cond_2
    sget-object v3, Lroboguice/inject/FragmentMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 60
    .local v0, "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/FragmentMembersInjector<*>;>;"
    if-nez v0, :cond_3

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/FragmentMembersInjector<*>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .restart local v0    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/FragmentMembersInjector<*>;>;"
    sget-object v3, Lroboguice/inject/FragmentMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lroboguice/inject/FragmentMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 67
    monitor-exit v4

    goto :goto_2

    .end local v0    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/FragmentMembersInjector<*>;>;"
    .end local v1    # "isValidFragment":Z
    .end local v2    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public reallyInjectMembers(Ljava/lang/Object;)V
    .locals 14
    .param p1, "activityOrFragment"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lroboguice/inject/FragmentMembersInjector;, "Lroboguice/inject/FragmentMembersInjector<TT;>;"
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 77
    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 78
    .local v5, "instance":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_0

    .line 108
    :goto_0
    return-void

    .line 81
    :cond_0
    instance-of v6, p1, Landroid/content/Context;

    if-eqz v6, :cond_1

    instance-of v6, p1, Landroid/app/Activity;

    if-nez v6, :cond_1

    .line 82
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "Can\'t inject fragment into a non-Activity context"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 84
    :cond_1
    const/4 v2, 0x0

    .line 87
    .local v2, "fragment":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lroboguice/inject/FragmentMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v4, Lroboguice/inject/InjectFragment;

    .line 88
    .local v4, "injectFragment":Lroboguice/inject/InjectFragment;
    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->value()I

    move-result v3

    .line 90
    .local v3, "id":I
    if-ltz v3, :cond_2

    .line 91
    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    iget-object v7, p0, Lroboguice/inject/FragmentMembersInjector;->fragManager:Lcom/google/inject/Provider;

    invoke-interface {v7}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lroboguice/fragment/FragmentUtil$f;->findFragmentById(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 95
    :goto_1
    if-nez v2, :cond_3

    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v6}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Can\'t inject null value into %s.%s when field is not @Nullable"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "id":I
    .end local v4    # "injectFragment":Lroboguice/inject/InjectFragment;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 93
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "fragment":Ljava/lang/Object;
    .restart local v3    # "id":I
    .restart local v4    # "injectFragment":Lroboguice/inject/InjectFragment;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    iget-object v7, p0, Lroboguice/inject/FragmentMembersInjector;->fragManager:Lcom/google/inject/Provider;

    invoke-interface {v7}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->tag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lroboguice/fragment/FragmentUtil$f;->findFragmentByTag(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 98
    :cond_3
    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 99
    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 104
    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "id":I
    .end local v4    # "injectFragment":Lroboguice/inject/InjectFragment;
    :catch_1
    move-exception v1

    .line 105
    .local v1, "f":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Can\'t assign %s value %s to %s field %s"

    const/4 v6, 0x4

    new-array v9, v6, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    :goto_2
    aput-object v6, v9, v12

    aput-object v2, v9, v11

    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v9, v13

    const/4 v6, 0x3

    iget-object v10, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_4
    const-string v6, "(null)"

    goto :goto_2
.end method
